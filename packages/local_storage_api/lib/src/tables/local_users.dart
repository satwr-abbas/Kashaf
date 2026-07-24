// packages/local_storage_api/lib/src/tables/local_users.dart
import 'package:drift/drift.dart';

class LocalUsers extends Table {
  TextColumn get id => text()();
  TextColumn get fullName => text()();
  TextColumn get phoneNumber => text().nullable()();
  TextColumn get role => text()(); // player, scout, owner, coach, admin
  TextColumn get avatarUrl => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id}; // تم التعديل هنا
}