/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Parking extends _i1.SerializableEntity {
  Parking({
    this.id,
    required this.name,
    required this.lat,
    required this.long,
    required this.capacity,
    required this.price,
  });

  factory Parking.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Parking(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      lat: serializationManager.deserialize<double>(jsonSerialization['lat']),
      long: serializationManager.deserialize<double>(jsonSerialization['long']),
      capacity:
          serializationManager.deserialize<int>(jsonSerialization['capacity']),
      price: serializationManager.deserialize<int>(jsonSerialization['price']),
    );
  }

  int? id;

  String name;

  double lat;

  double long;

  int capacity;

  int price;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'lat': lat,
      'long': long,
      'capacity': capacity,
      'price': price,
    };
  }
}
