/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Record extends _i1.SerializableEntity {
  Record({
    this.id,
    required this.plateNumber,
    required this.parkingId,
    required this.startTime,
    this.endTime,
  });

  factory Record.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Record(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      plateNumber: serializationManager
          .deserialize<String>(jsonSerialization['plateNumber']),
      parkingId:
          serializationManager.deserialize<int>(jsonSerialization['parkingId']),
      startTime: serializationManager
          .deserialize<DateTime>(jsonSerialization['startTime']),
      endTime: serializationManager
          .deserialize<DateTime?>(jsonSerialization['endTime']),
    );
  }

  int? id;

  String plateNumber;

  int parkingId;

  DateTime startTime;

  DateTime? endTime;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'plateNumber': plateNumber,
      'parkingId': parkingId,
      'startTime': startTime,
      'endTime': endTime,
    };
  }
}
