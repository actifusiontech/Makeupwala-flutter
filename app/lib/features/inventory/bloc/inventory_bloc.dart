
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/inventory_repository.dart';
import '../data/inventory_item.dart'; // Make sure this import is correct

part 'inventory_event.dart';
part 'inventory_state.dart';
part 'inventory_bloc.freezed.dart';

class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  final InventoryRepository _repository;

  InventoryBloc({InventoryRepository? repository})
      : _repository = repository ?? InventoryRepository(),
        super(const InventoryState.initial()) {
    on<InventoryEvent>((event, emit) async {
      await event.when(
        loadInventory: () => _onLoadInventory(emit),
        addItem: (item) => _onAddItem(item, emit),
        updateItem: (item) => _onUpdateItem(item, emit),
        deleteItem: (id) => _onDeleteItem(id, emit),
        logUsage: (id, amount) => _onLogUsage(id, amount, emit),
      );
    });
  }

  Future<void> _onLoadInventory(Emitter<InventoryState> emit) async {
    emit(const InventoryState.loading());
    try {
      final items = await _repository.getAllItems();
      emit(InventoryState.loaded(items));
    } catch (e) {
      emit(InventoryState.error(e.toString()));
    }
  }

  Future<void> _onAddItem(InventoryItem item, Emitter<InventoryState> emit) async {
    try {
      await _repository.addItem(item);
      add(const InventoryEvent.loadInventory());
    } catch (e) {
      emit(InventoryState.error(e.toString()));
    }
  }

  Future<void> _onUpdateItem(InventoryItem item, Emitter<InventoryState> emit) async {
    try {
      await _repository.updateItem(item);
      add(const InventoryEvent.loadInventory());
    } catch (e) {
      emit(InventoryState.error(e.toString()));
    }
  }

  Future<void> _onDeleteItem(String id, Emitter<InventoryState> emit) async {
    try {
      await _repository.deleteItem(id);
      add(const InventoryEvent.loadInventory());
    } catch (e) {
      emit(InventoryState.error(e.toString()));
    }
  }

  Future<void> _onLogUsage(String id, double amount, Emitter<InventoryState> emit) async {
    try {
      await _repository.logUsageLocal(id, amount);
      add(const InventoryEvent.loadInventory());
    } catch (e) {
      emit(InventoryState.error(e.toString()));
    }
  }
}
