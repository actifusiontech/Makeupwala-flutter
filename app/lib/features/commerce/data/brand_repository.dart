import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import '../domain/brand_models.dart';
import '../domain/commerce_models.dart';

class BrandRepository {
  final Dio _dio;

  BrandRepository(this._dio);

  Future<BrandDashboardMetrics> getDashboardMetrics() async {
    final response = await _dio.get('/brands/dashboard/metrics');
    return BrandDashboardMetrics.fromJson(response.data);
  }

  Future<Map<String, dynamic>> getBrandProfile() async {
    final response = await _dio.get('/brands/profile');
    return response.data as Map<String, dynamic>;
  }

  Future<List<Campaign>> getMyCampaigns() async {
    final response = await _dio.get('/brands/campaigns');
    return (response.data as List).map((e) => Campaign.fromJson(e)).toList();
  }

  Future<Campaign> createCampaign(Map<String, dynamic> data) async {
    final response = await _dio.post('/brands/campaigns', data: data);
    return Campaign.fromJson(response.data);
  }

  Future<List<Campaign>> getActiveCampaigns() async {
    final response = await _dio.get('/campaigns');
    return (response.data as List).map((e) => Campaign.fromJson(e)).toList();
  }

  Future<void> applyForCampaign(String campaignId, String coverLetter) async {
    await _dio.post('/campaigns/$campaignId/apply', data: {'cover_letter': coverLetter});
  }

  Future<List<dynamic>> getMyApplications() async {
    final response = await _dio.get('/my-applications');
    return response.data as List;
  }

  Future<Product> createProduct(Map<String, dynamic> productData) async {
    final response = await _dio.post('/brands/products', data: productData);
    return Product.fromJson(response.data);
  }

  Future<String> uploadProductImage(File imageFile) async {
    String fileName = imageFile.path.split('/').last;
    FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        imageFile.path,
        filename: fileName,
        contentType: MediaType('image', 'jpeg'), // Adjust based on file type if needed
      ),
    });

    final response = await _dio.post('/upload', data: formData);
    return response.data['url']; 
  }
}
