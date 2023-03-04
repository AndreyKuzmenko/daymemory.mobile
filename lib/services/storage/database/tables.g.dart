// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tables.dart';

// ignore_for_file: type=lint
class $DmNotebooksTable extends DmNotebooks
    with TableInfo<$DmNotebooksTable, DmNotebook> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmNotebooksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _modifiedDateMeta =
      const VerificationMeta('modifiedDate');
  @override
  late final GeneratedColumn<DateTime> modifiedDate = GeneratedColumn<DateTime>(
      'modified_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _orderRankMeta =
      const VerificationMeta('orderRank');
  @override
  late final GeneratedColumn<int> orderRank = GeneratedColumn<int>(
      'order_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _showInReviewMeta =
      const VerificationMeta('showInReview');
  @override
  late final GeneratedColumn<bool> showInReview =
      GeneratedColumn<bool>('show_in_review', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("show_in_review" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted =
      GeneratedColumn<bool>('is_deleted', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_deleted" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _isNewMeta = const VerificationMeta('isNew');
  @override
  late final GeneratedColumn<bool> isNew =
      GeneratedColumn<bool>('is_new', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_new" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _isChangedMeta =
      const VerificationMeta('isChanged');
  @override
  late final GeneratedColumn<bool> isChanged =
      GeneratedColumn<bool>('is_changed', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_changed" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _sortingTypeMeta =
      const VerificationMeta('sortingType');
  @override
  late final GeneratedColumn<int> sortingType = GeneratedColumn<int>(
      'sorting_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        createdDate,
        modifiedDate,
        orderRank,
        showInReview,
        isDeleted,
        isNew,
        isChanged,
        sortingType
      ];
  @override
  String get aliasedName => _alias ?? 'dm_notebooks';
  @override
  String get actualTableName => 'dm_notebooks';
  @override
  VerificationContext validateIntegrity(Insertable<DmNotebook> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('modified_date')) {
      context.handle(
          _modifiedDateMeta,
          modifiedDate.isAcceptableOrUnknown(
              data['modified_date']!, _modifiedDateMeta));
    } else if (isInserting) {
      context.missing(_modifiedDateMeta);
    }
    if (data.containsKey('order_rank')) {
      context.handle(_orderRankMeta,
          orderRank.isAcceptableOrUnknown(data['order_rank']!, _orderRankMeta));
    } else if (isInserting) {
      context.missing(_orderRankMeta);
    }
    if (data.containsKey('show_in_review')) {
      context.handle(
          _showInReviewMeta,
          showInReview.isAcceptableOrUnknown(
              data['show_in_review']!, _showInReviewMeta));
    } else if (isInserting) {
      context.missing(_showInReviewMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    if (data.containsKey('is_new')) {
      context.handle(
          _isNewMeta, isNew.isAcceptableOrUnknown(data['is_new']!, _isNewMeta));
    } else if (isInserting) {
      context.missing(_isNewMeta);
    }
    if (data.containsKey('is_changed')) {
      context.handle(_isChangedMeta,
          isChanged.isAcceptableOrUnknown(data['is_changed']!, _isChangedMeta));
    } else if (isInserting) {
      context.missing(_isChangedMeta);
    }
    if (data.containsKey('sorting_type')) {
      context.handle(
          _sortingTypeMeta,
          sortingType.isAcceptableOrUnknown(
              data['sorting_type']!, _sortingTypeMeta));
    } else if (isInserting) {
      context.missing(_sortingTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmNotebook map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmNotebook(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      modifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}modified_date'])!,
      orderRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_rank'])!,
      showInReview: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}show_in_review'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
      isNew: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_new'])!,
      isChanged: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_changed'])!,
      sortingType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sorting_type'])!,
    );
  }

  @override
  $DmNotebooksTable createAlias(String alias) {
    return $DmNotebooksTable(attachedDatabase, alias);
  }
}

class DmNotebook extends DataClass implements Insertable<DmNotebook> {
  final String id;
  final String title;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final int orderRank;
  final bool showInReview;
  final bool isDeleted;
  final bool isNew;
  final bool isChanged;
  final int sortingType;
  const DmNotebook(
      {required this.id,
      required this.title,
      required this.createdDate,
      required this.modifiedDate,
      required this.orderRank,
      required this.showInReview,
      required this.isDeleted,
      required this.isNew,
      required this.isChanged,
      required this.sortingType});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['modified_date'] = Variable<DateTime>(modifiedDate);
    map['order_rank'] = Variable<int>(orderRank);
    map['show_in_review'] = Variable<bool>(showInReview);
    map['is_deleted'] = Variable<bool>(isDeleted);
    map['is_new'] = Variable<bool>(isNew);
    map['is_changed'] = Variable<bool>(isChanged);
    map['sorting_type'] = Variable<int>(sortingType);
    return map;
  }

  DmNotebooksCompanion toCompanion(bool nullToAbsent) {
    return DmNotebooksCompanion(
      id: Value(id),
      title: Value(title),
      createdDate: Value(createdDate),
      modifiedDate: Value(modifiedDate),
      orderRank: Value(orderRank),
      showInReview: Value(showInReview),
      isDeleted: Value(isDeleted),
      isNew: Value(isNew),
      isChanged: Value(isChanged),
      sortingType: Value(sortingType),
    );
  }

  factory DmNotebook.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmNotebook(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      modifiedDate: serializer.fromJson<DateTime>(json['modifiedDate']),
      orderRank: serializer.fromJson<int>(json['orderRank']),
      showInReview: serializer.fromJson<bool>(json['showInReview']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
      isNew: serializer.fromJson<bool>(json['isNew']),
      isChanged: serializer.fromJson<bool>(json['isChanged']),
      sortingType: serializer.fromJson<int>(json['sortingType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'modifiedDate': serializer.toJson<DateTime>(modifiedDate),
      'orderRank': serializer.toJson<int>(orderRank),
      'showInReview': serializer.toJson<bool>(showInReview),
      'isDeleted': serializer.toJson<bool>(isDeleted),
      'isNew': serializer.toJson<bool>(isNew),
      'isChanged': serializer.toJson<bool>(isChanged),
      'sortingType': serializer.toJson<int>(sortingType),
    };
  }

  DmNotebook copyWith(
          {String? id,
          String? title,
          DateTime? createdDate,
          DateTime? modifiedDate,
          int? orderRank,
          bool? showInReview,
          bool? isDeleted,
          bool? isNew,
          bool? isChanged,
          int? sortingType}) =>
      DmNotebook(
        id: id ?? this.id,
        title: title ?? this.title,
        createdDate: createdDate ?? this.createdDate,
        modifiedDate: modifiedDate ?? this.modifiedDate,
        orderRank: orderRank ?? this.orderRank,
        showInReview: showInReview ?? this.showInReview,
        isDeleted: isDeleted ?? this.isDeleted,
        isNew: isNew ?? this.isNew,
        isChanged: isChanged ?? this.isChanged,
        sortingType: sortingType ?? this.sortingType,
      );
  @override
  String toString() {
    return (StringBuffer('DmNotebook(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('orderRank: $orderRank, ')
          ..write('showInReview: $showInReview, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('sortingType: $sortingType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, createdDate, modifiedDate,
      orderRank, showInReview, isDeleted, isNew, isChanged, sortingType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmNotebook &&
          other.id == this.id &&
          other.title == this.title &&
          other.createdDate == this.createdDate &&
          other.modifiedDate == this.modifiedDate &&
          other.orderRank == this.orderRank &&
          other.showInReview == this.showInReview &&
          other.isDeleted == this.isDeleted &&
          other.isNew == this.isNew &&
          other.isChanged == this.isChanged &&
          other.sortingType == this.sortingType);
}

class DmNotebooksCompanion extends UpdateCompanion<DmNotebook> {
  final Value<String> id;
  final Value<String> title;
  final Value<DateTime> createdDate;
  final Value<DateTime> modifiedDate;
  final Value<int> orderRank;
  final Value<bool> showInReview;
  final Value<bool> isDeleted;
  final Value<bool> isNew;
  final Value<bool> isChanged;
  final Value<int> sortingType;
  const DmNotebooksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.modifiedDate = const Value.absent(),
    this.orderRank = const Value.absent(),
    this.showInReview = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.isNew = const Value.absent(),
    this.isChanged = const Value.absent(),
    this.sortingType = const Value.absent(),
  });
  DmNotebooksCompanion.insert({
    required String id,
    required String title,
    required DateTime createdDate,
    required DateTime modifiedDate,
    required int orderRank,
    required bool showInReview,
    required bool isDeleted,
    required bool isNew,
    required bool isChanged,
    required int sortingType,
  })  : id = Value(id),
        title = Value(title),
        createdDate = Value(createdDate),
        modifiedDate = Value(modifiedDate),
        orderRank = Value(orderRank),
        showInReview = Value(showInReview),
        isDeleted = Value(isDeleted),
        isNew = Value(isNew),
        isChanged = Value(isChanged),
        sortingType = Value(sortingType);
  static Insertable<DmNotebook> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? modifiedDate,
    Expression<int>? orderRank,
    Expression<bool>? showInReview,
    Expression<bool>? isDeleted,
    Expression<bool>? isNew,
    Expression<bool>? isChanged,
    Expression<int>? sortingType,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (createdDate != null) 'created_date': createdDate,
      if (modifiedDate != null) 'modified_date': modifiedDate,
      if (orderRank != null) 'order_rank': orderRank,
      if (showInReview != null) 'show_in_review': showInReview,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (isNew != null) 'is_new': isNew,
      if (isChanged != null) 'is_changed': isChanged,
      if (sortingType != null) 'sorting_type': sortingType,
    });
  }

  DmNotebooksCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<DateTime>? createdDate,
      Value<DateTime>? modifiedDate,
      Value<int>? orderRank,
      Value<bool>? showInReview,
      Value<bool>? isDeleted,
      Value<bool>? isNew,
      Value<bool>? isChanged,
      Value<int>? sortingType}) {
    return DmNotebooksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      createdDate: createdDate ?? this.createdDate,
      modifiedDate: modifiedDate ?? this.modifiedDate,
      orderRank: orderRank ?? this.orderRank,
      showInReview: showInReview ?? this.showInReview,
      isDeleted: isDeleted ?? this.isDeleted,
      isNew: isNew ?? this.isNew,
      isChanged: isChanged ?? this.isChanged,
      sortingType: sortingType ?? this.sortingType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (modifiedDate.present) {
      map['modified_date'] = Variable<DateTime>(modifiedDate.value);
    }
    if (orderRank.present) {
      map['order_rank'] = Variable<int>(orderRank.value);
    }
    if (showInReview.present) {
      map['show_in_review'] = Variable<bool>(showInReview.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (isNew.present) {
      map['is_new'] = Variable<bool>(isNew.value);
    }
    if (isChanged.present) {
      map['is_changed'] = Variable<bool>(isChanged.value);
    }
    if (sortingType.present) {
      map['sorting_type'] = Variable<int>(sortingType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmNotebooksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('orderRank: $orderRank, ')
          ..write('showInReview: $showInReview, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('sortingType: $sortingType')
          ..write(')'))
        .toString();
  }
}

class $DmLocationsTable extends DmLocations
    with TableInfo<$DmLocationsTable, DmLocation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmLocationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
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
      'latitude', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, address, latitude, longitude, createdDate];
  @override
  String get aliasedName => _alias ?? 'dm_locations';
  @override
  String get actualTableName => 'dm_locations';
  @override
  VerificationContext validateIntegrity(Insertable<DmLocation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
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
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmLocation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmLocation(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude'])!,
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
    );
  }

  @override
  $DmLocationsTable createAlias(String alias) {
    return $DmLocationsTable(attachedDatabase, alias);
  }
}

class DmLocation extends DataClass implements Insertable<DmLocation> {
  final String id;
  final String address;
  final double latitude;
  final double longitude;
  final DateTime createdDate;
  const DmLocation(
      {required this.id,
      required this.address,
      required this.latitude,
      required this.longitude,
      required this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['address'] = Variable<String>(address);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    map['created_date'] = Variable<DateTime>(createdDate);
    return map;
  }

  DmLocationsCompanion toCompanion(bool nullToAbsent) {
    return DmLocationsCompanion(
      id: Value(id),
      address: Value(address),
      latitude: Value(latitude),
      longitude: Value(longitude),
      createdDate: Value(createdDate),
    );
  }

  factory DmLocation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmLocation(
      id: serializer.fromJson<String>(json['id']),
      address: serializer.fromJson<String>(json['address']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'address': serializer.toJson<String>(address),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'createdDate': serializer.toJson<DateTime>(createdDate),
    };
  }

  DmLocation copyWith(
          {String? id,
          String? address,
          double? latitude,
          double? longitude,
          DateTime? createdDate}) =>
      DmLocation(
        id: id ?? this.id,
        address: address ?? this.address,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        createdDate: createdDate ?? this.createdDate,
      );
  @override
  String toString() {
    return (StringBuffer('DmLocation(')
          ..write('id: $id, ')
          ..write('address: $address, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, address, latitude, longitude, createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmLocation &&
          other.id == this.id &&
          other.address == this.address &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.createdDate == this.createdDate);
}

class DmLocationsCompanion extends UpdateCompanion<DmLocation> {
  final Value<String> id;
  final Value<String> address;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<DateTime> createdDate;
  const DmLocationsCompanion({
    this.id = const Value.absent(),
    this.address = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.createdDate = const Value.absent(),
  });
  DmLocationsCompanion.insert({
    required String id,
    required String address,
    required double latitude,
    required double longitude,
    required DateTime createdDate,
  })  : id = Value(id),
        address = Value(address),
        latitude = Value(latitude),
        longitude = Value(longitude),
        createdDate = Value(createdDate);
  static Insertable<DmLocation> custom({
    Expression<String>? id,
    Expression<String>? address,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<DateTime>? createdDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (address != null) 'address': address,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (createdDate != null) 'created_date': createdDate,
    });
  }

  DmLocationsCompanion copyWith(
      {Value<String>? id,
      Value<String>? address,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<DateTime>? createdDate}) {
    return DmLocationsCompanion(
      id: id ?? this.id,
      address: address ?? this.address,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
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
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmLocationsCompanion(')
          ..write('id: $id, ')
          ..write('address: $address, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }
}

class $DmNotesTable extends DmNotes with TableInfo<$DmNotesTable, DmNote> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmNotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _notebookIdMeta =
      const VerificationMeta('notebookId');
  @override
  late final GeneratedColumn<String> notebookId = GeneratedColumn<String>(
      'notebook_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES dm_notebooks (id) ON DELETE NO ACTION'));
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _locationIdMeta =
      const VerificationMeta('locationId');
  @override
  late final GeneratedColumn<String> locationId = GeneratedColumn<String>(
      'location_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES dm_locations (id) ON DELETE NO ACTION'));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _modifiedDateMeta =
      const VerificationMeta('modifiedDate');
  @override
  late final GeneratedColumn<DateTime> modifiedDate = GeneratedColumn<DateTime>(
      'modified_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isNewMeta = const VerificationMeta('isNew');
  @override
  late final GeneratedColumn<bool> isNew =
      GeneratedColumn<bool>('is_new', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_new" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _isChangedMeta =
      const VerificationMeta('isChanged');
  @override
  late final GeneratedColumn<bool> isChanged =
      GeneratedColumn<bool>('is_changed', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_changed" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted =
      GeneratedColumn<bool>('is_deleted', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_deleted" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        notebookId,
        content,
        date,
        locationId,
        createdDate,
        modifiedDate,
        isNew,
        isChanged,
        isDeleted
      ];
  @override
  String get aliasedName => _alias ?? 'dm_notes';
  @override
  String get actualTableName => 'dm_notes';
  @override
  VerificationContext validateIntegrity(Insertable<DmNote> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('notebook_id')) {
      context.handle(
          _notebookIdMeta,
          notebookId.isAcceptableOrUnknown(
              data['notebook_id']!, _notebookIdMeta));
    } else if (isInserting) {
      context.missing(_notebookIdMeta);
    }
    if (data.containsKey('text')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['text']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('location_id')) {
      context.handle(
          _locationIdMeta,
          locationId.isAcceptableOrUnknown(
              data['location_id']!, _locationIdMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('modified_date')) {
      context.handle(
          _modifiedDateMeta,
          modifiedDate.isAcceptableOrUnknown(
              data['modified_date']!, _modifiedDateMeta));
    } else if (isInserting) {
      context.missing(_modifiedDateMeta);
    }
    if (data.containsKey('is_new')) {
      context.handle(
          _isNewMeta, isNew.isAcceptableOrUnknown(data['is_new']!, _isNewMeta));
    } else if (isInserting) {
      context.missing(_isNewMeta);
    }
    if (data.containsKey('is_changed')) {
      context.handle(_isChangedMeta,
          isChanged.isAcceptableOrUnknown(data['is_changed']!, _isChangedMeta));
    } else if (isInserting) {
      context.missing(_isChangedMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmNote map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmNote(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      notebookId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notebook_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      locationId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location_id']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      modifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}modified_date'])!,
      isNew: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_new'])!,
      isChanged: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_changed'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  $DmNotesTable createAlias(String alias) {
    return $DmNotesTable(attachedDatabase, alias);
  }
}

class DmNote extends DataClass implements Insertable<DmNote> {
  final String id;
  final String notebookId;
  final String content;
  final DateTime date;
  final String? locationId;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final bool isNew;
  final bool isChanged;
  final bool isDeleted;
  const DmNote(
      {required this.id,
      required this.notebookId,
      required this.content,
      required this.date,
      this.locationId,
      required this.createdDate,
      required this.modifiedDate,
      required this.isNew,
      required this.isChanged,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['notebook_id'] = Variable<String>(notebookId);
    map['text'] = Variable<String>(content);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || locationId != null) {
      map['location_id'] = Variable<String>(locationId);
    }
    map['created_date'] = Variable<DateTime>(createdDate);
    map['modified_date'] = Variable<DateTime>(modifiedDate);
    map['is_new'] = Variable<bool>(isNew);
    map['is_changed'] = Variable<bool>(isChanged);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  DmNotesCompanion toCompanion(bool nullToAbsent) {
    return DmNotesCompanion(
      id: Value(id),
      notebookId: Value(notebookId),
      content: Value(content),
      date: Value(date),
      locationId: locationId == null && nullToAbsent
          ? const Value.absent()
          : Value(locationId),
      createdDate: Value(createdDate),
      modifiedDate: Value(modifiedDate),
      isNew: Value(isNew),
      isChanged: Value(isChanged),
      isDeleted: Value(isDeleted),
    );
  }

  factory DmNote.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmNote(
      id: serializer.fromJson<String>(json['id']),
      notebookId: serializer.fromJson<String>(json['notebookId']),
      content: serializer.fromJson<String>(json['content']),
      date: serializer.fromJson<DateTime>(json['date']),
      locationId: serializer.fromJson<String?>(json['locationId']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      modifiedDate: serializer.fromJson<DateTime>(json['modifiedDate']),
      isNew: serializer.fromJson<bool>(json['isNew']),
      isChanged: serializer.fromJson<bool>(json['isChanged']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'notebookId': serializer.toJson<String>(notebookId),
      'content': serializer.toJson<String>(content),
      'date': serializer.toJson<DateTime>(date),
      'locationId': serializer.toJson<String?>(locationId),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'modifiedDate': serializer.toJson<DateTime>(modifiedDate),
      'isNew': serializer.toJson<bool>(isNew),
      'isChanged': serializer.toJson<bool>(isChanged),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  DmNote copyWith(
          {String? id,
          String? notebookId,
          String? content,
          DateTime? date,
          Value<String?> locationId = const Value.absent(),
          DateTime? createdDate,
          DateTime? modifiedDate,
          bool? isNew,
          bool? isChanged,
          bool? isDeleted}) =>
      DmNote(
        id: id ?? this.id,
        notebookId: notebookId ?? this.notebookId,
        content: content ?? this.content,
        date: date ?? this.date,
        locationId: locationId.present ? locationId.value : this.locationId,
        createdDate: createdDate ?? this.createdDate,
        modifiedDate: modifiedDate ?? this.modifiedDate,
        isNew: isNew ?? this.isNew,
        isChanged: isChanged ?? this.isChanged,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  @override
  String toString() {
    return (StringBuffer('DmNote(')
          ..write('id: $id, ')
          ..write('notebookId: $notebookId, ')
          ..write('content: $content, ')
          ..write('date: $date, ')
          ..write('locationId: $locationId, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, notebookId, content, date, locationId,
      createdDate, modifiedDate, isNew, isChanged, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmNote &&
          other.id == this.id &&
          other.notebookId == this.notebookId &&
          other.content == this.content &&
          other.date == this.date &&
          other.locationId == this.locationId &&
          other.createdDate == this.createdDate &&
          other.modifiedDate == this.modifiedDate &&
          other.isNew == this.isNew &&
          other.isChanged == this.isChanged &&
          other.isDeleted == this.isDeleted);
}

class DmNotesCompanion extends UpdateCompanion<DmNote> {
  final Value<String> id;
  final Value<String> notebookId;
  final Value<String> content;
  final Value<DateTime> date;
  final Value<String?> locationId;
  final Value<DateTime> createdDate;
  final Value<DateTime> modifiedDate;
  final Value<bool> isNew;
  final Value<bool> isChanged;
  final Value<bool> isDeleted;
  const DmNotesCompanion({
    this.id = const Value.absent(),
    this.notebookId = const Value.absent(),
    this.content = const Value.absent(),
    this.date = const Value.absent(),
    this.locationId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.modifiedDate = const Value.absent(),
    this.isNew = const Value.absent(),
    this.isChanged = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  DmNotesCompanion.insert({
    required String id,
    required String notebookId,
    required String content,
    required DateTime date,
    this.locationId = const Value.absent(),
    required DateTime createdDate,
    required DateTime modifiedDate,
    required bool isNew,
    required bool isChanged,
    required bool isDeleted,
  })  : id = Value(id),
        notebookId = Value(notebookId),
        content = Value(content),
        date = Value(date),
        createdDate = Value(createdDate),
        modifiedDate = Value(modifiedDate),
        isNew = Value(isNew),
        isChanged = Value(isChanged),
        isDeleted = Value(isDeleted);
  static Insertable<DmNote> custom({
    Expression<String>? id,
    Expression<String>? notebookId,
    Expression<String>? content,
    Expression<DateTime>? date,
    Expression<String>? locationId,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? modifiedDate,
    Expression<bool>? isNew,
    Expression<bool>? isChanged,
    Expression<bool>? isDeleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (notebookId != null) 'notebook_id': notebookId,
      if (content != null) 'text': content,
      if (date != null) 'date': date,
      if (locationId != null) 'location_id': locationId,
      if (createdDate != null) 'created_date': createdDate,
      if (modifiedDate != null) 'modified_date': modifiedDate,
      if (isNew != null) 'is_new': isNew,
      if (isChanged != null) 'is_changed': isChanged,
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  DmNotesCompanion copyWith(
      {Value<String>? id,
      Value<String>? notebookId,
      Value<String>? content,
      Value<DateTime>? date,
      Value<String?>? locationId,
      Value<DateTime>? createdDate,
      Value<DateTime>? modifiedDate,
      Value<bool>? isNew,
      Value<bool>? isChanged,
      Value<bool>? isDeleted}) {
    return DmNotesCompanion(
      id: id ?? this.id,
      notebookId: notebookId ?? this.notebookId,
      content: content ?? this.content,
      date: date ?? this.date,
      locationId: locationId ?? this.locationId,
      createdDate: createdDate ?? this.createdDate,
      modifiedDate: modifiedDate ?? this.modifiedDate,
      isNew: isNew ?? this.isNew,
      isChanged: isChanged ?? this.isChanged,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (notebookId.present) {
      map['notebook_id'] = Variable<String>(notebookId.value);
    }
    if (content.present) {
      map['text'] = Variable<String>(content.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (locationId.present) {
      map['location_id'] = Variable<String>(locationId.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (modifiedDate.present) {
      map['modified_date'] = Variable<DateTime>(modifiedDate.value);
    }
    if (isNew.present) {
      map['is_new'] = Variable<bool>(isNew.value);
    }
    if (isChanged.present) {
      map['is_changed'] = Variable<bool>(isChanged.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmNotesCompanion(')
          ..write('id: $id, ')
          ..write('notebookId: $notebookId, ')
          ..write('content: $content, ')
          ..write('date: $date, ')
          ..write('locationId: $locationId, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }
}

class $DmTagsTable extends DmTags with TableInfo<$DmTagsTable, DmTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmTagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderRankMeta =
      const VerificationMeta('orderRank');
  @override
  late final GeneratedColumn<int> orderRank = GeneratedColumn<int>(
      'order_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _modifiedDateMeta =
      const VerificationMeta('modifiedDate');
  @override
  late final GeneratedColumn<DateTime> modifiedDate = GeneratedColumn<DateTime>(
      'modified_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isNewMeta = const VerificationMeta('isNew');
  @override
  late final GeneratedColumn<bool> isNew =
      GeneratedColumn<bool>('is_new', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_new" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _isChangedMeta =
      const VerificationMeta('isChanged');
  @override
  late final GeneratedColumn<bool> isChanged =
      GeneratedColumn<bool>('is_changed', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_changed" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted =
      GeneratedColumn<bool>('is_deleted', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_deleted" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        content,
        orderRank,
        createdDate,
        modifiedDate,
        isNew,
        isChanged,
        isDeleted
      ];
  @override
  String get aliasedName => _alias ?? 'dm_tags';
  @override
  String get actualTableName => 'dm_tags';
  @override
  VerificationContext validateIntegrity(Insertable<DmTag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('text')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['text']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('order_rank')) {
      context.handle(_orderRankMeta,
          orderRank.isAcceptableOrUnknown(data['order_rank']!, _orderRankMeta));
    } else if (isInserting) {
      context.missing(_orderRankMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('modified_date')) {
      context.handle(
          _modifiedDateMeta,
          modifiedDate.isAcceptableOrUnknown(
              data['modified_date']!, _modifiedDateMeta));
    } else if (isInserting) {
      context.missing(_modifiedDateMeta);
    }
    if (data.containsKey('is_new')) {
      context.handle(
          _isNewMeta, isNew.isAcceptableOrUnknown(data['is_new']!, _isNewMeta));
    } else if (isInserting) {
      context.missing(_isNewMeta);
    }
    if (data.containsKey('is_changed')) {
      context.handle(_isChangedMeta,
          isChanged.isAcceptableOrUnknown(data['is_changed']!, _isChangedMeta));
    } else if (isInserting) {
      context.missing(_isChangedMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmTag(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text'])!,
      orderRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_rank'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      modifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}modified_date'])!,
      isNew: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_new'])!,
      isChanged: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_changed'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  $DmTagsTable createAlias(String alias) {
    return $DmTagsTable(attachedDatabase, alias);
  }
}

class DmTag extends DataClass implements Insertable<DmTag> {
  final String id;
  final String content;
  final int orderRank;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final bool isNew;
  final bool isChanged;
  final bool isDeleted;
  const DmTag(
      {required this.id,
      required this.content,
      required this.orderRank,
      required this.createdDate,
      required this.modifiedDate,
      required this.isNew,
      required this.isChanged,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['text'] = Variable<String>(content);
    map['order_rank'] = Variable<int>(orderRank);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['modified_date'] = Variable<DateTime>(modifiedDate);
    map['is_new'] = Variable<bool>(isNew);
    map['is_changed'] = Variable<bool>(isChanged);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  DmTagsCompanion toCompanion(bool nullToAbsent) {
    return DmTagsCompanion(
      id: Value(id),
      content: Value(content),
      orderRank: Value(orderRank),
      createdDate: Value(createdDate),
      modifiedDate: Value(modifiedDate),
      isNew: Value(isNew),
      isChanged: Value(isChanged),
      isDeleted: Value(isDeleted),
    );
  }

  factory DmTag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmTag(
      id: serializer.fromJson<String>(json['id']),
      content: serializer.fromJson<String>(json['content']),
      orderRank: serializer.fromJson<int>(json['orderRank']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      modifiedDate: serializer.fromJson<DateTime>(json['modifiedDate']),
      isNew: serializer.fromJson<bool>(json['isNew']),
      isChanged: serializer.fromJson<bool>(json['isChanged']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'content': serializer.toJson<String>(content),
      'orderRank': serializer.toJson<int>(orderRank),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'modifiedDate': serializer.toJson<DateTime>(modifiedDate),
      'isNew': serializer.toJson<bool>(isNew),
      'isChanged': serializer.toJson<bool>(isChanged),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  DmTag copyWith(
          {String? id,
          String? content,
          int? orderRank,
          DateTime? createdDate,
          DateTime? modifiedDate,
          bool? isNew,
          bool? isChanged,
          bool? isDeleted}) =>
      DmTag(
        id: id ?? this.id,
        content: content ?? this.content,
        orderRank: orderRank ?? this.orderRank,
        createdDate: createdDate ?? this.createdDate,
        modifiedDate: modifiedDate ?? this.modifiedDate,
        isNew: isNew ?? this.isNew,
        isChanged: isChanged ?? this.isChanged,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  @override
  String toString() {
    return (StringBuffer('DmTag(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, content, orderRank, createdDate,
      modifiedDate, isNew, isChanged, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmTag &&
          other.id == this.id &&
          other.content == this.content &&
          other.orderRank == this.orderRank &&
          other.createdDate == this.createdDate &&
          other.modifiedDate == this.modifiedDate &&
          other.isNew == this.isNew &&
          other.isChanged == this.isChanged &&
          other.isDeleted == this.isDeleted);
}

class DmTagsCompanion extends UpdateCompanion<DmTag> {
  final Value<String> id;
  final Value<String> content;
  final Value<int> orderRank;
  final Value<DateTime> createdDate;
  final Value<DateTime> modifiedDate;
  final Value<bool> isNew;
  final Value<bool> isChanged;
  final Value<bool> isDeleted;
  const DmTagsCompanion({
    this.id = const Value.absent(),
    this.content = const Value.absent(),
    this.orderRank = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.modifiedDate = const Value.absent(),
    this.isNew = const Value.absent(),
    this.isChanged = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  DmTagsCompanion.insert({
    required String id,
    required String content,
    required int orderRank,
    required DateTime createdDate,
    required DateTime modifiedDate,
    required bool isNew,
    required bool isChanged,
    required bool isDeleted,
  })  : id = Value(id),
        content = Value(content),
        orderRank = Value(orderRank),
        createdDate = Value(createdDate),
        modifiedDate = Value(modifiedDate),
        isNew = Value(isNew),
        isChanged = Value(isChanged),
        isDeleted = Value(isDeleted);
  static Insertable<DmTag> custom({
    Expression<String>? id,
    Expression<String>? content,
    Expression<int>? orderRank,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? modifiedDate,
    Expression<bool>? isNew,
    Expression<bool>? isChanged,
    Expression<bool>? isDeleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (content != null) 'text': content,
      if (orderRank != null) 'order_rank': orderRank,
      if (createdDate != null) 'created_date': createdDate,
      if (modifiedDate != null) 'modified_date': modifiedDate,
      if (isNew != null) 'is_new': isNew,
      if (isChanged != null) 'is_changed': isChanged,
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  DmTagsCompanion copyWith(
      {Value<String>? id,
      Value<String>? content,
      Value<int>? orderRank,
      Value<DateTime>? createdDate,
      Value<DateTime>? modifiedDate,
      Value<bool>? isNew,
      Value<bool>? isChanged,
      Value<bool>? isDeleted}) {
    return DmTagsCompanion(
      id: id ?? this.id,
      content: content ?? this.content,
      orderRank: orderRank ?? this.orderRank,
      createdDate: createdDate ?? this.createdDate,
      modifiedDate: modifiedDate ?? this.modifiedDate,
      isNew: isNew ?? this.isNew,
      isChanged: isChanged ?? this.isChanged,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (content.present) {
      map['text'] = Variable<String>(content.value);
    }
    if (orderRank.present) {
      map['order_rank'] = Variable<int>(orderRank.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (modifiedDate.present) {
      map['modified_date'] = Variable<DateTime>(modifiedDate.value);
    }
    if (isNew.present) {
      map['is_new'] = Variable<bool>(isNew.value);
    }
    if (isChanged.present) {
      map['is_changed'] = Variable<bool>(isChanged.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmTagsCompanion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }
}

class $DmQuestionListsTable extends DmQuestionLists
    with TableInfo<$DmQuestionListsTable, DmQuestionList> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmQuestionListsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderRankMeta =
      const VerificationMeta('orderRank');
  @override
  late final GeneratedColumn<int> orderRank = GeneratedColumn<int>(
      'order_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _modifiedDateMeta =
      const VerificationMeta('modifiedDate');
  @override
  late final GeneratedColumn<DateTime> modifiedDate = GeneratedColumn<DateTime>(
      'modified_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isChangedMeta =
      const VerificationMeta('isChanged');
  @override
  late final GeneratedColumn<bool> isChanged =
      GeneratedColumn<bool>('is_changed', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_changed" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted =
      GeneratedColumn<bool>('is_deleted', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_deleted" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
  @override
  List<GeneratedColumn> get $columns =>
      [id, content, orderRank, createdDate, modifiedDate, isChanged, isDeleted];
  @override
  String get aliasedName => _alias ?? 'dm_question_lists';
  @override
  String get actualTableName => 'dm_question_lists';
  @override
  VerificationContext validateIntegrity(Insertable<DmQuestionList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('text')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['text']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('order_rank')) {
      context.handle(_orderRankMeta,
          orderRank.isAcceptableOrUnknown(data['order_rank']!, _orderRankMeta));
    } else if (isInserting) {
      context.missing(_orderRankMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('modified_date')) {
      context.handle(
          _modifiedDateMeta,
          modifiedDate.isAcceptableOrUnknown(
              data['modified_date']!, _modifiedDateMeta));
    } else if (isInserting) {
      context.missing(_modifiedDateMeta);
    }
    if (data.containsKey('is_changed')) {
      context.handle(_isChangedMeta,
          isChanged.isAcceptableOrUnknown(data['is_changed']!, _isChangedMeta));
    } else if (isInserting) {
      context.missing(_isChangedMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmQuestionList map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmQuestionList(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text'])!,
      orderRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_rank'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      modifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}modified_date'])!,
      isChanged: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_changed'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  $DmQuestionListsTable createAlias(String alias) {
    return $DmQuestionListsTable(attachedDatabase, alias);
  }
}

class DmQuestionList extends DataClass implements Insertable<DmQuestionList> {
  final String id;
  final String content;
  final int orderRank;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final bool isChanged;
  final bool isDeleted;
  const DmQuestionList(
      {required this.id,
      required this.content,
      required this.orderRank,
      required this.createdDate,
      required this.modifiedDate,
      required this.isChanged,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['text'] = Variable<String>(content);
    map['order_rank'] = Variable<int>(orderRank);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['modified_date'] = Variable<DateTime>(modifiedDate);
    map['is_changed'] = Variable<bool>(isChanged);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  DmQuestionListsCompanion toCompanion(bool nullToAbsent) {
    return DmQuestionListsCompanion(
      id: Value(id),
      content: Value(content),
      orderRank: Value(orderRank),
      createdDate: Value(createdDate),
      modifiedDate: Value(modifiedDate),
      isChanged: Value(isChanged),
      isDeleted: Value(isDeleted),
    );
  }

  factory DmQuestionList.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmQuestionList(
      id: serializer.fromJson<String>(json['id']),
      content: serializer.fromJson<String>(json['content']),
      orderRank: serializer.fromJson<int>(json['orderRank']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      modifiedDate: serializer.fromJson<DateTime>(json['modifiedDate']),
      isChanged: serializer.fromJson<bool>(json['isChanged']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'content': serializer.toJson<String>(content),
      'orderRank': serializer.toJson<int>(orderRank),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'modifiedDate': serializer.toJson<DateTime>(modifiedDate),
      'isChanged': serializer.toJson<bool>(isChanged),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  DmQuestionList copyWith(
          {String? id,
          String? content,
          int? orderRank,
          DateTime? createdDate,
          DateTime? modifiedDate,
          bool? isChanged,
          bool? isDeleted}) =>
      DmQuestionList(
        id: id ?? this.id,
        content: content ?? this.content,
        orderRank: orderRank ?? this.orderRank,
        createdDate: createdDate ?? this.createdDate,
        modifiedDate: modifiedDate ?? this.modifiedDate,
        isChanged: isChanged ?? this.isChanged,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  @override
  String toString() {
    return (StringBuffer('DmQuestionList(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, content, orderRank, createdDate, modifiedDate, isChanged, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmQuestionList &&
          other.id == this.id &&
          other.content == this.content &&
          other.orderRank == this.orderRank &&
          other.createdDate == this.createdDate &&
          other.modifiedDate == this.modifiedDate &&
          other.isChanged == this.isChanged &&
          other.isDeleted == this.isDeleted);
}

class DmQuestionListsCompanion extends UpdateCompanion<DmQuestionList> {
  final Value<String> id;
  final Value<String> content;
  final Value<int> orderRank;
  final Value<DateTime> createdDate;
  final Value<DateTime> modifiedDate;
  final Value<bool> isChanged;
  final Value<bool> isDeleted;
  const DmQuestionListsCompanion({
    this.id = const Value.absent(),
    this.content = const Value.absent(),
    this.orderRank = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.modifiedDate = const Value.absent(),
    this.isChanged = const Value.absent(),
    this.isDeleted = const Value.absent(),
  });
  DmQuestionListsCompanion.insert({
    required String id,
    required String content,
    required int orderRank,
    required DateTime createdDate,
    required DateTime modifiedDate,
    required bool isChanged,
    required bool isDeleted,
  })  : id = Value(id),
        content = Value(content),
        orderRank = Value(orderRank),
        createdDate = Value(createdDate),
        modifiedDate = Value(modifiedDate),
        isChanged = Value(isChanged),
        isDeleted = Value(isDeleted);
  static Insertable<DmQuestionList> custom({
    Expression<String>? id,
    Expression<String>? content,
    Expression<int>? orderRank,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? modifiedDate,
    Expression<bool>? isChanged,
    Expression<bool>? isDeleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (content != null) 'text': content,
      if (orderRank != null) 'order_rank': orderRank,
      if (createdDate != null) 'created_date': createdDate,
      if (modifiedDate != null) 'modified_date': modifiedDate,
      if (isChanged != null) 'is_changed': isChanged,
      if (isDeleted != null) 'is_deleted': isDeleted,
    });
  }

  DmQuestionListsCompanion copyWith(
      {Value<String>? id,
      Value<String>? content,
      Value<int>? orderRank,
      Value<DateTime>? createdDate,
      Value<DateTime>? modifiedDate,
      Value<bool>? isChanged,
      Value<bool>? isDeleted}) {
    return DmQuestionListsCompanion(
      id: id ?? this.id,
      content: content ?? this.content,
      orderRank: orderRank ?? this.orderRank,
      createdDate: createdDate ?? this.createdDate,
      modifiedDate: modifiedDate ?? this.modifiedDate,
      isChanged: isChanged ?? this.isChanged,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (content.present) {
      map['text'] = Variable<String>(content.value);
    }
    if (orderRank.present) {
      map['order_rank'] = Variable<int>(orderRank.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (modifiedDate.present) {
      map['modified_date'] = Variable<DateTime>(modifiedDate.value);
    }
    if (isChanged.present) {
      map['is_changed'] = Variable<bool>(isChanged.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmQuestionListsCompanion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }
}

class $DmQuestionsTable extends DmQuestions
    with TableInfo<$DmQuestionsTable, DmQuestion> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmQuestionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderRankMeta =
      const VerificationMeta('orderRank');
  @override
  late final GeneratedColumn<int> orderRank = GeneratedColumn<int>(
      'order_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _questionListMeta =
      const VerificationMeta('questionList');
  @override
  late final GeneratedColumn<String> questionList = GeneratedColumn<String>(
      'question_list', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES dm_question_lists (id) ON DELETE NO ACTION'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, content, orderRank, createdDate, questionList];
  @override
  String get aliasedName => _alias ?? 'dm_questions';
  @override
  String get actualTableName => 'dm_questions';
  @override
  VerificationContext validateIntegrity(Insertable<DmQuestion> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('text')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['text']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('order_rank')) {
      context.handle(_orderRankMeta,
          orderRank.isAcceptableOrUnknown(data['order_rank']!, _orderRankMeta));
    } else if (isInserting) {
      context.missing(_orderRankMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('question_list')) {
      context.handle(
          _questionListMeta,
          questionList.isAcceptableOrUnknown(
              data['question_list']!, _questionListMeta));
    } else if (isInserting) {
      context.missing(_questionListMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmQuestion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmQuestion(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text'])!,
      orderRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_rank'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      questionList: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question_list'])!,
    );
  }

  @override
  $DmQuestionsTable createAlias(String alias) {
    return $DmQuestionsTable(attachedDatabase, alias);
  }
}

class DmQuestion extends DataClass implements Insertable<DmQuestion> {
  final String id;
  final String content;
  final int orderRank;
  final DateTime createdDate;
  final String questionList;
  const DmQuestion(
      {required this.id,
      required this.content,
      required this.orderRank,
      required this.createdDate,
      required this.questionList});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['text'] = Variable<String>(content);
    map['order_rank'] = Variable<int>(orderRank);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['question_list'] = Variable<String>(questionList);
    return map;
  }

  DmQuestionsCompanion toCompanion(bool nullToAbsent) {
    return DmQuestionsCompanion(
      id: Value(id),
      content: Value(content),
      orderRank: Value(orderRank),
      createdDate: Value(createdDate),
      questionList: Value(questionList),
    );
  }

  factory DmQuestion.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmQuestion(
      id: serializer.fromJson<String>(json['id']),
      content: serializer.fromJson<String>(json['content']),
      orderRank: serializer.fromJson<int>(json['orderRank']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      questionList: serializer.fromJson<String>(json['questionList']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'content': serializer.toJson<String>(content),
      'orderRank': serializer.toJson<int>(orderRank),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'questionList': serializer.toJson<String>(questionList),
    };
  }

  DmQuestion copyWith(
          {String? id,
          String? content,
          int? orderRank,
          DateTime? createdDate,
          String? questionList}) =>
      DmQuestion(
        id: id ?? this.id,
        content: content ?? this.content,
        orderRank: orderRank ?? this.orderRank,
        createdDate: createdDate ?? this.createdDate,
        questionList: questionList ?? this.questionList,
      );
  @override
  String toString() {
    return (StringBuffer('DmQuestion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('questionList: $questionList')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, content, orderRank, createdDate, questionList);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmQuestion &&
          other.id == this.id &&
          other.content == this.content &&
          other.orderRank == this.orderRank &&
          other.createdDate == this.createdDate &&
          other.questionList == this.questionList);
}

class DmQuestionsCompanion extends UpdateCompanion<DmQuestion> {
  final Value<String> id;
  final Value<String> content;
  final Value<int> orderRank;
  final Value<DateTime> createdDate;
  final Value<String> questionList;
  const DmQuestionsCompanion({
    this.id = const Value.absent(),
    this.content = const Value.absent(),
    this.orderRank = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.questionList = const Value.absent(),
  });
  DmQuestionsCompanion.insert({
    required String id,
    required String content,
    required int orderRank,
    required DateTime createdDate,
    required String questionList,
  })  : id = Value(id),
        content = Value(content),
        orderRank = Value(orderRank),
        createdDate = Value(createdDate),
        questionList = Value(questionList);
  static Insertable<DmQuestion> custom({
    Expression<String>? id,
    Expression<String>? content,
    Expression<int>? orderRank,
    Expression<DateTime>? createdDate,
    Expression<String>? questionList,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (content != null) 'text': content,
      if (orderRank != null) 'order_rank': orderRank,
      if (createdDate != null) 'created_date': createdDate,
      if (questionList != null) 'question_list': questionList,
    });
  }

  DmQuestionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? content,
      Value<int>? orderRank,
      Value<DateTime>? createdDate,
      Value<String>? questionList}) {
    return DmQuestionsCompanion(
      id: id ?? this.id,
      content: content ?? this.content,
      orderRank: orderRank ?? this.orderRank,
      createdDate: createdDate ?? this.createdDate,
      questionList: questionList ?? this.questionList,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (content.present) {
      map['text'] = Variable<String>(content.value);
    }
    if (orderRank.present) {
      map['order_rank'] = Variable<int>(orderRank.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (questionList.present) {
      map['question_list'] = Variable<String>(questionList.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmQuestionsCompanion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('questionList: $questionList')
          ..write(')'))
        .toString();
  }
}

class $DmFilesTable extends DmFiles with TableInfo<$DmFilesTable, DmFile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmFilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fileNameMeta =
      const VerificationMeta('fileName');
  @override
  late final GeneratedColumn<String> fileName = GeneratedColumn<String>(
      'file_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fileSizeMeta =
      const VerificationMeta('fileSize');
  @override
  late final GeneratedColumn<int> fileSize = GeneratedColumn<int>(
      'file_size', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _fileTypeMeta =
      const VerificationMeta('fileType');
  @override
  late final GeneratedColumn<int> fileType = GeneratedColumn<int>(
      'file_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<int> width = GeneratedColumn<int>(
      'width', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _noteIdMeta = const VerificationMeta('noteId');
  @override
  late final GeneratedColumn<String> noteId = GeneratedColumn<String>(
      'note_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES dm_notes (id) ON DELETE NO ACTION'));
  static const VerificationMeta _orderRankMeta =
      const VerificationMeta('orderRank');
  @override
  late final GeneratedColumn<int> orderRank = GeneratedColumn<int>(
      'order_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fileName,
        fileSize,
        fileType,
        width,
        height,
        noteId,
        orderRank,
        createdDate
      ];
  @override
  String get aliasedName => _alias ?? 'dm_files';
  @override
  String get actualTableName => 'dm_files';
  @override
  VerificationContext validateIntegrity(Insertable<DmFile> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('file_name')) {
      context.handle(_fileNameMeta,
          fileName.isAcceptableOrUnknown(data['file_name']!, _fileNameMeta));
    } else if (isInserting) {
      context.missing(_fileNameMeta);
    }
    if (data.containsKey('file_size')) {
      context.handle(_fileSizeMeta,
          fileSize.isAcceptableOrUnknown(data['file_size']!, _fileSizeMeta));
    } else if (isInserting) {
      context.missing(_fileSizeMeta);
    }
    if (data.containsKey('file_type')) {
      context.handle(_fileTypeMeta,
          fileType.isAcceptableOrUnknown(data['file_type']!, _fileTypeMeta));
    } else if (isInserting) {
      context.missing(_fileTypeMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    } else if (isInserting) {
      context.missing(_widthMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('note_id')) {
      context.handle(_noteIdMeta,
          noteId.isAcceptableOrUnknown(data['note_id']!, _noteIdMeta));
    }
    if (data.containsKey('order_rank')) {
      context.handle(_orderRankMeta,
          orderRank.isAcceptableOrUnknown(data['order_rank']!, _orderRankMeta));
    } else if (isInserting) {
      context.missing(_orderRankMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmFile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmFile(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      fileName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}file_name'])!,
      fileSize: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}file_size'])!,
      fileType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}file_type'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}width'])!,
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height'])!,
      noteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note_id']),
      orderRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_rank'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
    );
  }

  @override
  $DmFilesTable createAlias(String alias) {
    return $DmFilesTable(attachedDatabase, alias);
  }
}

class DmFile extends DataClass implements Insertable<DmFile> {
  final String id;
  final String fileName;
  final int fileSize;
  final int fileType;
  final int width;
  final int height;
  final String? noteId;
  final int orderRank;
  final DateTime createdDate;
  const DmFile(
      {required this.id,
      required this.fileName,
      required this.fileSize,
      required this.fileType,
      required this.width,
      required this.height,
      this.noteId,
      required this.orderRank,
      required this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['file_name'] = Variable<String>(fileName);
    map['file_size'] = Variable<int>(fileSize);
    map['file_type'] = Variable<int>(fileType);
    map['width'] = Variable<int>(width);
    map['height'] = Variable<int>(height);
    if (!nullToAbsent || noteId != null) {
      map['note_id'] = Variable<String>(noteId);
    }
    map['order_rank'] = Variable<int>(orderRank);
    map['created_date'] = Variable<DateTime>(createdDate);
    return map;
  }

  DmFilesCompanion toCompanion(bool nullToAbsent) {
    return DmFilesCompanion(
      id: Value(id),
      fileName: Value(fileName),
      fileSize: Value(fileSize),
      fileType: Value(fileType),
      width: Value(width),
      height: Value(height),
      noteId:
          noteId == null && nullToAbsent ? const Value.absent() : Value(noteId),
      orderRank: Value(orderRank),
      createdDate: Value(createdDate),
    );
  }

  factory DmFile.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmFile(
      id: serializer.fromJson<String>(json['id']),
      fileName: serializer.fromJson<String>(json['fileName']),
      fileSize: serializer.fromJson<int>(json['fileSize']),
      fileType: serializer.fromJson<int>(json['fileType']),
      width: serializer.fromJson<int>(json['width']),
      height: serializer.fromJson<int>(json['height']),
      noteId: serializer.fromJson<String?>(json['noteId']),
      orderRank: serializer.fromJson<int>(json['orderRank']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'fileName': serializer.toJson<String>(fileName),
      'fileSize': serializer.toJson<int>(fileSize),
      'fileType': serializer.toJson<int>(fileType),
      'width': serializer.toJson<int>(width),
      'height': serializer.toJson<int>(height),
      'noteId': serializer.toJson<String?>(noteId),
      'orderRank': serializer.toJson<int>(orderRank),
      'createdDate': serializer.toJson<DateTime>(createdDate),
    };
  }

  DmFile copyWith(
          {String? id,
          String? fileName,
          int? fileSize,
          int? fileType,
          int? width,
          int? height,
          Value<String?> noteId = const Value.absent(),
          int? orderRank,
          DateTime? createdDate}) =>
      DmFile(
        id: id ?? this.id,
        fileName: fileName ?? this.fileName,
        fileSize: fileSize ?? this.fileSize,
        fileType: fileType ?? this.fileType,
        width: width ?? this.width,
        height: height ?? this.height,
        noteId: noteId.present ? noteId.value : this.noteId,
        orderRank: orderRank ?? this.orderRank,
        createdDate: createdDate ?? this.createdDate,
      );
  @override
  String toString() {
    return (StringBuffer('DmFile(')
          ..write('id: $id, ')
          ..write('fileName: $fileName, ')
          ..write('fileSize: $fileSize, ')
          ..write('fileType: $fileType, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('noteId: $noteId, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, fileName, fileSize, fileType, width,
      height, noteId, orderRank, createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmFile &&
          other.id == this.id &&
          other.fileName == this.fileName &&
          other.fileSize == this.fileSize &&
          other.fileType == this.fileType &&
          other.width == this.width &&
          other.height == this.height &&
          other.noteId == this.noteId &&
          other.orderRank == this.orderRank &&
          other.createdDate == this.createdDate);
}

class DmFilesCompanion extends UpdateCompanion<DmFile> {
  final Value<String> id;
  final Value<String> fileName;
  final Value<int> fileSize;
  final Value<int> fileType;
  final Value<int> width;
  final Value<int> height;
  final Value<String?> noteId;
  final Value<int> orderRank;
  final Value<DateTime> createdDate;
  const DmFilesCompanion({
    this.id = const Value.absent(),
    this.fileName = const Value.absent(),
    this.fileSize = const Value.absent(),
    this.fileType = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.noteId = const Value.absent(),
    this.orderRank = const Value.absent(),
    this.createdDate = const Value.absent(),
  });
  DmFilesCompanion.insert({
    required String id,
    required String fileName,
    required int fileSize,
    required int fileType,
    required int width,
    required int height,
    this.noteId = const Value.absent(),
    required int orderRank,
    required DateTime createdDate,
  })  : id = Value(id),
        fileName = Value(fileName),
        fileSize = Value(fileSize),
        fileType = Value(fileType),
        width = Value(width),
        height = Value(height),
        orderRank = Value(orderRank),
        createdDate = Value(createdDate);
  static Insertable<DmFile> custom({
    Expression<String>? id,
    Expression<String>? fileName,
    Expression<int>? fileSize,
    Expression<int>? fileType,
    Expression<int>? width,
    Expression<int>? height,
    Expression<String>? noteId,
    Expression<int>? orderRank,
    Expression<DateTime>? createdDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fileName != null) 'file_name': fileName,
      if (fileSize != null) 'file_size': fileSize,
      if (fileType != null) 'file_type': fileType,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (noteId != null) 'note_id': noteId,
      if (orderRank != null) 'order_rank': orderRank,
      if (createdDate != null) 'created_date': createdDate,
    });
  }

  DmFilesCompanion copyWith(
      {Value<String>? id,
      Value<String>? fileName,
      Value<int>? fileSize,
      Value<int>? fileType,
      Value<int>? width,
      Value<int>? height,
      Value<String?>? noteId,
      Value<int>? orderRank,
      Value<DateTime>? createdDate}) {
    return DmFilesCompanion(
      id: id ?? this.id,
      fileName: fileName ?? this.fileName,
      fileSize: fileSize ?? this.fileSize,
      fileType: fileType ?? this.fileType,
      width: width ?? this.width,
      height: height ?? this.height,
      noteId: noteId ?? this.noteId,
      orderRank: orderRank ?? this.orderRank,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (fileName.present) {
      map['file_name'] = Variable<String>(fileName.value);
    }
    if (fileSize.present) {
      map['file_size'] = Variable<int>(fileSize.value);
    }
    if (fileType.present) {
      map['file_type'] = Variable<int>(fileType.value);
    }
    if (width.present) {
      map['width'] = Variable<int>(width.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (noteId.present) {
      map['note_id'] = Variable<String>(noteId.value);
    }
    if (orderRank.present) {
      map['order_rank'] = Variable<int>(orderRank.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmFilesCompanion(')
          ..write('id: $id, ')
          ..write('fileName: $fileName, ')
          ..write('fileSize: $fileSize, ')
          ..write('fileType: $fileType, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('noteId: $noteId, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }
}

abstract class _$DayMemoryDb extends GeneratedDatabase {
  _$DayMemoryDb(QueryExecutor e) : super(e);
  late final $DmNotebooksTable dmNotebooks = $DmNotebooksTable(this);
  late final $DmLocationsTable dmLocations = $DmLocationsTable(this);
  late final $DmNotesTable dmNotes = $DmNotesTable(this);
  late final $DmTagsTable dmTags = $DmTagsTable(this);
  late final $DmQuestionListsTable dmQuestionLists =
      $DmQuestionListsTable(this);
  late final $DmQuestionsTable dmQuestions = $DmQuestionsTable(this);
  late final $DmFilesTable dmFiles = $DmFilesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        dmNotebooks,
        dmLocations,
        dmNotes,
        dmTags,
        dmQuestionLists,
        dmQuestions,
        dmFiles
      ];
}
