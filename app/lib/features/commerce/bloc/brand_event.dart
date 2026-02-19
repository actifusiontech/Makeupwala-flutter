import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_event.freezed.dart';

@freezed
class BrandEvent with _$BrandEvent {
  const factory BrandEvent.fetchMetrics() = _FetchMetrics;
  const factory BrandEvent.fetchCampaigns() = _FetchCampaigns;
  const factory BrandEvent.createCampaign(Map<String, dynamic> data) = _CreateCampaign;
  const factory BrandEvent.fetchActiveCampaigns() = _FetchActiveCampaigns;
  const factory BrandEvent.applyForCampaign(String campaignId, String coverLetter) = _ApplyForCampaign;
}
