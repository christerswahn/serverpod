/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

/// Provides a method of access for a user to authenticate with the server.
abstract class AuthKey
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  AuthKey._({
    this.id,
    required this.userId,
    required this.hash,
    this.key,
    required this.scopeNames,
    required this.method,
  });

  factory AuthKey({
    int? id,
    required int userId,
    required String hash,
    String? key,
    required List<String> scopeNames,
    required String method,
  }) = _AuthKeyImpl;

  factory AuthKey.fromJson(Map<String, dynamic> jsonSerialization) {
    return AuthKey(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      hash: jsonSerialization['hash'] as String,
      key: jsonSerialization['key'] as String?,
      scopeNames: (jsonSerialization['scopeNames'] as List)
          .map((e) => e as String)
          .toList(),
      method: jsonSerialization['method'] as String,
    );
  }

  static final t = AuthKeyTable();

  static const db = AuthKeyRepository._();

  @override
  int? id;

  /// The id of the user to provide access to.
  int userId;

  /// The hashed version of the key.
  String hash;

  /// The key sent to the server to authenticate.
  String? key;

  /// The scopes this key provides access to.
  List<String> scopeNames;

  /// The method of signing in this key was generated through. This can be email
  /// or different social logins.
  String method;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [AuthKey]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AuthKey copyWith({
    int? id,
    int? userId,
    String? hash,
    String? key,
    List<String>? scopeNames,
    String? method,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'hash': hash,
      if (key != null) 'key': key,
      'scopeNames': scopeNames.toJson(),
      'method': method,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'hash': hash,
      if (key != null) 'key': key,
      'scopeNames': scopeNames.toJson(),
      'method': method,
    };
  }

  static AuthKeyInclude include() {
    return AuthKeyInclude._();
  }

  static AuthKeyIncludeList includeList({
    _i1.WhereExpressionBuilder<AuthKeyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AuthKeyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AuthKeyTable>? orderByList,
    AuthKeyInclude? include,
  }) {
    return AuthKeyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(AuthKey.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(AuthKey.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AuthKeyImpl extends AuthKey {
  _AuthKeyImpl({
    int? id,
    required int userId,
    required String hash,
    String? key,
    required List<String> scopeNames,
    required String method,
  }) : super._(
          id: id,
          userId: userId,
          hash: hash,
          key: key,
          scopeNames: scopeNames,
          method: method,
        );

  /// Returns a shallow copy of this [AuthKey]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  AuthKey copyWith({
    Object? id = _Undefined,
    int? userId,
    String? hash,
    Object? key = _Undefined,
    List<String>? scopeNames,
    String? method,
  }) {
    return AuthKey(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      hash: hash ?? this.hash,
      key: key is String? ? key : this.key,
      scopeNames: scopeNames ?? this.scopeNames.map((e0) => e0).toList(),
      method: method ?? this.method,
    );
  }
}

class AuthKeyTable extends _i1.Table<int?> {
  AuthKeyTable({super.tableRelation}) : super(tableName: 'serverpod_auth_key') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    hash = _i1.ColumnString(
      'hash',
      this,
    );
    scopeNames = _i1.ColumnSerializable(
      'scopeNames',
      this,
    );
    method = _i1.ColumnString(
      'method',
      this,
    );
  }

  /// The id of the user to provide access to.
  late final _i1.ColumnInt userId;

  /// The hashed version of the key.
  late final _i1.ColumnString hash;

  /// The scopes this key provides access to.
  late final _i1.ColumnSerializable scopeNames;

  /// The method of signing in this key was generated through. This can be email
  /// or different social logins.
  late final _i1.ColumnString method;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        hash,
        scopeNames,
        method,
      ];
}

class AuthKeyInclude extends _i1.IncludeObject {
  AuthKeyInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => AuthKey.t;
}

class AuthKeyIncludeList extends _i1.IncludeList {
  AuthKeyIncludeList._({
    _i1.WhereExpressionBuilder<AuthKeyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(AuthKey.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => AuthKey.t;
}

class AuthKeyRepository {
  const AuthKeyRepository._();

  /// Returns a list of [AuthKey]s matching the given query parameters.
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
  Future<List<AuthKey>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AuthKeyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AuthKeyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AuthKeyTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<AuthKey>(
      where: where?.call(AuthKey.t),
      orderBy: orderBy?.call(AuthKey.t),
      orderByList: orderByList?.call(AuthKey.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [AuthKey] matching the given query parameters.
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
  Future<AuthKey?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AuthKeyTable>? where,
    int? offset,
    _i1.OrderByBuilder<AuthKeyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AuthKeyTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<AuthKey>(
      where: where?.call(AuthKey.t),
      orderBy: orderBy?.call(AuthKey.t),
      orderByList: orderByList?.call(AuthKey.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [AuthKey] by its [id] or null if no such row exists.
  Future<AuthKey?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<AuthKey>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [AuthKey]s in the list and returns the inserted rows.
  ///
  /// The returned [AuthKey]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<AuthKey>> insert(
    _i1.Session session,
    List<AuthKey> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<AuthKey>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [AuthKey] and returns the inserted row.
  ///
  /// The returned [AuthKey] will have its `id` field set.
  Future<AuthKey> insertRow(
    _i1.Session session,
    AuthKey row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<AuthKey>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [AuthKey]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<AuthKey>> update(
    _i1.Session session,
    List<AuthKey> rows, {
    _i1.ColumnSelections<AuthKeyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<AuthKey>(
      rows,
      columns: columns?.call(AuthKey.t),
      transaction: transaction,
    );
  }

  /// Updates a single [AuthKey]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<AuthKey> updateRow(
    _i1.Session session,
    AuthKey row, {
    _i1.ColumnSelections<AuthKeyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<AuthKey>(
      row,
      columns: columns?.call(AuthKey.t),
      transaction: transaction,
    );
  }

  /// Deletes all [AuthKey]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<AuthKey>> delete(
    _i1.Session session,
    List<AuthKey> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<AuthKey>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [AuthKey].
  Future<AuthKey> deleteRow(
    _i1.Session session,
    AuthKey row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<AuthKey>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<AuthKey>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AuthKeyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<AuthKey>(
      where: where(AuthKey.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AuthKeyTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<AuthKey>(
      where: where?.call(AuthKey.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
