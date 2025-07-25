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

/// Represents a snapshot of the number of open connections the server currently
/// is handling. An entry is written every minute for each server. All health
/// data can be accessed through Serverpod Insights.
abstract class ServerHealthConnectionInfo
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  ServerHealthConnectionInfo._({
    this.id,
    required this.serverId,
    required this.timestamp,
    required this.active,
    required this.closing,
    required this.idle,
    required this.granularity,
  });

  factory ServerHealthConnectionInfo({
    int? id,
    required String serverId,
    required DateTime timestamp,
    required int active,
    required int closing,
    required int idle,
    required int granularity,
  }) = _ServerHealthConnectionInfoImpl;

  factory ServerHealthConnectionInfo.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return ServerHealthConnectionInfo(
      id: jsonSerialization['id'] as int?,
      serverId: jsonSerialization['serverId'] as String,
      timestamp:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['timestamp']),
      active: jsonSerialization['active'] as int,
      closing: jsonSerialization['closing'] as int,
      idle: jsonSerialization['idle'] as int,
      granularity: jsonSerialization['granularity'] as int,
    );
  }

  static final t = ServerHealthConnectionInfoTable();

  static const db = ServerHealthConnectionInfoRepository._();

  @override
  int? id;

  /// The server associated with this connection info.
  String serverId;

  /// The time when the connections was checked, granularity is one minute.
  DateTime timestamp;

  /// Number of active connections currently open.
  int active;

  /// Number of connections currently closing.
  int closing;

  /// Number of connections currently idle.
  int idle;

  /// The granularity of this timestamp, null represents 1 minute, other valid
  /// values are 60 minutes and 1440 minutes (one day).
  int granularity;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [ServerHealthConnectionInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ServerHealthConnectionInfo copyWith({
    int? id,
    String? serverId,
    DateTime? timestamp,
    int? active,
    int? closing,
    int? idle,
    int? granularity,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'serverId': serverId,
      'timestamp': timestamp.toJson(),
      'active': active,
      'closing': closing,
      'idle': idle,
      'granularity': granularity,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'serverId': serverId,
      'timestamp': timestamp.toJson(),
      'active': active,
      'closing': closing,
      'idle': idle,
      'granularity': granularity,
    };
  }

  static ServerHealthConnectionInfoInclude include() {
    return ServerHealthConnectionInfoInclude._();
  }

  static ServerHealthConnectionInfoIncludeList includeList({
    _i1.WhereExpressionBuilder<ServerHealthConnectionInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServerHealthConnectionInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServerHealthConnectionInfoTable>? orderByList,
    ServerHealthConnectionInfoInclude? include,
  }) {
    return ServerHealthConnectionInfoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ServerHealthConnectionInfo.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ServerHealthConnectionInfo.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ServerHealthConnectionInfoImpl extends ServerHealthConnectionInfo {
  _ServerHealthConnectionInfoImpl({
    int? id,
    required String serverId,
    required DateTime timestamp,
    required int active,
    required int closing,
    required int idle,
    required int granularity,
  }) : super._(
          id: id,
          serverId: serverId,
          timestamp: timestamp,
          active: active,
          closing: closing,
          idle: idle,
          granularity: granularity,
        );

  /// Returns a shallow copy of this [ServerHealthConnectionInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ServerHealthConnectionInfo copyWith({
    Object? id = _Undefined,
    String? serverId,
    DateTime? timestamp,
    int? active,
    int? closing,
    int? idle,
    int? granularity,
  }) {
    return ServerHealthConnectionInfo(
      id: id is int? ? id : this.id,
      serverId: serverId ?? this.serverId,
      timestamp: timestamp ?? this.timestamp,
      active: active ?? this.active,
      closing: closing ?? this.closing,
      idle: idle ?? this.idle,
      granularity: granularity ?? this.granularity,
    );
  }
}

class ServerHealthConnectionInfoTable extends _i1.Table<int?> {
  ServerHealthConnectionInfoTable({super.tableRelation})
      : super(tableName: 'serverpod_health_connection_info') {
    serverId = _i1.ColumnString(
      'serverId',
      this,
    );
    timestamp = _i1.ColumnDateTime(
      'timestamp',
      this,
    );
    active = _i1.ColumnInt(
      'active',
      this,
    );
    closing = _i1.ColumnInt(
      'closing',
      this,
    );
    idle = _i1.ColumnInt(
      'idle',
      this,
    );
    granularity = _i1.ColumnInt(
      'granularity',
      this,
    );
  }

  /// The server associated with this connection info.
  late final _i1.ColumnString serverId;

  /// The time when the connections was checked, granularity is one minute.
  late final _i1.ColumnDateTime timestamp;

  /// Number of active connections currently open.
  late final _i1.ColumnInt active;

  /// Number of connections currently closing.
  late final _i1.ColumnInt closing;

  /// Number of connections currently idle.
  late final _i1.ColumnInt idle;

  /// The granularity of this timestamp, null represents 1 minute, other valid
  /// values are 60 minutes and 1440 minutes (one day).
  late final _i1.ColumnInt granularity;

  @override
  List<_i1.Column> get columns => [
        id,
        serverId,
        timestamp,
        active,
        closing,
        idle,
        granularity,
      ];
}

class ServerHealthConnectionInfoInclude extends _i1.IncludeObject {
  ServerHealthConnectionInfoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ServerHealthConnectionInfo.t;
}

class ServerHealthConnectionInfoIncludeList extends _i1.IncludeList {
  ServerHealthConnectionInfoIncludeList._({
    _i1.WhereExpressionBuilder<ServerHealthConnectionInfoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ServerHealthConnectionInfo.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ServerHealthConnectionInfo.t;
}

class ServerHealthConnectionInfoRepository {
  const ServerHealthConnectionInfoRepository._();

  /// Returns a list of [ServerHealthConnectionInfo]s matching the given query parameters.
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
  Future<List<ServerHealthConnectionInfo>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServerHealthConnectionInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ServerHealthConnectionInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServerHealthConnectionInfoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ServerHealthConnectionInfo>(
      where: where?.call(ServerHealthConnectionInfo.t),
      orderBy: orderBy?.call(ServerHealthConnectionInfo.t),
      orderByList: orderByList?.call(ServerHealthConnectionInfo.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [ServerHealthConnectionInfo] matching the given query parameters.
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
  Future<ServerHealthConnectionInfo?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServerHealthConnectionInfoTable>? where,
    int? offset,
    _i1.OrderByBuilder<ServerHealthConnectionInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ServerHealthConnectionInfoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ServerHealthConnectionInfo>(
      where: where?.call(ServerHealthConnectionInfo.t),
      orderBy: orderBy?.call(ServerHealthConnectionInfo.t),
      orderByList: orderByList?.call(ServerHealthConnectionInfo.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [ServerHealthConnectionInfo] by its [id] or null if no such row exists.
  Future<ServerHealthConnectionInfo?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ServerHealthConnectionInfo>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [ServerHealthConnectionInfo]s in the list and returns the inserted rows.
  ///
  /// The returned [ServerHealthConnectionInfo]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<ServerHealthConnectionInfo>> insert(
    _i1.Session session,
    List<ServerHealthConnectionInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ServerHealthConnectionInfo>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [ServerHealthConnectionInfo] and returns the inserted row.
  ///
  /// The returned [ServerHealthConnectionInfo] will have its `id` field set.
  Future<ServerHealthConnectionInfo> insertRow(
    _i1.Session session,
    ServerHealthConnectionInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ServerHealthConnectionInfo>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ServerHealthConnectionInfo]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ServerHealthConnectionInfo>> update(
    _i1.Session session,
    List<ServerHealthConnectionInfo> rows, {
    _i1.ColumnSelections<ServerHealthConnectionInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ServerHealthConnectionInfo>(
      rows,
      columns: columns?.call(ServerHealthConnectionInfo.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ServerHealthConnectionInfo]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ServerHealthConnectionInfo> updateRow(
    _i1.Session session,
    ServerHealthConnectionInfo row, {
    _i1.ColumnSelections<ServerHealthConnectionInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ServerHealthConnectionInfo>(
      row,
      columns: columns?.call(ServerHealthConnectionInfo.t),
      transaction: transaction,
    );
  }

  /// Deletes all [ServerHealthConnectionInfo]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ServerHealthConnectionInfo>> delete(
    _i1.Session session,
    List<ServerHealthConnectionInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ServerHealthConnectionInfo>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ServerHealthConnectionInfo].
  Future<ServerHealthConnectionInfo> deleteRow(
    _i1.Session session,
    ServerHealthConnectionInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ServerHealthConnectionInfo>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ServerHealthConnectionInfo>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ServerHealthConnectionInfoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ServerHealthConnectionInfo>(
      where: where(ServerHealthConnectionInfo.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ServerHealthConnectionInfoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ServerHealthConnectionInfo>(
      where: where?.call(ServerHealthConnectionInfo.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
