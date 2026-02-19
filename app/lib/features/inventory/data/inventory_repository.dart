import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'inventory_item.dart';

class InventoryRepository {
  static const String boxName = 'inventory_box';

  Future<Box<InventoryItem>> get _box async {
    if (!Hive.isBoxOpen(boxName)) {
      return await Hive.openBox<InventoryItem>(boxName);
    }
    return Hive.box<InventoryItem>(boxName);
  }

  Future<List<InventoryItem>> getAllItems() async {
    final box = await _box;
    if (box.isEmpty) {
      // Seed initial data if empty
      await box.addAll([
        InventoryItem(
          id: '1',
          name: 'Mac Studio Fix Fluid',
          brand: 'MAC',
          totalUnits: 30,
          remainingUnits: 15,
          unitMeasure: 'ml',
        ),
        InventoryItem(
          id: '2',
          name: 'Huda Beauty Palette',
          brand: 'Huda Beauty',
          totalUnits: 1,
          remainingUnits: 0.8,
          unitMeasure: 'unit',
        ),
      ]);
    }
    return box.values.toList();
  }

  Future<void> addItem(InventoryItem item) async {
    final box = await _box;
    await box.add(item); // Or use put if ID is key
  }

  Future<void> updateItem(InventoryItem item) async {
    item.save();
  }

  Future<void> deleteItem(String id) async {
     final box = await _box;
     // Finding item by ID field since Hive keys might be auto-increment
     final item = box.values.firstWhere((element) => element.id == id);
     await item.delete();
  }

  Future<void> logUsageLocal(String id, double amount) async {
    final box = await _box;
    // Simple logic: find item and decrease remaining units
     try {
       final item = box.values.firstWhere((element) => element.id == id);
       item.remainingUnits = (item.remainingUnits - amount).clamp(0.0, item.totalUnits);
       await item.save();
     } catch (e) {
       // Item not found
     }
  }
}
