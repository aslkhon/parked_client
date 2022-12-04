/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'booking_class.dart' as _i2;
import 'booking_with_price.dart' as _i3;
import 'parking_class.dart' as _i4;
import 'parking_with_occupancy.dart' as _i5;
import 'record_class.dart' as _i6;
import 'record_with_booking.dart' as _i7;
import 'records_with_bookings.dart' as _i8;
import 'user_class.dart' as _i9;
import 'protocol.dart' as _i10;
import 'package:parked_client/src/protocol/booking_with_price.dart' as _i11;
import 'package:parked_client/src/protocol/parking_class.dart' as _i12;
import 'package:parked_client/src/protocol/records_with_bookings.dart' as _i13;
export 'booking_class.dart';
export 'booking_with_price.dart';
export 'parking_class.dart';
export 'parking_with_occupancy.dart';
export 'record_class.dart';
export 'record_with_booking.dart';
export 'records_with_bookings.dart';
export 'user_class.dart';
export 'client.dart'; // ignore_for_file: equal_keys_in_map

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Booking) {
      return _i2.Booking.fromJson(data, this) as T;
    }
    if (t == _i3.BookingWithPrice) {
      return _i3.BookingWithPrice.fromJson(data, this) as T;
    }
    if (t == _i4.Parking) {
      return _i4.Parking.fromJson(data, this) as T;
    }
    if (t == _i5.ParkingWithOccupancy) {
      return _i5.ParkingWithOccupancy.fromJson(data, this) as T;
    }
    if (t == _i6.Record) {
      return _i6.Record.fromJson(data, this) as T;
    }
    if (t == _i7.RecordWithBooking) {
      return _i7.RecordWithBooking.fromJson(data, this) as T;
    }
    if (t == _i8.RecordsWithBookings) {
      return _i8.RecordsWithBookings.fromJson(data, this) as T;
    }
    if (t == _i9.User) {
      return _i9.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Booking?>()) {
      return (data != null ? _i2.Booking.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.BookingWithPrice?>()) {
      return (data != null ? _i3.BookingWithPrice.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i4.Parking?>()) {
      return (data != null ? _i4.Parking.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.ParkingWithOccupancy?>()) {
      return (data != null
          ? _i5.ParkingWithOccupancy.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i6.Record?>()) {
      return (data != null ? _i6.Record.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.RecordWithBooking?>()) {
      return (data != null ? _i7.RecordWithBooking.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.RecordsWithBookings?>()) {
      return (data != null
          ? _i8.RecordsWithBookings.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i9.User?>()) {
      return (data != null ? _i9.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i10.Record>) {
      return (data as List).map((e) => deserialize<_i10.Record>(e)).toList()
          as dynamic;
    }
    if (t == List<_i10.Booking>) {
      return (data as List).map((e) => deserialize<_i10.Booking>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.BookingWithPrice>) {
      return (data as List)
          .map((e) => deserialize<_i11.BookingWithPrice>(e))
          .toList() as dynamic;
    }
    if (t == List<_i12.Parking>) {
      return (data as List).map((e) => deserialize<_i12.Parking>(e)).toList()
          as dynamic;
    }
    if (t == List<_i13.RecordsWithBookings>) {
      return (data as List)
          .map((e) => deserialize<_i13.RecordsWithBookings>(e))
          .toList() as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Booking) {
      return 'Booking';
    }
    if (data is _i3.BookingWithPrice) {
      return 'BookingWithPrice';
    }
    if (data is _i4.Parking) {
      return 'Parking';
    }
    if (data is _i5.ParkingWithOccupancy) {
      return 'ParkingWithOccupancy';
    }
    if (data is _i6.Record) {
      return 'Record';
    }
    if (data is _i7.RecordWithBooking) {
      return 'RecordWithBooking';
    }
    if (data is _i8.RecordsWithBookings) {
      return 'RecordsWithBookings';
    }
    if (data is _i9.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Booking') {
      return deserialize<_i2.Booking>(data['data']);
    }
    if (data['className'] == 'BookingWithPrice') {
      return deserialize<_i3.BookingWithPrice>(data['data']);
    }
    if (data['className'] == 'Parking') {
      return deserialize<_i4.Parking>(data['data']);
    }
    if (data['className'] == 'ParkingWithOccupancy') {
      return deserialize<_i5.ParkingWithOccupancy>(data['data']);
    }
    if (data['className'] == 'Record') {
      return deserialize<_i6.Record>(data['data']);
    }
    if (data['className'] == 'RecordWithBooking') {
      return deserialize<_i7.RecordWithBooking>(data['data']);
    }
    if (data['className'] == 'RecordsWithBookings') {
      return deserialize<_i8.RecordsWithBookings>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i9.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
