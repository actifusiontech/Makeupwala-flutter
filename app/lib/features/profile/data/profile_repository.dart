import 'dart:developer' as developer;
import 'package:dio/dio.dart';
import '../../../core/network/api_client.dart';
import '../../../core/models/user.dart';
import '../../../core/models/rewards.dart';

class ProfileRepository {
  final ApiClient _apiClient;

  ProfileRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<User> getMyProfile({required bool isArtist}) async {
    try {
      final endpoint = isArtist ? '/artists/me' : '/customers/me';
      developer.log('👤 Fetching profile from $endpoint', name: 'ProfileRepository');
      
      final response = await _apiClient.dio.get(endpoint);
      return User.fromJson(response.data);
    } catch (e) {
      developer.log('❌ Fetch profile failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<User> updateProfile({
    required bool isArtist,
    required Map<String, dynamic> data,
  }) async {
    try {
      final endpoint = isArtist ? '/artists/me' : '/customers/me';
      developer.log('👤 Updating profile at $endpoint', name: 'ProfileRepository');
      
      final response = await _apiClient.dio.post(endpoint, data: data);
      return User.fromJson(response.data);
    } catch (e) {
      developer.log('❌ Update profile failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<String> uploadMedia(String filePath) async {
    try {
      developer.log('📸 Uploading media: $filePath', name: 'ProfileRepository');
      
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath),
      });
      
      final response = await _apiClient.dio.post('/artists/me/media', data: formData);
      return response.data['url'];
    } catch (e) {
      developer.log('❌ Upload media failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<String> uploadProfilePicture(String filePath) async {
    try {
      developer.log('📸 Uploading profile picture: $filePath', name: 'ProfileRepository');
      
      final formData = FormData.fromMap({
        'profile_picture': await MultipartFile.fromFile(filePath),
      });
      
      final response = await _apiClient.dio.post('/auth/update-profile-picture', data: formData);
      // The backend returns the full UserProfileResponse. We map this back or just extract what we need.
      // But _onUploadMedia usually maps this out. Let's return the URL if present, or just string.
      if (response.data['profile_image_url'] != null) {
        return response.data['profile_image_url'] as String;
      }
      return '';
    } catch (e) {
      developer.log('❌ Upload profile picture failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<void> removeProfilePicture() async {
    try {
      developer.log('🗑️ Removing profile picture', name: 'ProfileRepository');
      await _apiClient.dio.delete('/auth/remove-profile-picture');
    } catch (e) {
      developer.log('❌ Remove profile picture failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  // ---------------- REWARDS & REFERRALS ----------------

  Future<LoyaltyBalance> getLoyaltyBalance() async {
    try {
      final response = await _apiClient.dio.get('/rewards/balance');
      return LoyaltyBalance.fromJson(response.data);
    } catch (e) {
      developer.log('❌ Get loyalty balance failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<List<LoyaltyTransaction>> getLoyaltyTransactions() async {
    try {
      final response = await _apiClient.dio.get('/rewards/transactions');
      return (response.data as List).map((e) => LoyaltyTransaction.fromJson(e)).toList();
    } catch (e) {
      developer.log('❌ Get loyalty transactions failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<List<ReferralRecord>> getReferrals() async {
    try {
      final response = await _apiClient.dio.get('/rewards/referrals');
      return (response.data as List).map((e) => ReferralRecord.fromJson(e)).toList();
    } catch (e) {
      developer.log('❌ Get referrals failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<List<LeaderboardEntry>> getLeaderboard() async {
    try {
      final response = await _apiClient.dio.get('/rewards/leaderboard');
      return (response.data as List).map((e) => LeaderboardEntry.fromJson(e)).toList();
    } catch (e) {
      developer.log('❌ Get leaderboard failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<List<RewardItem>> getRewardCatalog() async {
    try {
      final response = await _apiClient.dio.get('/rewards/catalog');
      return (response.data as List).map((e) => RewardItem.fromJson(e)).toList();
    } catch (e) {
      developer.log('❌ Get reward catalog failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<RewardRedemption> redeemReward(String rewardId) async {
    try {
      final response = await _apiClient.dio.post('/rewards/redeem', data: {'reward_item_id': rewardId});
      return RewardRedemption.fromJson(response.data);
    } catch (e) {
      developer.log('❌ Redeem reward failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<List<LoyaltyTransaction>> getTransactions() async {
    try {
      final response = await _apiClient.dio.get('/rewards/transactions');
      return (response.data as List).map((e) => LoyaltyTransaction.fromJson(e)).toList();
    } catch (e) {
      developer.log('❌ Get transactions failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }
}
