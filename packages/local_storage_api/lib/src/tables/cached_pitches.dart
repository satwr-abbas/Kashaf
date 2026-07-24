// packages/local_storage_api/lib/src/tables/cached_pitches.dart
import 'package:drift/drift.dart';

class CachedPitches extends Table {
  TextColumn get id => text()();
  TextColumn get ownerId => text()();
  TextColumn get name => text()();
  TextColumn get address => text()();
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();
  TextColumn get type => text()(); 
  TextColumn get turf => text()(); 
  TextColumn get amenities => text().nullable()(); 
  RealColumn get pricePerHour => real()();
  RealColumn get peakPricePerHour => real().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id}; // تم التعديل هنا
}