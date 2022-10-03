import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'added_users_record.g.dart';

abstract class AddedUsersRecord
    implements Built<AddedUsersRecord, AddedUsersRecordBuilder> {
  static Serializer<AddedUsersRecord> get serializer =>
      _$addedUsersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  String? get pincode;

  String? get city;

  String? get street;

  String? get role;

  String? get state;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get uid;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get compass;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AddedUsersRecordBuilder builder) => builder
    ..email = ''
    ..phoneNumber = ''
    ..firstName = ''
    ..lastName = ''
    ..pincode = ''
    ..city = ''
    ..street = ''
    ..role = ''
    ..state = ''
    ..displayName = ''
    ..uid = ''
    ..photoUrl = ''
    ..compass = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('added_users');

  static Stream<AddedUsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AddedUsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AddedUsersRecord._();
  factory AddedUsersRecord([void Function(AddedUsersRecordBuilder) updates]) =
      _$AddedUsersRecord;

  static AddedUsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAddedUsersRecordData({
  String? email,
  DateTime? createdTime,
  String? phoneNumber,
  String? firstName,
  String? lastName,
  String? pincode,
  String? city,
  String? street,
  String? role,
  String? state,
  String? displayName,
  String? uid,
  String? photoUrl,
  String? compass,
}) {
  final firestoreData = serializers.toFirestore(
    AddedUsersRecord.serializer,
    AddedUsersRecord(
      (a) => a
        ..email = email
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..firstName = firstName
        ..lastName = lastName
        ..pincode = pincode
        ..city = city
        ..street = street
        ..role = role
        ..state = state
        ..displayName = displayName
        ..uid = uid
        ..photoUrl = photoUrl
        ..compass = compass,
    ),
  );

  return firestoreData;
}
