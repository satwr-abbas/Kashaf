// packages/local_storage_api/lib/src/tables/cached_players.dart
import 'package:drift/drift.dart';

class CachedPlayers extends Table {
  TextColumn get id => text()();
  TextColumn get position => text().nullable()();
  IntColumn get age => integer().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get preferredFoot => text().nullable()();
  BoolColumn get isVerified => boolean().withDefault(const Constant(false))();
  TextColumn get statsJson => text().nullable()(); 
  TextColumn get videoUrls => text().nullable()(); 

  @override
  Set<Column<Object>> get primaryKey => {id}; // تم التعديل هنا
}