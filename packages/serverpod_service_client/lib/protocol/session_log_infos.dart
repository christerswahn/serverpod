/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

import 'package:serverpod_client/serverpod_client.dart';
// ignore: unused_import
import 'protocol.dart';

class SessionLogInfos extends SerializableEntity {
  String get className => 'SessionLogInfos';

  int id;
  List<SessionLogInfo> sessionLog;

  SessionLogInfos({
    this.id,
    this.sessionLog,
});

  SessionLogInfos.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    sessionLog = _data['sessionLog']?.map<SessionLogInfo>((a) => SessionLogInfo.fromSerialization(a))?.toList();
  }

  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'sessionLog': sessionLog?.map((SessionLogInfo a) => a.serialize())?.toList(),
    });
  }
}
