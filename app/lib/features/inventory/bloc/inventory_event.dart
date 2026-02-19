
part of 'inventory_bloc.dart';

@freezed
class InventoryEvent with _$InventoryEvent {
  const factory InventoryEvent.loadInventory() = _LoadInventory;
  const factory InventoryEvent.addItem(InventoryItem item) = _AddItem;
  const factory InventoryEvent.updateItem(InventoryItem item) = _UpdateItem;
  const factory InventoryEvent.deleteItem(String id) = _DeleteItem;
  const factory InventoryEvent.logUsage(String id, double amount) = _LogUsage;
}
