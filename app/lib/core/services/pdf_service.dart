import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';

class PdfService {
  Future<Uint8List> generateReceipt({
    required String bookingId,
    required String customerName,
    required String serviceName,
    required String artistName,
    required DateTime bookingDate,
    required String bookingTime,
    required double amountPaid,
    required String paymentId,
    required bool isDeposit,
  }) async {
    final pdf = pw.Document();

    final font = await PdfGoogleFonts.interRegular();
    final fontBold = await PdfGoogleFonts.interBold();

    // Load logo if available, for now we'll use text
    // final logo = await imageFromAssetBundle('assets/images/app_icon.png');

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        theme: pw.ThemeData.withFont(
          base: font,
          bold: fontBold,
        ),
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // Header
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('Makeupwala',
                      style: pw.TextStyle(
                          color: PdfColors.pink500,
                          fontSize: 24,
                          fontWeight: pw.FontWeight.bold)),
                  pw.Text('RECEIPT',
                      style: pw.TextStyle(
                          fontSize: 24, fontWeight: pw.FontWeight.bold)),
                ],
              ),
              pw.SizedBox(height: 20),
              
              // Key Info
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('To:'),
                      pw.Text(customerName, style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    ],
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text('Receipt #: $bookingId'),
                      pw.Text('Date: ${DateFormat('MMM d, yyyy').format(DateTime.now())}'),
                    ],
                  ),
                ],
              ),
              pw.SizedBox(height: 40),

              // Booking Details
              pw.Text('Service Details',
                  style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
              pw.Divider(color: PdfColors.grey300),
              pw.SizedBox(height: 10),

              _buildRow('Service', serviceName),
              _buildRow('Artist', artistName),
              _buildRow('Appointment Date', DateFormat('MMM d, yyyy').format(bookingDate)),
              _buildRow('Appointment Time', bookingTime),
              
              pw.SizedBox(height: 20),
              pw.Divider(color: PdfColors.grey300),
              
              // Payment Details
              _buildRow('Payment ID', paymentId),
              _buildRow(
                isDeposit ? 'Deposit Paid' : 'Total Amount Paid', 
                'INR ${amountPaid.toStringAsFixed(0)}',
                isBold: true,
              ),

              pw.Spacer(),
              
              // Footer
              pw.Divider(color: PdfColors.grey300),
              pw.Center(
                child: pw.Text(
                  'Thank you for booking with Makeupwala!',
                  style: const pw.TextStyle(color: PdfColors.grey500),
                ),
              ),
              pw.Center(
                child: pw.Text(
                  'For support, contact support@makeupwala.com',
                  style: const pw.TextStyle(color: PdfColors.grey500, fontSize: 10),
                ),
              ),
            ],
          );
        },
      ),
    );

    return pdf.save();
  }

  pw.Widget _buildRow(String label, String value, {bool isBold = false}) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(vertical: 4),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Text(label, style: const pw.TextStyle(color: PdfColors.grey700)),
          pw.Text(
            value,
            style: pw.TextStyle(
              fontWeight: isBold ? pw.FontWeight.bold : pw.FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> downloadReceipt({
    required String bookingId,
    required String customerName,
    required String serviceName,
    required String artistName,
    required DateTime bookingDate,
    required String bookingTime,
    required double amountPaid,
    required String paymentId,
    required bool isDeposit,
  }) async {
    final bytes = await generateReceipt(
      bookingId: bookingId,
      customerName: customerName,
      serviceName: serviceName,
      artistName: artistName,
      bookingDate: bookingDate,
      bookingTime: bookingTime,
      amountPaid: amountPaid,
      paymentId: paymentId,
      isDeposit: isDeposit,
    );

    await Printing.sharePdf(
        bytes: bytes, filename: 'receipt_$bookingId.pdf');
  }

  Future<Uint8List> generateAcademyReceipt({
    required String instituteName,
    required String studentName,
    required String feeType,
    required double amount,
    required String paymentMethod,
    required String referenceId,
    required DateTime date,
  }) async {
    final pdf = pw.Document();
    final font = await PdfGoogleFonts.interRegular();
    final fontBold = await PdfGoogleFonts.interBold();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        theme: pw.ThemeData.withFont(base: font, bold: fontBold),
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text(instituteName,
                      style: pw.TextStyle(color: PdfColors.teal, fontSize: 20, fontWeight: pw.FontWeight.bold)),
                  pw.Text('FEE RECEIPT', style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold)),
                ],
              ),
              pw.SizedBox(height: 30),
              pw.Text('Student: $studentName', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
              pw.Text('Date: ${DateFormat('dd MMM yyyy').format(date)}'),
              pw.SizedBox(height: 20),
              pw.Divider(),
              _buildRow('Description', feeType),
              _buildRow('Payment Method', paymentMethod),
              _buildRow('Reference ID', referenceId),
              pw.Divider(),
              _buildRow('Total Amount', 'INR ${amount.toStringAsFixed(2)}', isBold: true),
              pw.Spacer(),
              pw.Center(child: pw.Text('This is a computer-generated receipt.', style: const pw.TextStyle(fontSize: 10))),
            ],
          );
        },
      ),
    );
    return pdf.save();
  }

  Future<void> downloadAcademyReceipt(Map<String, dynamic> data) async {
    final bytes = await generateAcademyReceipt(
      instituteName: 'Academy Partner', // Ideally from data
      studentName: data['student_name'] ?? 'Student',
      feeType: 'Academy Fee',
      amount: (data['amount'] as num).toDouble(),
      paymentMethod: data['payment_method'] ?? 'Cash',
      referenceId: data['reference_id'] ?? 'N/A',
      date: DateTime.tryParse(data['payment_date'] ?? '') ?? DateTime.now(),
    );
    await Printing.sharePdf(bytes: bytes, filename: 'fee_receipt.pdf');
  }
}
