
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:intl/intl.dart';

class InvoiceGenerator {
  static Future<Uint8List> generateInvoice(Map<String, dynamic> invoice) async {
    final pdf = pw.Document();

    final services = invoice['services'] as List? ?? [];
    final subtotal = invoice['subtotal'] ?? 0;
    final gst = invoice['gst_amount'] ?? 0;
    final total = invoice['total_amount'] ?? 0;

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // Header
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('MakeupWala', style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
                  pw.Text('INVOICE', style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold, color: PdfColors.grey)),
                ],
              ),
              pw.SizedBox(height: 20),
              
              // Invoice Details
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('Bill To:', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text(invoice['customer_name'] ?? 'N/A'),
                      pw.Text(invoice['customer_phone'] ?? 'N/A'),
                    ],
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text('Invoice #: ${invoice['invoice_number'] ?? 'N/A'}'),
                      pw.Text('Date: ${invoice['service_date'] ?? 'N/A'}'),
                      pw.Text('Booking ID: ${invoice['booking_id'] ?? 'N/A'}'),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 30),

              // Table
              pw.Table.fromTextArray(
                headers: ['Service', 'Qty', 'Unit Price', 'Total'],
                data: services.map((s) => [
                  s['service_name'],
                  s['quantity'].toString(),
                  'INR ${s['unit_price']}',
                  'INR ${s['total_price']}',
                ]).toList(),
                headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                headerDecoration: const pw.BoxDecoration(color: PdfColors.grey300),
                cellAlignments: {
                  0: pw.Alignment.centerLeft,
                  1: pw.Alignment.center,
                  2: pw.Alignment.centerRight,
                  3: pw.Alignment.centerRight,
                },
              ),
              pw.Divider(),

              // Totals
              pw.Container(
                alignment: pw.Alignment.centerRight,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text('Subtotal: INR $subtotal'),
                    pw.Text('GST (18%): INR $gst'),
                    pw.SizedBox(height: 5),
                    pw.Text('Total: INR $total', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
                  ],
                ),
              ),

              pw.SizedBox(height: 50),
              pw.Center(child: pw.Text('Thank you for choosing MakeupWala!', style: const pw.TextStyle(fontSize: 12, color: PdfColors.grey))),
            ],
          );
        },
      ),
    );

    return pdf.save();
  }
}
