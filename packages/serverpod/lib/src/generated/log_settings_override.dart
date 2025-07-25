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
import 'log_settings.dart' as _i2;

/// Information about an override for log settings for either an entire
/// endpoint or a specific method.
abstract class LogSettingsOverride
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  LogSettingsOverride._({
    this.module,
    this.endpoint,
    this.method,
    required this.logSettings,
  });

  factory LogSettingsOverride({
    String? module,
    String? endpoint,
    String? method,
    required _i2.LogSettings logSettings,
  }) = _LogSettingsOverrideImpl;

  factory LogSettingsOverride.fromJson(Map<String, dynamic> jsonSerialization) {
    return LogSettingsOverride(
      module: jsonSerialization['module'] as String?,
      endpoint: jsonSerialization['endpoint'] as String?,
      method: jsonSerialization['method'] as String?,
      logSettings: _i2.LogSettings.fromJson(
          (jsonSerialization['logSettings'] as Map<String, dynamic>)),
    );
  }

  /// Module to override settings for, null for main project.
  String? module;

  /// Endpoint to override settings for.
  String? endpoint;

  /// Method to override settings for.
  String? method;

  /// Log settings override.
  _i2.LogSettings logSettings;

  /// Returns a shallow copy of this [LogSettingsOverride]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  LogSettingsOverride copyWith({
    String? module,
    String? endpoint,
    String? method,
    _i2.LogSettings? logSettings,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (module != null) 'module': module,
      if (endpoint != null) 'endpoint': endpoint,
      if (method != null) 'method': method,
      'logSettings': logSettings.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (module != null) 'module': module,
      if (endpoint != null) 'endpoint': endpoint,
      if (method != null) 'method': method,
      'logSettings': logSettings.toJsonForProtocol(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LogSettingsOverrideImpl extends LogSettingsOverride {
  _LogSettingsOverrideImpl({
    String? module,
    String? endpoint,
    String? method,
    required _i2.LogSettings logSettings,
  }) : super._(
          module: module,
          endpoint: endpoint,
          method: method,
          logSettings: logSettings,
        );

  /// Returns a shallow copy of this [LogSettingsOverride]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  LogSettingsOverride copyWith({
    Object? module = _Undefined,
    Object? endpoint = _Undefined,
    Object? method = _Undefined,
    _i2.LogSettings? logSettings,
  }) {
    return LogSettingsOverride(
      module: module is String? ? module : this.module,
      endpoint: endpoint is String? ? endpoint : this.endpoint,
      method: method is String? ? method : this.method,
      logSettings: logSettings ?? this.logSettings.copyWith(),
    );
  }
}
