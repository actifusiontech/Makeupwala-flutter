import 'package:hive/hive.dart';

part 'inventory_item.g.dart';

@HiveType(typeId: 1)
class InventoryItem extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String brand;

  @HiveField(3)
  final double totalUnits;

  @HiveField(4)
  double remainingUnits;

  @HiveField(5)
  final String unitMeasure;

  @HiveField(6)
  final double lowStockAlert;

  InventoryItem({
    required this.id,
    required this.name,
    required this.brand,
    required this.totalUnits,
    required this.remainingUnits,
    required this.unitMeasure,
    this.lowStockAlert = 0.2,
  });
}
