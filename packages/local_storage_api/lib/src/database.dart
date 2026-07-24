// packages/local_storage_api/lib/src/database.dart
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

// استخدام استيرادات الحزمة المطلقة (Package Imports)
import 'package:local_storage_api/src/tables/cached_pitches.dart';
import 'package:local_storage_api/src/tables/cached_players.dart';
import 'package:local_storage_api/src/tables/favorites.dart';
import 'package:local_storage_api/src/tables/local_users.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    LocalUsers,
    CachedPlayers,
    CachedPitches,
    Favorites,
  ],
)
class KashafLocalDatabase extends _$KashafLocalDatabase {
  KashafLocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

QueryExecutor _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'kashaf_local_db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}