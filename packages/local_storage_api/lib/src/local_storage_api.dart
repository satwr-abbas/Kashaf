// packages/local_storage_api/lib/src/local_storage_api.dart
import 'database.dart';

class LocalStorageApi {
  LocalStorageApi(this._db);

  final KashafLocalDatabase _db;

  // --- حساب المستخدم المحلي ---
  Future<void> saveUser(LocalUser user) async {
    await _db.into(_db.localUsers).insertOnConflictUpdate(user);
  }

  Future<LocalUser?> getLocalUser(String id) async {
    return (_db.select(_db.localUsers)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  // --- كاش اللاعبين ---
  Future<void> cachePlayers(List<CachedPlayer> players) async {
    await _db.batch((batch) {
      batch.insertAllOnConflictUpdate(_db.cachedPlayers, players);
    });
  }

  Future<List<CachedPlayer>> getCachedPlayers() async {
    return _db.select(_db.cachedPlayers).get();
  }

  // --- كاش الملاعب ---
  Future<void> cachePitches(List<CachedPitch> pitches) async {
    await _db.batch((batch) {
      batch.insertAllOnConflictUpdate(_db.cachedPitches, pitches);
    });
  }

  Future<List<CachedPitch>> getCachedPitches() async {
    return _db.select(_db.cachedPitches).get();
  }

  // --- الملاعب المفضلة ---
  Future<void> addFavorite(String userId, String pitchId) async {
    await _db.into(_db.favorites).insert(
          FavoritesCompanion.insert(
            userId: userId,
            pitchId: pitchId,
          ),
        );
  }

  Future<void> removeFavorite(String userId, String pitchId) async {
    await (_db.delete(_db.favorites)
          ..where((t) => t.userId.equals(userId) & t.pitchId.equals(pitchId)))
        .go();
  }

  Future<List<Favorite>> getFavorites(String userId) async {
    return (_db.select(_db.favorites)..where((t) => t.userId.equals(userId)))
        .get();
  }
}