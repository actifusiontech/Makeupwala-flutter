
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/corporate_repository.dart';

// Events
abstract class CampaignEvent {}

class CreateCampaignEvent extends CampaignEvent {
  final Map<String, dynamic> campaignData;
  CreateCampaignEvent(this.campaignData);
}

class FetchCampaignsEvent extends CampaignEvent {}

class FetchApplicantsEvent extends CampaignEvent {
  final String campaignId;
  FetchApplicantsEvent(this.campaignId);
}

// States
abstract class CampaignState {
  const CampaignState();
}

class CampaignInitial extends CampaignState {
  const CampaignInitial();
}

class CampaignLoading extends CampaignState {
  const CampaignLoading();
}

class CampaignSuccess extends CampaignState {
  final String campaignId;
  const CampaignSuccess(this.campaignId);
}

class CampaignListLoaded extends CampaignState {
  final List<Map<String, dynamic>> campaigns;
  const CampaignListLoaded(this.campaigns);
}

class ApplicantListLoaded extends CampaignState {
  final List<Map<String, dynamic>> applicants;
  const ApplicantListLoaded(this.applicants);
}

class CampaignError extends CampaignState {
  final String message;
  const CampaignError(this.message);
}

// Bloc
class CampaignBloc extends Bloc<CampaignEvent, CampaignState> {
  final CorporateRepository _repository;

  CampaignBloc({CorporateRepository? repository})
      : _repository = repository ?? CorporateRepository(),
        super(const CampaignInitial()) {
    on<CreateCampaignEvent>(_onCreateCampaign);
    on<FetchCampaignsEvent>(_onFetchCampaigns);
    on<FetchApplicantsEvent>(_onFetchApplicants);
  }

  Future<void> _onCreateCampaign(CreateCampaignEvent event, Emitter<CampaignState> emit) async {
    emit(const CampaignLoading());
    try {
      final id = await _repository.createCampaign(event.campaignData);
      emit(CampaignSuccess(id));
    } catch (e) {
      emit(CampaignError(e.toString()));
    }
  }

  Future<void> _onFetchCampaigns(FetchCampaignsEvent event, Emitter<CampaignState> emit) async {
    emit(const CampaignLoading());
    try {
      final campaigns = await _repository.getCampaigns();
      emit(CampaignListLoaded(campaigns));
    } catch (e) {
      emit(CampaignError(e.toString()));
    }
  }

  Future<void> _onFetchApplicants(FetchApplicantsEvent event, Emitter<CampaignState> emit) async {
    emit(const CampaignLoading());
    try {
      final applicants = await _repository.getApplicants(event.campaignId);
      emit(ApplicantListLoaded(applicants));
    } catch (e) {
      emit(CampaignError(e.toString()));
    }
  }
}
