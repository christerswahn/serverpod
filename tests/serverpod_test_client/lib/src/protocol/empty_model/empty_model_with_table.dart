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
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class EmptyModelWithTable implements _i1.SerializableModel {
  EmptyModelWithTable._({this.id});

  factory EmptyModelWithTable({int? id}) = _EmptyModelWithTableImpl;

  factory EmptyModelWithTable.fromJson(Map<String, dynamic> jsonSerialization) {
    return EmptyModelWithTable(id: jsonSerialization['id'] as int?);
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// Returns a shallow copy of this [EmptyModelWithTable]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  EmptyModelWithTable copyWith({int? id});
  @override
  Map<String, dynamic> toJson() {
    return {if (id != null) 'id': id};
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _EmptyModelWithTableImpl extends EmptyModelWithTable {
  _EmptyModelWithTableImpl({int? id}) : super._(id: id);

  /// Returns a shallow copy of this [EmptyModelWithTable]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  EmptyModelWithTable copyWith({Object? id = _Undefined}) {
    return EmptyModelWithTable(id: id is int? ? id : this.id);
  }
}
