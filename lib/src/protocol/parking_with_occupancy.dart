/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class ParkingWithOccupancy extends _i1.SerializableEntity {
  ParkingWithOccupancy({
    required this.parking,
    required this.occupancy,
  });

  factory ParkingWithOccupancy.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ParkingWithOccupancy(
      parking: serializationManager
          .deserialize<_i2.Parking>(jsonSerialization['parking']),
      occupancy: serializationManager
          .deserialize<double>(jsonSerialization['occupancy']),
    );
  }

  _i2.Parking parking;

  double occupancy;

  @override
  Map<String, dynamic> toJson() {
    return {
      'parking': parking,
      'occupancy': occupancy,
    };
  }
}
