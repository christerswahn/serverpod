/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../../long_identifiers/deep_includes/organization_with_long_table_name.dart'
    as _i2;

abstract class PersonWithLongTableName
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PersonWithLongTableName._({
    this.id,
    required this.name,
    this.organizationId,
    this.organization,
  }) : _cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id = null;

  factory PersonWithLongTableName({
    int? id,
    required String name,
    int? organizationId,
    _i2.OrganizationWithLongTableName? organization,
  }) = _PersonWithLongTableNameImpl;

  factory PersonWithLongTableName.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return PersonWithLongTableNameImplicit._(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      organizationId: jsonSerialization['organizationId'] as int?,
      organization: jsonSerialization['organization'] == null
          ? null
          : _i2.OrganizationWithLongTableName.fromJson(
              (jsonSerialization['organization'] as Map<String, dynamic>)),
      $_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id:
          jsonSerialization[
                  '_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id']
              as int?,
    );
  }

  static final t = PersonWithLongTableNameTable();

  static const db = PersonWithLongTableNameRepository._();

  @override
  int? id;

  String name;

  int? organizationId;

  _i2.OrganizationWithLongTableName? organization;

  final int? _cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PersonWithLongTableName]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PersonWithLongTableName copyWith({
    int? id,
    String? name,
    int? organizationId,
    _i2.OrganizationWithLongTableName? organization,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (organizationId != null) 'organizationId': organizationId,
      if (organization != null) 'organization': organization?.toJson(),
      if (_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id !=
          null)
        '_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id':
            _cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (organizationId != null) 'organizationId': organizationId,
      if (organization != null)
        'organization': organization?.toJsonForProtocol(),
    };
  }

  static PersonWithLongTableNameInclude include(
      {_i2.OrganizationWithLongTableNameInclude? organization}) {
    return PersonWithLongTableNameInclude._(organization: organization);
  }

  static PersonWithLongTableNameIncludeList includeList({
    _i1.WhereExpressionBuilder<PersonWithLongTableNameTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PersonWithLongTableNameTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PersonWithLongTableNameTable>? orderByList,
    PersonWithLongTableNameInclude? include,
  }) {
    return PersonWithLongTableNameIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PersonWithLongTableName.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PersonWithLongTableName.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PersonWithLongTableNameImpl extends PersonWithLongTableName {
  _PersonWithLongTableNameImpl({
    int? id,
    required String name,
    int? organizationId,
    _i2.OrganizationWithLongTableName? organization,
  }) : super._(
          id: id,
          name: name,
          organizationId: organizationId,
          organization: organization,
        );

  /// Returns a shallow copy of this [PersonWithLongTableName]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PersonWithLongTableName copyWith({
    Object? id = _Undefined,
    String? name,
    Object? organizationId = _Undefined,
    Object? organization = _Undefined,
  }) {
    return PersonWithLongTableNameImplicit._(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      organizationId:
          organizationId is int? ? organizationId : this.organizationId,
      organization: organization is _i2.OrganizationWithLongTableName?
          ? organization
          : this.organization?.copyWith(),
      $_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id:
          this._cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id,
    );
  }
}

class PersonWithLongTableNameImplicit extends _PersonWithLongTableNameImpl {
  PersonWithLongTableNameImplicit._({
    int? id,
    required String name,
    int? organizationId,
    _i2.OrganizationWithLongTableName? organization,
    int? $_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id,
  })  : _cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id =
            $_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id,
        super(
          id: id,
          name: name,
          organizationId: organizationId,
          organization: organization,
        );

  factory PersonWithLongTableNameImplicit(
    PersonWithLongTableName personWithLongTableName, {
    int? $_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id,
  }) {
    return PersonWithLongTableNameImplicit._(
      id: personWithLongTableName.id,
      name: personWithLongTableName.name,
      organizationId: personWithLongTableName.organizationId,
      organization: personWithLongTableName.organization,
      $_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id:
          $_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id,
    );
  }

  @override
  final int? _cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id;
}

class PersonWithLongTableNameTable extends _i1.Table<int?> {
  PersonWithLongTableNameTable({super.tableRelation})
      : super(tableName: 'person_with_long_table_name_that_is_still_valid') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    organizationId = _i1.ColumnInt(
      'organizationId',
      this,
    );
    $_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id =
        _i1.ColumnInt(
      '_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnInt organizationId;

  _i2.OrganizationWithLongTableNameTable? _organization;

  late final _i1.ColumnInt
      $_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id;

  _i2.OrganizationWithLongTableNameTable get organization {
    if (_organization != null) return _organization!;
    _organization = _i1.createRelationTable(
      relationFieldName: 'organization',
      field: PersonWithLongTableName.t.organizationId,
      foreignField: _i2.OrganizationWithLongTableName.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.OrganizationWithLongTableNameTable(
              tableRelation: foreignTableRelation),
    );
    return _organization!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        organizationId,
        $_cityWithLongTableNameThatIsStillValidCitizensCityWithLon4fe0Id,
      ];

  @override
  List<_i1.Column> get managedColumns => [
        id,
        name,
        organizationId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'organization') {
      return organization;
    }
    return null;
  }
}

class PersonWithLongTableNameInclude extends _i1.IncludeObject {
  PersonWithLongTableNameInclude._(
      {_i2.OrganizationWithLongTableNameInclude? organization}) {
    _organization = organization;
  }

  _i2.OrganizationWithLongTableNameInclude? _organization;

  @override
  Map<String, _i1.Include?> get includes => {'organization': _organization};

  @override
  _i1.Table<int?> get table => PersonWithLongTableName.t;
}

class PersonWithLongTableNameIncludeList extends _i1.IncludeList {
  PersonWithLongTableNameIncludeList._({
    _i1.WhereExpressionBuilder<PersonWithLongTableNameTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PersonWithLongTableName.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PersonWithLongTableName.t;
}

class PersonWithLongTableNameRepository {
  const PersonWithLongTableNameRepository._();

  final attachRow = const PersonWithLongTableNameAttachRowRepository._();

  final detachRow = const PersonWithLongTableNameDetachRowRepository._();

  /// Returns a list of [PersonWithLongTableName]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<PersonWithLongTableName>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PersonWithLongTableNameTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PersonWithLongTableNameTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PersonWithLongTableNameTable>? orderByList,
    _i1.Transaction? transaction,
    PersonWithLongTableNameInclude? include,
  }) async {
    return session.db.find<PersonWithLongTableName>(
      where: where?.call(PersonWithLongTableName.t),
      orderBy: orderBy?.call(PersonWithLongTableName.t),
      orderByList: orderByList?.call(PersonWithLongTableName.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [PersonWithLongTableName] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<PersonWithLongTableName?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PersonWithLongTableNameTable>? where,
    int? offset,
    _i1.OrderByBuilder<PersonWithLongTableNameTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PersonWithLongTableNameTable>? orderByList,
    _i1.Transaction? transaction,
    PersonWithLongTableNameInclude? include,
  }) async {
    return session.db.findFirstRow<PersonWithLongTableName>(
      where: where?.call(PersonWithLongTableName.t),
      orderBy: orderBy?.call(PersonWithLongTableName.t),
      orderByList: orderByList?.call(PersonWithLongTableName.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [PersonWithLongTableName] by its [id] or null if no such row exists.
  Future<PersonWithLongTableName?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    PersonWithLongTableNameInclude? include,
  }) async {
    return session.db.findById<PersonWithLongTableName>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [PersonWithLongTableName]s in the list and returns the inserted rows.
  ///
  /// The returned [PersonWithLongTableName]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PersonWithLongTableName>> insert(
    _i1.Session session,
    List<PersonWithLongTableName> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PersonWithLongTableName>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PersonWithLongTableName] and returns the inserted row.
  ///
  /// The returned [PersonWithLongTableName] will have its `id` field set.
  Future<PersonWithLongTableName> insertRow(
    _i1.Session session,
    PersonWithLongTableName row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PersonWithLongTableName>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PersonWithLongTableName]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PersonWithLongTableName>> update(
    _i1.Session session,
    List<PersonWithLongTableName> rows, {
    _i1.ColumnSelections<PersonWithLongTableNameTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PersonWithLongTableName>(
      rows,
      columns: columns?.call(PersonWithLongTableName.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PersonWithLongTableName]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PersonWithLongTableName> updateRow(
    _i1.Session session,
    PersonWithLongTableName row, {
    _i1.ColumnSelections<PersonWithLongTableNameTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PersonWithLongTableName>(
      row,
      columns: columns?.call(PersonWithLongTableName.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PersonWithLongTableName]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PersonWithLongTableName>> delete(
    _i1.Session session,
    List<PersonWithLongTableName> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PersonWithLongTableName>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PersonWithLongTableName].
  Future<PersonWithLongTableName> deleteRow(
    _i1.Session session,
    PersonWithLongTableName row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PersonWithLongTableName>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PersonWithLongTableName>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PersonWithLongTableNameTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PersonWithLongTableName>(
      where: where(PersonWithLongTableName.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PersonWithLongTableNameTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PersonWithLongTableName>(
      where: where?.call(PersonWithLongTableName.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class PersonWithLongTableNameAttachRowRepository {
  const PersonWithLongTableNameAttachRowRepository._();

  /// Creates a relation between the given [PersonWithLongTableName] and [OrganizationWithLongTableName]
  /// by setting the [PersonWithLongTableName]'s foreign key `organizationId` to refer to the [OrganizationWithLongTableName].
  Future<void> organization(
    _i1.Session session,
    PersonWithLongTableName personWithLongTableName,
    _i2.OrganizationWithLongTableName organization, {
    _i1.Transaction? transaction,
  }) async {
    if (personWithLongTableName.id == null) {
      throw ArgumentError.notNull('personWithLongTableName.id');
    }
    if (organization.id == null) {
      throw ArgumentError.notNull('organization.id');
    }

    var $personWithLongTableName =
        personWithLongTableName.copyWith(organizationId: organization.id);
    await session.db.updateRow<PersonWithLongTableName>(
      $personWithLongTableName,
      columns: [PersonWithLongTableName.t.organizationId],
      transaction: transaction,
    );
  }
}

class PersonWithLongTableNameDetachRowRepository {
  const PersonWithLongTableNameDetachRowRepository._();

  /// Detaches the relation between this [PersonWithLongTableName] and the [OrganizationWithLongTableName] set in `organization`
  /// by setting the [PersonWithLongTableName]'s foreign key `organizationId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> organization(
    _i1.Session session,
    PersonWithLongTableName personwithlongtablename, {
    _i1.Transaction? transaction,
  }) async {
    if (personwithlongtablename.id == null) {
      throw ArgumentError.notNull('personwithlongtablename.id');
    }

    var $personwithlongtablename =
        personwithlongtablename.copyWith(organizationId: null);
    await session.db.updateRow<PersonWithLongTableName>(
      $personwithlongtablename,
      columns: [PersonWithLongTableName.t.organizationId],
      transaction: transaction,
    );
  }
}
