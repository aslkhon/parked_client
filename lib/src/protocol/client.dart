/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:parked_client/src/protocol/booking_with_price.dart' as _i3;
import 'package:parked_client/src/protocol/parking_class.dart' as _i4;
import 'package:parked_client/src/protocol/record_with_booking.dart' as _i5;
import 'package:parked_client/src/protocol/records_with_bookings.dart' as _i6;
import 'package:parked_client/src/protocol/user_class.dart' as _i7;
import 'dart:io' as _i8;
import 'protocol.dart' as _i9;

class _EndpointBookingRepository extends _i1.EndpointRef {
  _EndpointBookingRepository(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'bookingRepository';

  _i2.Future<_i3.BookingWithPrice> bookSlot(
    String plateNumber,
    int parkingId,
    int duration,
  ) =>
      caller.callServerEndpoint<_i3.BookingWithPrice>(
        'bookingRepository',
        'bookSlot',
        {
          'plateNumber': plateNumber,
          'parkingId': parkingId,
          'duration': duration,
        },
      );

  _i2.Future<List<_i3.BookingWithPrice>> getActiveBookings(
          String plateNumber) =>
      caller.callServerEndpoint<List<_i3.BookingWithPrice>>(
        'bookingRepository',
        'getActiveBookings',
        {'plateNumber': plateNumber},
      );

  _i2.Future<_i3.BookingWithPrice> updateBooking(
    int bookingId,
    int duration,
  ) =>
      caller.callServerEndpoint<_i3.BookingWithPrice>(
        'bookingRepository',
        'updateBooking',
        {
          'bookingId': bookingId,
          'duration': duration,
        },
      );

  _i2.Future<void> deleteBooking(int bookingId) =>
      caller.callServerEndpoint<void>(
        'bookingRepository',
        'deleteBooking',
        {'bookingId': bookingId},
      );
}

class _EndpointParking extends _i1.EndpointRef {
  _EndpointParking(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'parking';

  _i2.Future<List<_i4.Parking>> getParkings(
    double lat,
    double long,
    double radius,
  ) =>
      caller.callServerEndpoint<List<_i4.Parking>>(
        'parking',
        'getParkings',
        {
          'lat': lat,
          'long': long,
          'radius': radius,
        },
      );
}

class _EndpointRecord extends _i1.EndpointRef {
  _EndpointRecord(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'record';

  _i2.Future<bool> checkIn(
    String plateNumber,
    int parkingId,
  ) =>
      caller.callServerEndpoint<bool>(
        'record',
        'checkIn',
        {
          'plateNumber': plateNumber,
          'parkingId': parkingId,
        },
      );

  _i2.Future<_i5.RecordWithBooking> checkOut(
    String plateNumber,
    int parkingId,
  ) =>
      caller.callServerEndpoint<_i5.RecordWithBooking>(
        'record',
        'checkOut',
        {
          'plateNumber': plateNumber,
          'parkingId': parkingId,
        },
      );

  _i2.Future<List<_i6.RecordsWithBookings>> getAllData(int parkingId) =>
      caller.callServerEndpoint<List<_i6.RecordsWithBookings>>(
        'record',
        'getAllData',
        {'parkingId': parkingId},
      );
}

class _EndpointUser extends _i1.EndpointRef {
  _EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i7.User> createUser(String plateNumber) =>
      caller.callServerEndpoint<_i7.User>(
        'user',
        'createUser',
        {'plateNumber': plateNumber},
      );

  _i2.Future<_i7.User?> getDeposit(String plateNumber) =>
      caller.callServerEndpoint<_i7.User?>(
        'user',
        'getDeposit',
        {'plateNumber': plateNumber},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i8.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i9.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    bookingRepository = _EndpointBookingRepository(this);
    parking = _EndpointParking(this);
    record = _EndpointRecord(this);
    user = _EndpointUser(this);
  }

  late final _EndpointBookingRepository bookingRepository;

  late final _EndpointParking parking;

  late final _EndpointRecord record;

  late final _EndpointUser user;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'bookingRepository': bookingRepository,
        'parking': parking,
        'record': record,
        'user': user,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
