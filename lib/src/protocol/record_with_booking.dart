/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

class RecordWithBooking extends _i1.SerializableEntity {
  RecordWithBooking({
    required this.record,
    required this.booking,
  });

  factory RecordWithBooking.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return RecordWithBooking(
      record: serializationManager
          .deserialize<_i2.Record>(jsonSerialization['record']),
      booking: serializationManager
          .deserialize<_i2.Booking>(jsonSerialization['booking']),
    );
  }

  _i2.Record record;

  _i2.Booking booking;

  @override
  Map<String, dynamic> toJson() {
    return {
      'record': record,
      'booking': booking,
    };
  }
}
