// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $LocalUsersTable extends LocalUsers
    with TableInfo<$LocalUsersTable, LocalUser> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalUsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
      'role', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _avatarUrlMeta =
      const VerificationMeta('avatarUrl');
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
      'avatar_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, fullName, phoneNumber, role, avatarUrl];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'local_users';
  @override
  VerificationContext validateIntegrity(Insertable<LocalUser> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    }
    if (data.containsKey('role')) {
      context.handle(
          _roleMeta, role.isAcceptableOrUnknown(data['role']!, _roleMeta));
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(_avatarUrlMeta,
          avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalUser map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalUser(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number']),
      role: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}role'])!,
      avatarUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}avatar_url']),
    );
  }

  @override
  $LocalUsersTable createAlias(String alias) {
    return $LocalUsersTable(attachedDatabase, alias);
  }
}

class LocalUser extends DataClass implements Insertable<LocalUser> {
  final String id;
  final String fullName;
  final String? phoneNumber;
  final String role;
  final String? avatarUrl;
  const LocalUser(
      {required this.id,
      required this.fullName,
      this.phoneNumber,
      required this.role,
      this.avatarUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['full_name'] = Variable<String>(fullName);
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    map['role'] = Variable<String>(role);
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = Variable<String>(avatarUrl);
    }
    return map;
  }

  LocalUsersCompanion toCompanion(bool nullToAbsent) {
    return LocalUsersCompanion(
      id: Value(id),
      fullName: Value(fullName),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      role: Value(role),
      avatarUrl: avatarUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarUrl),
    );
  }

  factory LocalUser.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalUser(
      id: serializer.fromJson<String>(json['id']),
      fullName: serializer.fromJson<String>(json['fullName']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
      role: serializer.fromJson<String>(json['role']),
      avatarUrl: serializer.fromJson<String?>(json['avatarUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'fullName': serializer.toJson<String>(fullName),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
      'role': serializer.toJson<String>(role),
      'avatarUrl': serializer.toJson<String?>(avatarUrl),
    };
  }

  LocalUser copyWith(
          {String? id,
          String? fullName,
          Value<String?> phoneNumber = const Value.absent(),
          String? role,
          Value<String?> avatarUrl = const Value.absent()}) =>
      LocalUser(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
        role: role ?? this.role,
        avatarUrl: avatarUrl.present ? avatarUrl.value : this.avatarUrl,
      );
  LocalUser copyWithCompanion(LocalUsersCompanion data) {
    return LocalUser(
      id: data.id.present ? data.id.value : this.id,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      phoneNumber:
          data.phoneNumber.present ? data.phoneNumber.value : this.phoneNumber,
      role: data.role.present ? data.role.value : this.role,
      avatarUrl: data.avatarUrl.present ? data.avatarUrl.value : this.avatarUrl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocalUser(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('role: $role, ')
          ..write('avatarUrl: $avatarUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, fullName, phoneNumber, role, avatarUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalUser &&
          other.id == this.id &&
          other.fullName == this.fullName &&
          other.phoneNumber == this.phoneNumber &&
          other.role == this.role &&
          other.avatarUrl == this.avatarUrl);
}

class LocalUsersCompanion extends UpdateCompanion<LocalUser> {
  final Value<String> id;
  final Value<String> fullName;
  final Value<String?> phoneNumber;
  final Value<String> role;
  final Value<String?> avatarUrl;
  final Value<int> rowid;
  const LocalUsersCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.role = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LocalUsersCompanion.insert({
    required String id,
    required String fullName,
    this.phoneNumber = const Value.absent(),
    required String role,
    this.avatarUrl = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        fullName = Value(fullName),
        role = Value(role);
  static Insertable<LocalUser> custom({
    Expression<String>? id,
    Expression<String>? fullName,
    Expression<String>? phoneNumber,
    Expression<String>? role,
    Expression<String>? avatarUrl,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (role != null) 'role': role,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LocalUsersCompanion copyWith(
      {Value<String>? id,
      Value<String>? fullName,
      Value<String?>? phoneNumber,
      Value<String>? role,
      Value<String?>? avatarUrl,
      Value<int>? rowid}) {
    return LocalUsersCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      role: role ?? this.role,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalUsersCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('role: $role, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CachedPlayersTable extends CachedPlayers
    with TableInfo<$CachedPlayersTable, CachedPlayer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedPlayersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _positionMeta =
      const VerificationMeta('position');
  @override
  late final GeneratedColumn<String> position = GeneratedColumn<String>(
      'position', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
      'age', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _preferredFootMeta =
      const VerificationMeta('preferredFoot');
  @override
  late final GeneratedColumn<String> preferredFoot = GeneratedColumn<String>(
      'preferred_foot', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isVerifiedMeta =
      const VerificationMeta('isVerified');
  @override
  late final GeneratedColumn<bool> isVerified = GeneratedColumn<bool>(
      'is_verified', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_verified" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _statsJsonMeta =
      const VerificationMeta('statsJson');
  @override
  late final GeneratedColumn<String> statsJson = GeneratedColumn<String>(
      'stats_json', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _videoUrlsMeta =
      const VerificationMeta('videoUrls');
  @override
  late final GeneratedColumn<String> videoUrls = GeneratedColumn<String>(
      'video_urls', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        position,
        age,
        city,
        preferredFoot,
        isVerified,
        statsJson,
        videoUrls
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_players';
  @override
  VerificationContext validateIntegrity(Insertable<CachedPlayer> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    }
    if (data.containsKey('age')) {
      context.handle(
          _ageMeta, age.isAcceptableOrUnknown(data['age']!, _ageMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('preferred_foot')) {
      context.handle(
          _preferredFootMeta,
          preferredFoot.isAcceptableOrUnknown(
              data['preferred_foot']!, _preferredFootMeta));
    }
    if (data.containsKey('is_verified')) {
      context.handle(
          _isVerifiedMeta,
          isVerified.isAcceptableOrUnknown(
              data['is_verified']!, _isVerifiedMeta));
    }
    if (data.containsKey('stats_json')) {
      context.handle(_statsJsonMeta,
          statsJson.isAcceptableOrUnknown(data['stats_json']!, _statsJsonMeta));
    }
    if (data.containsKey('video_urls')) {
      context.handle(_videoUrlsMeta,
          videoUrls.isAcceptableOrUnknown(data['video_urls']!, _videoUrlsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CachedPlayer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedPlayer(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}position']),
      age: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}age']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      preferredFoot: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}preferred_foot']),
      isVerified: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_verified'])!,
      statsJson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stats_json']),
      videoUrls: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}video_urls']),
    );
  }

  @override
  $CachedPlayersTable createAlias(String alias) {
    return $CachedPlayersTable(attachedDatabase, alias);
  }
}

class CachedPlayer extends DataClass implements Insertable<CachedPlayer> {
  final String id;
  final String? position;
  final int? age;
  final String? city;
  final String? preferredFoot;
  final bool isVerified;
  final String? statsJson;
  final String? videoUrls;
  const CachedPlayer(
      {required this.id,
      this.position,
      this.age,
      this.city,
      this.preferredFoot,
      required this.isVerified,
      this.statsJson,
      this.videoUrls});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || position != null) {
      map['position'] = Variable<String>(position);
    }
    if (!nullToAbsent || age != null) {
      map['age'] = Variable<int>(age);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || preferredFoot != null) {
      map['preferred_foot'] = Variable<String>(preferredFoot);
    }
    map['is_verified'] = Variable<bool>(isVerified);
    if (!nullToAbsent || statsJson != null) {
      map['stats_json'] = Variable<String>(statsJson);
    }
    if (!nullToAbsent || videoUrls != null) {
      map['video_urls'] = Variable<String>(videoUrls);
    }
    return map;
  }

  CachedPlayersCompanion toCompanion(bool nullToAbsent) {
    return CachedPlayersCompanion(
      id: Value(id),
      position: position == null && nullToAbsent
          ? const Value.absent()
          : Value(position),
      age: age == null && nullToAbsent ? const Value.absent() : Value(age),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      preferredFoot: preferredFoot == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredFoot),
      isVerified: Value(isVerified),
      statsJson: statsJson == null && nullToAbsent
          ? const Value.absent()
          : Value(statsJson),
      videoUrls: videoUrls == null && nullToAbsent
          ? const Value.absent()
          : Value(videoUrls),
    );
  }

  factory CachedPlayer.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedPlayer(
      id: serializer.fromJson<String>(json['id']),
      position: serializer.fromJson<String?>(json['position']),
      age: serializer.fromJson<int?>(json['age']),
      city: serializer.fromJson<String?>(json['city']),
      preferredFoot: serializer.fromJson<String?>(json['preferredFoot']),
      isVerified: serializer.fromJson<bool>(json['isVerified']),
      statsJson: serializer.fromJson<String?>(json['statsJson']),
      videoUrls: serializer.fromJson<String?>(json['videoUrls']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'position': serializer.toJson<String?>(position),
      'age': serializer.toJson<int?>(age),
      'city': serializer.toJson<String?>(city),
      'preferredFoot': serializer.toJson<String?>(preferredFoot),
      'isVerified': serializer.toJson<bool>(isVerified),
      'statsJson': serializer.toJson<String?>(statsJson),
      'videoUrls': serializer.toJson<String?>(videoUrls),
    };
  }

  CachedPlayer copyWith(
          {String? id,
          Value<String?> position = const Value.absent(),
          Value<int?> age = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> preferredFoot = const Value.absent(),
          bool? isVerified,
          Value<String?> statsJson = const Value.absent(),
          Value<String?> videoUrls = const Value.absent()}) =>
      CachedPlayer(
        id: id ?? this.id,
        position: position.present ? position.value : this.position,
        age: age.present ? age.value : this.age,
        city: city.present ? city.value : this.city,
        preferredFoot:
            preferredFoot.present ? preferredFoot.value : this.preferredFoot,
        isVerified: isVerified ?? this.isVerified,
        statsJson: statsJson.present ? statsJson.value : this.statsJson,
        videoUrls: videoUrls.present ? videoUrls.value : this.videoUrls,
      );
  CachedPlayer copyWithCompanion(CachedPlayersCompanion data) {
    return CachedPlayer(
      id: data.id.present ? data.id.value : this.id,
      position: data.position.present ? data.position.value : this.position,
      age: data.age.present ? data.age.value : this.age,
      city: data.city.present ? data.city.value : this.city,
      preferredFoot: data.preferredFoot.present
          ? data.preferredFoot.value
          : this.preferredFoot,
      isVerified:
          data.isVerified.present ? data.isVerified.value : this.isVerified,
      statsJson: data.statsJson.present ? data.statsJson.value : this.statsJson,
      videoUrls: data.videoUrls.present ? data.videoUrls.value : this.videoUrls,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedPlayer(')
          ..write('id: $id, ')
          ..write('position: $position, ')
          ..write('age: $age, ')
          ..write('city: $city, ')
          ..write('preferredFoot: $preferredFoot, ')
          ..write('isVerified: $isVerified, ')
          ..write('statsJson: $statsJson, ')
          ..write('videoUrls: $videoUrls')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, position, age, city, preferredFoot, isVerified, statsJson, videoUrls);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedPlayer &&
          other.id == this.id &&
          other.position == this.position &&
          other.age == this.age &&
          other.city == this.city &&
          other.preferredFoot == this.preferredFoot &&
          other.isVerified == this.isVerified &&
          other.statsJson == this.statsJson &&
          other.videoUrls == this.videoUrls);
}

class CachedPlayersCompanion extends UpdateCompanion<CachedPlayer> {
  final Value<String> id;
  final Value<String?> position;
  final Value<int?> age;
  final Value<String?> city;
  final Value<String?> preferredFoot;
  final Value<bool> isVerified;
  final Value<String?> statsJson;
  final Value<String?> videoUrls;
  final Value<int> rowid;
  const CachedPlayersCompanion({
    this.id = const Value.absent(),
    this.position = const Value.absent(),
    this.age = const Value.absent(),
    this.city = const Value.absent(),
    this.preferredFoot = const Value.absent(),
    this.isVerified = const Value.absent(),
    this.statsJson = const Value.absent(),
    this.videoUrls = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CachedPlayersCompanion.insert({
    required String id,
    this.position = const Value.absent(),
    this.age = const Value.absent(),
    this.city = const Value.absent(),
    this.preferredFoot = const Value.absent(),
    this.isVerified = const Value.absent(),
    this.statsJson = const Value.absent(),
    this.videoUrls = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<CachedPlayer> custom({
    Expression<String>? id,
    Expression<String>? position,
    Expression<int>? age,
    Expression<String>? city,
    Expression<String>? preferredFoot,
    Expression<bool>? isVerified,
    Expression<String>? statsJson,
    Expression<String>? videoUrls,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (position != null) 'position': position,
      if (age != null) 'age': age,
      if (city != null) 'city': city,
      if (preferredFoot != null) 'preferred_foot': preferredFoot,
      if (isVerified != null) 'is_verified': isVerified,
      if (statsJson != null) 'stats_json': statsJson,
      if (videoUrls != null) 'video_urls': videoUrls,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CachedPlayersCompanion copyWith(
      {Value<String>? id,
      Value<String?>? position,
      Value<int?>? age,
      Value<String?>? city,
      Value<String?>? preferredFoot,
      Value<bool>? isVerified,
      Value<String?>? statsJson,
      Value<String?>? videoUrls,
      Value<int>? rowid}) {
    return CachedPlayersCompanion(
      id: id ?? this.id,
      position: position ?? this.position,
      age: age ?? this.age,
      city: city ?? this.city,
      preferredFoot: preferredFoot ?? this.preferredFoot,
      isVerified: isVerified ?? this.isVerified,
      statsJson: statsJson ?? this.statsJson,
      videoUrls: videoUrls ?? this.videoUrls,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (position.present) {
      map['position'] = Variable<String>(position.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (preferredFoot.present) {
      map['preferred_foot'] = Variable<String>(preferredFoot.value);
    }
    if (isVerified.present) {
      map['is_verified'] = Variable<bool>(isVerified.value);
    }
    if (statsJson.present) {
      map['stats_json'] = Variable<String>(statsJson.value);
    }
    if (videoUrls.present) {
      map['video_urls'] = Variable<String>(videoUrls.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedPlayersCompanion(')
          ..write('id: $id, ')
          ..write('position: $position, ')
          ..write('age: $age, ')
          ..write('city: $city, ')
          ..write('preferredFoot: $preferredFoot, ')
          ..write('isVerified: $isVerified, ')
          ..write('statsJson: $statsJson, ')
          ..write('videoUrls: $videoUrls, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CachedPitchesTable extends CachedPitches
    with TableInfo<$CachedPitchesTable, CachedPitche> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedPitchesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ownerIdMeta =
      const VerificationMeta('ownerId');
  @override
  late final GeneratedColumn<String> ownerId = GeneratedColumn<String>(
      'owner_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _turfMeta = const VerificationMeta('turf');
  @override
  late final GeneratedColumn<String> turf = GeneratedColumn<String>(
      'turf', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _amenitiesMeta =
      const VerificationMeta('amenities');
  @override
  late final GeneratedColumn<String> amenities = GeneratedColumn<String>(
      'amenities', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pricePerHourMeta =
      const VerificationMeta('pricePerHour');
  @override
  late final GeneratedColumn<double> pricePerHour = GeneratedColumn<double>(
      'price_per_hour', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _peakPricePerHourMeta =
      const VerificationMeta('peakPricePerHour');
  @override
  late final GeneratedColumn<double> peakPricePerHour = GeneratedColumn<double>(
      'peak_price_per_hour', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        ownerId,
        name,
        address,
        latitude,
        longitude,
        type,
        turf,
        amenities,
        pricePerHour,
        peakPricePerHour
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_pitches';
  @override
  VerificationContext validateIntegrity(Insertable<CachedPitche> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('owner_id')) {
      context.handle(_ownerIdMeta,
          ownerId.isAcceptableOrUnknown(data['owner_id']!, _ownerIdMeta));
    } else if (isInserting) {
      context.missing(_ownerIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('turf')) {
      context.handle(
          _turfMeta, turf.isAcceptableOrUnknown(data['turf']!, _turfMeta));
    } else if (isInserting) {
      context.missing(_turfMeta);
    }
    if (data.containsKey('amenities')) {
      context.handle(_amenitiesMeta,
          amenities.isAcceptableOrUnknown(data['amenities']!, _amenitiesMeta));
    }
    if (data.containsKey('price_per_hour')) {
      context.handle(
          _pricePerHourMeta,
          pricePerHour.isAcceptableOrUnknown(
              data['price_per_hour']!, _pricePerHourMeta));
    } else if (isInserting) {
      context.missing(_pricePerHourMeta);
    }
    if (data.containsKey('peak_price_per_hour')) {
      context.handle(
          _peakPricePerHourMeta,
          peakPricePerHour.isAcceptableOrUnknown(
              data['peak_price_per_hour']!, _peakPricePerHourMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CachedPitche map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedPitche(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      ownerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude']),
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      turf: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}turf'])!,
      amenities: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}amenities']),
      pricePerHour: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price_per_hour'])!,
      peakPricePerHour: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}peak_price_per_hour']),
    );
  }

  @override
  $CachedPitchesTable createAlias(String alias) {
    return $CachedPitchesTable(attachedDatabase, alias);
  }
}

class CachedPitche extends DataClass implements Insertable<CachedPitche> {
  final String id;
  final String ownerId;
  final String name;
  final String address;
  final double? latitude;
  final double? longitude;
  final String type;
  final String turf;
  final String? amenities;
  final double pricePerHour;
  final double? peakPricePerHour;
  const CachedPitche(
      {required this.id,
      required this.ownerId,
      required this.name,
      required this.address,
      this.latitude,
      this.longitude,
      required this.type,
      required this.turf,
      this.amenities,
      required this.pricePerHour,
      this.peakPricePerHour});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['owner_id'] = Variable<String>(ownerId);
    map['name'] = Variable<String>(name);
    map['address'] = Variable<String>(address);
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    map['type'] = Variable<String>(type);
    map['turf'] = Variable<String>(turf);
    if (!nullToAbsent || amenities != null) {
      map['amenities'] = Variable<String>(amenities);
    }
    map['price_per_hour'] = Variable<double>(pricePerHour);
    if (!nullToAbsent || peakPricePerHour != null) {
      map['peak_price_per_hour'] = Variable<double>(peakPricePerHour);
    }
    return map;
  }

  CachedPitchesCompanion toCompanion(bool nullToAbsent) {
    return CachedPitchesCompanion(
      id: Value(id),
      ownerId: Value(ownerId),
      name: Value(name),
      address: Value(address),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      type: Value(type),
      turf: Value(turf),
      amenities: amenities == null && nullToAbsent
          ? const Value.absent()
          : Value(amenities),
      pricePerHour: Value(pricePerHour),
      peakPricePerHour: peakPricePerHour == null && nullToAbsent
          ? const Value.absent()
          : Value(peakPricePerHour),
    );
  }

  factory CachedPitche.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedPitche(
      id: serializer.fromJson<String>(json['id']),
      ownerId: serializer.fromJson<String>(json['ownerId']),
      name: serializer.fromJson<String>(json['name']),
      address: serializer.fromJson<String>(json['address']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      type: serializer.fromJson<String>(json['type']),
      turf: serializer.fromJson<String>(json['turf']),
      amenities: serializer.fromJson<String?>(json['amenities']),
      pricePerHour: serializer.fromJson<double>(json['pricePerHour']),
      peakPricePerHour: serializer.fromJson<double?>(json['peakPricePerHour']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'ownerId': serializer.toJson<String>(ownerId),
      'name': serializer.toJson<String>(name),
      'address': serializer.toJson<String>(address),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'type': serializer.toJson<String>(type),
      'turf': serializer.toJson<String>(turf),
      'amenities': serializer.toJson<String?>(amenities),
      'pricePerHour': serializer.toJson<double>(pricePerHour),
      'peakPricePerHour': serializer.toJson<double?>(peakPricePerHour),
    };
  }

  CachedPitche copyWith(
          {String? id,
          String? ownerId,
          String? name,
          String? address,
          Value<double?> latitude = const Value.absent(),
          Value<double?> longitude = const Value.absent(),
          String? type,
          String? turf,
          Value<String?> amenities = const Value.absent(),
          double? pricePerHour,
          Value<double?> peakPricePerHour = const Value.absent()}) =>
      CachedPitche(
        id: id ?? this.id,
        ownerId: ownerId ?? this.ownerId,
        name: name ?? this.name,
        address: address ?? this.address,
        latitude: latitude.present ? latitude.value : this.latitude,
        longitude: longitude.present ? longitude.value : this.longitude,
        type: type ?? this.type,
        turf: turf ?? this.turf,
        amenities: amenities.present ? amenities.value : this.amenities,
        pricePerHour: pricePerHour ?? this.pricePerHour,
        peakPricePerHour: peakPricePerHour.present
            ? peakPricePerHour.value
            : this.peakPricePerHour,
      );
  CachedPitche copyWithCompanion(CachedPitchesCompanion data) {
    return CachedPitche(
      id: data.id.present ? data.id.value : this.id,
      ownerId: data.ownerId.present ? data.ownerId.value : this.ownerId,
      name: data.name.present ? data.name.value : this.name,
      address: data.address.present ? data.address.value : this.address,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      type: data.type.present ? data.type.value : this.type,
      turf: data.turf.present ? data.turf.value : this.turf,
      amenities: data.amenities.present ? data.amenities.value : this.amenities,
      pricePerHour: data.pricePerHour.present
          ? data.pricePerHour.value
          : this.pricePerHour,
      peakPricePerHour: data.peakPricePerHour.present
          ? data.peakPricePerHour.value
          : this.peakPricePerHour,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedPitche(')
          ..write('id: $id, ')
          ..write('ownerId: $ownerId, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('type: $type, ')
          ..write('turf: $turf, ')
          ..write('amenities: $amenities, ')
          ..write('pricePerHour: $pricePerHour, ')
          ..write('peakPricePerHour: $peakPricePerHour')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, ownerId, name, address, latitude,
      longitude, type, turf, amenities, pricePerHour, peakPricePerHour);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedPitche &&
          other.id == this.id &&
          other.ownerId == this.ownerId &&
          other.name == this.name &&
          other.address == this.address &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.type == this.type &&
          other.turf == this.turf &&
          other.amenities == this.amenities &&
          other.pricePerHour == this.pricePerHour &&
          other.peakPricePerHour == this.peakPricePerHour);
}

class CachedPitchesCompanion extends UpdateCompanion<CachedPitche> {
  final Value<String> id;
  final Value<String> ownerId;
  final Value<String> name;
  final Value<String> address;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<String> type;
  final Value<String> turf;
  final Value<String?> amenities;
  final Value<double> pricePerHour;
  final Value<double?> peakPricePerHour;
  final Value<int> rowid;
  const CachedPitchesCompanion({
    this.id = const Value.absent(),
    this.ownerId = const Value.absent(),
    this.name = const Value.absent(),
    this.address = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.type = const Value.absent(),
    this.turf = const Value.absent(),
    this.amenities = const Value.absent(),
    this.pricePerHour = const Value.absent(),
    this.peakPricePerHour = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CachedPitchesCompanion.insert({
    required String id,
    required String ownerId,
    required String name,
    required String address,
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    required String type,
    required String turf,
    this.amenities = const Value.absent(),
    required double pricePerHour,
    this.peakPricePerHour = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        ownerId = Value(ownerId),
        name = Value(name),
        address = Value(address),
        type = Value(type),
        turf = Value(turf),
        pricePerHour = Value(pricePerHour);
  static Insertable<CachedPitche> custom({
    Expression<String>? id,
    Expression<String>? ownerId,
    Expression<String>? name,
    Expression<String>? address,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<String>? type,
    Expression<String>? turf,
    Expression<String>? amenities,
    Expression<double>? pricePerHour,
    Expression<double>? peakPricePerHour,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ownerId != null) 'owner_id': ownerId,
      if (name != null) 'name': name,
      if (address != null) 'address': address,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (type != null) 'type': type,
      if (turf != null) 'turf': turf,
      if (amenities != null) 'amenities': amenities,
      if (pricePerHour != null) 'price_per_hour': pricePerHour,
      if (peakPricePerHour != null) 'peak_price_per_hour': peakPricePerHour,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CachedPitchesCompanion copyWith(
      {Value<String>? id,
      Value<String>? ownerId,
      Value<String>? name,
      Value<String>? address,
      Value<double?>? latitude,
      Value<double?>? longitude,
      Value<String>? type,
      Value<String>? turf,
      Value<String?>? amenities,
      Value<double>? pricePerHour,
      Value<double?>? peakPricePerHour,
      Value<int>? rowid}) {
    return CachedPitchesCompanion(
      id: id ?? this.id,
      ownerId: ownerId ?? this.ownerId,
      name: name ?? this.name,
      address: address ?? this.address,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      type: type ?? this.type,
      turf: turf ?? this.turf,
      amenities: amenities ?? this.amenities,
      pricePerHour: pricePerHour ?? this.pricePerHour,
      peakPricePerHour: peakPricePerHour ?? this.peakPricePerHour,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (ownerId.present) {
      map['owner_id'] = Variable<String>(ownerId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (turf.present) {
      map['turf'] = Variable<String>(turf.value);
    }
    if (amenities.present) {
      map['amenities'] = Variable<String>(amenities.value);
    }
    if (pricePerHour.present) {
      map['price_per_hour'] = Variable<double>(pricePerHour.value);
    }
    if (peakPricePerHour.present) {
      map['peak_price_per_hour'] = Variable<double>(peakPricePerHour.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedPitchesCompanion(')
          ..write('id: $id, ')
          ..write('ownerId: $ownerId, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('type: $type, ')
          ..write('turf: $turf, ')
          ..write('amenities: $amenities, ')
          ..write('pricePerHour: $pricePerHour, ')
          ..write('peakPricePerHour: $peakPricePerHour, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, Favorite> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pitchIdMeta =
      const VerificationMeta('pitchId');
  @override
  late final GeneratedColumn<String> pitchId = GeneratedColumn<String>(
      'pitch_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [id, userId, pitchId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorites';
  @override
  VerificationContext validateIntegrity(Insertable<Favorite> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('pitch_id')) {
      context.handle(_pitchIdMeta,
          pitchId.isAcceptableOrUnknown(data['pitch_id']!, _pitchIdMeta));
    } else if (isInserting) {
      context.missing(_pitchIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Favorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Favorite(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      pitchId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pitch_id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(attachedDatabase, alias);
  }
}

class Favorite extends DataClass implements Insertable<Favorite> {
  final int id;
  final String userId;
  final String pitchId;
  final DateTime createdAt;
  const Favorite(
      {required this.id,
      required this.userId,
      required this.pitchId,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<String>(userId);
    map['pitch_id'] = Variable<String>(pitchId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FavoritesCompanion toCompanion(bool nullToAbsent) {
    return FavoritesCompanion(
      id: Value(id),
      userId: Value(userId),
      pitchId: Value(pitchId),
      createdAt: Value(createdAt),
    );
  }

  factory Favorite.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Favorite(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      pitchId: serializer.fromJson<String>(json['pitchId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<String>(userId),
      'pitchId': serializer.toJson<String>(pitchId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Favorite copyWith(
          {int? id, String? userId, String? pitchId, DateTime? createdAt}) =>
      Favorite(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        pitchId: pitchId ?? this.pitchId,
        createdAt: createdAt ?? this.createdAt,
      );
  Favorite copyWithCompanion(FavoritesCompanion data) {
    return Favorite(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      pitchId: data.pitchId.present ? data.pitchId.value : this.pitchId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Favorite(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('pitchId: $pitchId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, pitchId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Favorite &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.pitchId == this.pitchId &&
          other.createdAt == this.createdAt);
}

class FavoritesCompanion extends UpdateCompanion<Favorite> {
  final Value<int> id;
  final Value<String> userId;
  final Value<String> pitchId;
  final Value<DateTime> createdAt;
  const FavoritesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.pitchId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  FavoritesCompanion.insert({
    this.id = const Value.absent(),
    required String userId,
    required String pitchId,
    this.createdAt = const Value.absent(),
  })  : userId = Value(userId),
        pitchId = Value(pitchId);
  static Insertable<Favorite> custom({
    Expression<int>? id,
    Expression<String>? userId,
    Expression<String>? pitchId,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (pitchId != null) 'pitch_id': pitchId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  FavoritesCompanion copyWith(
      {Value<int>? id,
      Value<String>? userId,
      Value<String>? pitchId,
      Value<DateTime>? createdAt}) {
    return FavoritesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      pitchId: pitchId ?? this.pitchId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (pitchId.present) {
      map['pitch_id'] = Variable<String>(pitchId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('pitchId: $pitchId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$KashafLocalDatabase extends GeneratedDatabase {
  _$KashafLocalDatabase(QueryExecutor e) : super(e);
  $KashafLocalDatabaseManager get managers => $KashafLocalDatabaseManager(this);
  late final $LocalUsersTable localUsers = $LocalUsersTable(this);
  late final $CachedPlayersTable cachedPlayers = $CachedPlayersTable(this);
  late final $CachedPitchesTable cachedPitches = $CachedPitchesTable(this);
  late final $FavoritesTable favorites = $FavoritesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [localUsers, cachedPlayers, cachedPitches, favorites];
}

typedef $$LocalUsersTableCreateCompanionBuilder = LocalUsersCompanion Function({
  required String id,
  required String fullName,
  Value<String?> phoneNumber,
  required String role,
  Value<String?> avatarUrl,
  Value<int> rowid,
});
typedef $$LocalUsersTableUpdateCompanionBuilder = LocalUsersCompanion Function({
  Value<String> id,
  Value<String> fullName,
  Value<String?> phoneNumber,
  Value<String> role,
  Value<String?> avatarUrl,
  Value<int> rowid,
});

class $$LocalUsersTableFilterComposer
    extends Composer<_$KashafLocalDatabase, $LocalUsersTable> {
  $$LocalUsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fullName => $composableBuilder(
      column: $table.fullName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get role => $composableBuilder(
      column: $table.role, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get avatarUrl => $composableBuilder(
      column: $table.avatarUrl, builder: (column) => ColumnFilters(column));
}

class $$LocalUsersTableOrderingComposer
    extends Composer<_$KashafLocalDatabase, $LocalUsersTable> {
  $$LocalUsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fullName => $composableBuilder(
      column: $table.fullName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get role => $composableBuilder(
      column: $table.role, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get avatarUrl => $composableBuilder(
      column: $table.avatarUrl, builder: (column) => ColumnOrderings(column));
}

class $$LocalUsersTableAnnotationComposer
    extends Composer<_$KashafLocalDatabase, $LocalUsersTable> {
  $$LocalUsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => column);

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumn<String> get avatarUrl =>
      $composableBuilder(column: $table.avatarUrl, builder: (column) => column);
}

class $$LocalUsersTableTableManager extends RootTableManager<
    _$KashafLocalDatabase,
    $LocalUsersTable,
    LocalUser,
    $$LocalUsersTableFilterComposer,
    $$LocalUsersTableOrderingComposer,
    $$LocalUsersTableAnnotationComposer,
    $$LocalUsersTableCreateCompanionBuilder,
    $$LocalUsersTableUpdateCompanionBuilder,
    (
      LocalUser,
      BaseReferences<_$KashafLocalDatabase, $LocalUsersTable, LocalUser>
    ),
    LocalUser,
    PrefetchHooks Function()> {
  $$LocalUsersTableTableManager(
      _$KashafLocalDatabase db, $LocalUsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocalUsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocalUsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocalUsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> fullName = const Value.absent(),
            Value<String?> phoneNumber = const Value.absent(),
            Value<String> role = const Value.absent(),
            Value<String?> avatarUrl = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalUsersCompanion(
            id: id,
            fullName: fullName,
            phoneNumber: phoneNumber,
            role: role,
            avatarUrl: avatarUrl,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String fullName,
            Value<String?> phoneNumber = const Value.absent(),
            required String role,
            Value<String?> avatarUrl = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LocalUsersCompanion.insert(
            id: id,
            fullName: fullName,
            phoneNumber: phoneNumber,
            role: role,
            avatarUrl: avatarUrl,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LocalUsersTableProcessedTableManager = ProcessedTableManager<
    _$KashafLocalDatabase,
    $LocalUsersTable,
    LocalUser,
    $$LocalUsersTableFilterComposer,
    $$LocalUsersTableOrderingComposer,
    $$LocalUsersTableAnnotationComposer,
    $$LocalUsersTableCreateCompanionBuilder,
    $$LocalUsersTableUpdateCompanionBuilder,
    (
      LocalUser,
      BaseReferences<_$KashafLocalDatabase, $LocalUsersTable, LocalUser>
    ),
    LocalUser,
    PrefetchHooks Function()>;
typedef $$CachedPlayersTableCreateCompanionBuilder = CachedPlayersCompanion
    Function({
  required String id,
  Value<String?> position,
  Value<int?> age,
  Value<String?> city,
  Value<String?> preferredFoot,
  Value<bool> isVerified,
  Value<String?> statsJson,
  Value<String?> videoUrls,
  Value<int> rowid,
});
typedef $$CachedPlayersTableUpdateCompanionBuilder = CachedPlayersCompanion
    Function({
  Value<String> id,
  Value<String?> position,
  Value<int?> age,
  Value<String?> city,
  Value<String?> preferredFoot,
  Value<bool> isVerified,
  Value<String?> statsJson,
  Value<String?> videoUrls,
  Value<int> rowid,
});

class $$CachedPlayersTableFilterComposer
    extends Composer<_$KashafLocalDatabase, $CachedPlayersTable> {
  $$CachedPlayersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get position => $composableBuilder(
      column: $table.position, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get age => $composableBuilder(
      column: $table.age, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preferredFoot => $composableBuilder(
      column: $table.preferredFoot, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isVerified => $composableBuilder(
      column: $table.isVerified, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get statsJson => $composableBuilder(
      column: $table.statsJson, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get videoUrls => $composableBuilder(
      column: $table.videoUrls, builder: (column) => ColumnFilters(column));
}

class $$CachedPlayersTableOrderingComposer
    extends Composer<_$KashafLocalDatabase, $CachedPlayersTable> {
  $$CachedPlayersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get position => $composableBuilder(
      column: $table.position, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get age => $composableBuilder(
      column: $table.age, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preferredFoot => $composableBuilder(
      column: $table.preferredFoot,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isVerified => $composableBuilder(
      column: $table.isVerified, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get statsJson => $composableBuilder(
      column: $table.statsJson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get videoUrls => $composableBuilder(
      column: $table.videoUrls, builder: (column) => ColumnOrderings(column));
}

class $$CachedPlayersTableAnnotationComposer
    extends Composer<_$KashafLocalDatabase, $CachedPlayersTable> {
  $$CachedPlayersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get position =>
      $composableBuilder(column: $table.position, builder: (column) => column);

  GeneratedColumn<int> get age =>
      $composableBuilder(column: $table.age, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get preferredFoot => $composableBuilder(
      column: $table.preferredFoot, builder: (column) => column);

  GeneratedColumn<bool> get isVerified => $composableBuilder(
      column: $table.isVerified, builder: (column) => column);

  GeneratedColumn<String> get statsJson =>
      $composableBuilder(column: $table.statsJson, builder: (column) => column);

  GeneratedColumn<String> get videoUrls =>
      $composableBuilder(column: $table.videoUrls, builder: (column) => column);
}

class $$CachedPlayersTableTableManager extends RootTableManager<
    _$KashafLocalDatabase,
    $CachedPlayersTable,
    CachedPlayer,
    $$CachedPlayersTableFilterComposer,
    $$CachedPlayersTableOrderingComposer,
    $$CachedPlayersTableAnnotationComposer,
    $$CachedPlayersTableCreateCompanionBuilder,
    $$CachedPlayersTableUpdateCompanionBuilder,
    (
      CachedPlayer,
      BaseReferences<_$KashafLocalDatabase, $CachedPlayersTable, CachedPlayer>
    ),
    CachedPlayer,
    PrefetchHooks Function()> {
  $$CachedPlayersTableTableManager(
      _$KashafLocalDatabase db, $CachedPlayersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedPlayersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedPlayersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedPlayersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> position = const Value.absent(),
            Value<int?> age = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> preferredFoot = const Value.absent(),
            Value<bool> isVerified = const Value.absent(),
            Value<String?> statsJson = const Value.absent(),
            Value<String?> videoUrls = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CachedPlayersCompanion(
            id: id,
            position: position,
            age: age,
            city: city,
            preferredFoot: preferredFoot,
            isVerified: isVerified,
            statsJson: statsJson,
            videoUrls: videoUrls,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> position = const Value.absent(),
            Value<int?> age = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> preferredFoot = const Value.absent(),
            Value<bool> isVerified = const Value.absent(),
            Value<String?> statsJson = const Value.absent(),
            Value<String?> videoUrls = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CachedPlayersCompanion.insert(
            id: id,
            position: position,
            age: age,
            city: city,
            preferredFoot: preferredFoot,
            isVerified: isVerified,
            statsJson: statsJson,
            videoUrls: videoUrls,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CachedPlayersTableProcessedTableManager = ProcessedTableManager<
    _$KashafLocalDatabase,
    $CachedPlayersTable,
    CachedPlayer,
    $$CachedPlayersTableFilterComposer,
    $$CachedPlayersTableOrderingComposer,
    $$CachedPlayersTableAnnotationComposer,
    $$CachedPlayersTableCreateCompanionBuilder,
    $$CachedPlayersTableUpdateCompanionBuilder,
    (
      CachedPlayer,
      BaseReferences<_$KashafLocalDatabase, $CachedPlayersTable, CachedPlayer>
    ),
    CachedPlayer,
    PrefetchHooks Function()>;
typedef $$CachedPitchesTableCreateCompanionBuilder = CachedPitchesCompanion
    Function({
  required String id,
  required String ownerId,
  required String name,
  required String address,
  Value<double?> latitude,
  Value<double?> longitude,
  required String type,
  required String turf,
  Value<String?> amenities,
  required double pricePerHour,
  Value<double?> peakPricePerHour,
  Value<int> rowid,
});
typedef $$CachedPitchesTableUpdateCompanionBuilder = CachedPitchesCompanion
    Function({
  Value<String> id,
  Value<String> ownerId,
  Value<String> name,
  Value<String> address,
  Value<double?> latitude,
  Value<double?> longitude,
  Value<String> type,
  Value<String> turf,
  Value<String?> amenities,
  Value<double> pricePerHour,
  Value<double?> peakPricePerHour,
  Value<int> rowid,
});

class $$CachedPitchesTableFilterComposer
    extends Composer<_$KashafLocalDatabase, $CachedPitchesTable> {
  $$CachedPitchesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ownerId => $composableBuilder(
      column: $table.ownerId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get turf => $composableBuilder(
      column: $table.turf, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get amenities => $composableBuilder(
      column: $table.amenities, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get pricePerHour => $composableBuilder(
      column: $table.pricePerHour, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get peakPricePerHour => $composableBuilder(
      column: $table.peakPricePerHour,
      builder: (column) => ColumnFilters(column));
}

class $$CachedPitchesTableOrderingComposer
    extends Composer<_$KashafLocalDatabase, $CachedPitchesTable> {
  $$CachedPitchesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ownerId => $composableBuilder(
      column: $table.ownerId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get turf => $composableBuilder(
      column: $table.turf, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get amenities => $composableBuilder(
      column: $table.amenities, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get pricePerHour => $composableBuilder(
      column: $table.pricePerHour,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get peakPricePerHour => $composableBuilder(
      column: $table.peakPricePerHour,
      builder: (column) => ColumnOrderings(column));
}

class $$CachedPitchesTableAnnotationComposer
    extends Composer<_$KashafLocalDatabase, $CachedPitchesTable> {
  $$CachedPitchesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get ownerId =>
      $composableBuilder(column: $table.ownerId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get turf =>
      $composableBuilder(column: $table.turf, builder: (column) => column);

  GeneratedColumn<String> get amenities =>
      $composableBuilder(column: $table.amenities, builder: (column) => column);

  GeneratedColumn<double> get pricePerHour => $composableBuilder(
      column: $table.pricePerHour, builder: (column) => column);

  GeneratedColumn<double> get peakPricePerHour => $composableBuilder(
      column: $table.peakPricePerHour, builder: (column) => column);
}

class $$CachedPitchesTableTableManager extends RootTableManager<
    _$KashafLocalDatabase,
    $CachedPitchesTable,
    CachedPitche,
    $$CachedPitchesTableFilterComposer,
    $$CachedPitchesTableOrderingComposer,
    $$CachedPitchesTableAnnotationComposer,
    $$CachedPitchesTableCreateCompanionBuilder,
    $$CachedPitchesTableUpdateCompanionBuilder,
    (
      CachedPitche,
      BaseReferences<_$KashafLocalDatabase, $CachedPitchesTable, CachedPitche>
    ),
    CachedPitche,
    PrefetchHooks Function()> {
  $$CachedPitchesTableTableManager(
      _$KashafLocalDatabase db, $CachedPitchesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedPitchesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedPitchesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedPitchesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> ownerId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<double?> latitude = const Value.absent(),
            Value<double?> longitude = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> turf = const Value.absent(),
            Value<String?> amenities = const Value.absent(),
            Value<double> pricePerHour = const Value.absent(),
            Value<double?> peakPricePerHour = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CachedPitchesCompanion(
            id: id,
            ownerId: ownerId,
            name: name,
            address: address,
            latitude: latitude,
            longitude: longitude,
            type: type,
            turf: turf,
            amenities: amenities,
            pricePerHour: pricePerHour,
            peakPricePerHour: peakPricePerHour,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String ownerId,
            required String name,
            required String address,
            Value<double?> latitude = const Value.absent(),
            Value<double?> longitude = const Value.absent(),
            required String type,
            required String turf,
            Value<String?> amenities = const Value.absent(),
            required double pricePerHour,
            Value<double?> peakPricePerHour = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CachedPitchesCompanion.insert(
            id: id,
            ownerId: ownerId,
            name: name,
            address: address,
            latitude: latitude,
            longitude: longitude,
            type: type,
            turf: turf,
            amenities: amenities,
            pricePerHour: pricePerHour,
            peakPricePerHour: peakPricePerHour,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CachedPitchesTableProcessedTableManager = ProcessedTableManager<
    _$KashafLocalDatabase,
    $CachedPitchesTable,
    CachedPitche,
    $$CachedPitchesTableFilterComposer,
    $$CachedPitchesTableOrderingComposer,
    $$CachedPitchesTableAnnotationComposer,
    $$CachedPitchesTableCreateCompanionBuilder,
    $$CachedPitchesTableUpdateCompanionBuilder,
    (
      CachedPitche,
      BaseReferences<_$KashafLocalDatabase, $CachedPitchesTable, CachedPitche>
    ),
    CachedPitche,
    PrefetchHooks Function()>;
typedef $$FavoritesTableCreateCompanionBuilder = FavoritesCompanion Function({
  Value<int> id,
  required String userId,
  required String pitchId,
  Value<DateTime> createdAt,
});
typedef $$FavoritesTableUpdateCompanionBuilder = FavoritesCompanion Function({
  Value<int> id,
  Value<String> userId,
  Value<String> pitchId,
  Value<DateTime> createdAt,
});

class $$FavoritesTableFilterComposer
    extends Composer<_$KashafLocalDatabase, $FavoritesTable> {
  $$FavoritesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pitchId => $composableBuilder(
      column: $table.pitchId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$FavoritesTableOrderingComposer
    extends Composer<_$KashafLocalDatabase, $FavoritesTable> {
  $$FavoritesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pitchId => $composableBuilder(
      column: $table.pitchId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$FavoritesTableAnnotationComposer
    extends Composer<_$KashafLocalDatabase, $FavoritesTable> {
  $$FavoritesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get pitchId =>
      $composableBuilder(column: $table.pitchId, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$FavoritesTableTableManager extends RootTableManager<
    _$KashafLocalDatabase,
    $FavoritesTable,
    Favorite,
    $$FavoritesTableFilterComposer,
    $$FavoritesTableOrderingComposer,
    $$FavoritesTableAnnotationComposer,
    $$FavoritesTableCreateCompanionBuilder,
    $$FavoritesTableUpdateCompanionBuilder,
    (
      Favorite,
      BaseReferences<_$KashafLocalDatabase, $FavoritesTable, Favorite>
    ),
    Favorite,
    PrefetchHooks Function()> {
  $$FavoritesTableTableManager(_$KashafLocalDatabase db, $FavoritesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoritesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoritesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoritesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String> pitchId = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              FavoritesCompanion(
            id: id,
            userId: userId,
            pitchId: pitchId,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String userId,
            required String pitchId,
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              FavoritesCompanion.insert(
            id: id,
            userId: userId,
            pitchId: pitchId,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FavoritesTableProcessedTableManager = ProcessedTableManager<
    _$KashafLocalDatabase,
    $FavoritesTable,
    Favorite,
    $$FavoritesTableFilterComposer,
    $$FavoritesTableOrderingComposer,
    $$FavoritesTableAnnotationComposer,
    $$FavoritesTableCreateCompanionBuilder,
    $$FavoritesTableUpdateCompanionBuilder,
    (
      Favorite,
      BaseReferences<_$KashafLocalDatabase, $FavoritesTable, Favorite>
    ),
    Favorite,
    PrefetchHooks Function()>;

class $KashafLocalDatabaseManager {
  final _$KashafLocalDatabase _db;
  $KashafLocalDatabaseManager(this._db);
  $$LocalUsersTableTableManager get localUsers =>
      $$LocalUsersTableTableManager(_db, _db.localUsers);
  $$CachedPlayersTableTableManager get cachedPlayers =>
      $$CachedPlayersTableTableManager(_db, _db.cachedPlayers);
  $$CachedPitchesTableTableManager get cachedPitches =>
      $$CachedPitchesTableTableManager(_db, _db.cachedPitches);
  $$FavoritesTableTableManager get favorites =>
      $$FavoritesTableTableManager(_db, _db.favorites);
}
