/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class RecordsWithBookings extends _i1.SerializableEntity {
  RecordsWithBookings({
    required this.records,
    required this.bookings,
  });

  factory RecordsWithBookings.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return RecordsWithBookings(
      records: serializationManager
          .deserialize<List<_i2.Record>>(jsonSerialization['records']),
      bookings: serializationManager
          .deserialize<List<_i2.Booking>>(jsonSerialization['bookings']),
    );
  }

  List<_i2.Record> records;

  List<_i2.Booking> bookings;

  @override
  Map<String, dynamic> toJson() {
    return {
      'records': records,
      'bookings': bookings,
    };
  }
}
