// packages/local_storage_api/lib/src/tables/favorites.dart
import 'package:drift/drift.dart';

class Favorites extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get userId => text()();
  TextColumn get pitchId => text()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}