import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/brand_repository.dart';
import 'brand_event.dart';
import 'brand_state.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  final BrandRepository repository;

  BrandBloc({required this.repository}) : super(const BrandState.initial()) {
    on<BrandEvent>((event, emit) async {
      await event.when(
        fetchMetrics: () async {
          emit(const BrandState.loading());
          try {
            final metrics = await repository.getDashboardMetrics();
            emit(BrandState.loaded(metrics: metrics));
          } catch (e) {
            emit(BrandState.error(e.toString()));
          }
        },
        fetchCampaigns: () async {
          emit(const BrandState.loading());
          try {
            final campaigns = await repository.getMyCampaigns();
            emit(BrandState.loaded(campaigns: campaigns));
          } catch (e) {
            emit(BrandState.error(e.toString()));
          }
        },
        createCampaign: (data) async {
          emit(const BrandState.loading());
          try {
            await repository.createCampaign(data);
            emit(const BrandState.actionSuccess('Campaign created successfully!'));
          } catch (e) {
            emit(BrandState.error(e.toString()));
          }
        },
        fetchActiveCampaigns: () async {
          emit(const BrandState.loading());
          try {
            final campaigns = await repository.getActiveCampaigns();
            emit(BrandState.loaded(campaigns: campaigns));
          } catch (e) {
            emit(BrandState.error(e.toString()));
          }
        },
        applyForCampaign: (id, coverLetter) async {
          emit(const BrandState.loading());
          try {
            await repository.applyForCampaign(id, coverLetter);
            emit(const BrandState.actionSuccess('Application submitted successfully!'));
          } catch (e) {
            emit(BrandState.error(e.toString()));
          }
        },
      );
    });
  }
}
