import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cases_record.g.dart';

abstract class CasesRecord implements Built<CasesRecord, CasesRecordBuilder> {
  static Serializer<CasesRecord> get serializer => _$casesRecordSerializer;

  String? get priority;

  @BuiltValueField(wireName: 'is_active')
  bool? get isActive;

  @BuiltValueField(wireName: 'created_on')
  DateTime? get createdOn;

  @BuiltValueField(wireName: 'admin_id')
  String? get adminId;

  @BuiltValueField(wireName: 'patient_id')
  String? get patientId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CasesRecordBuilder builder) => builder
    ..priority = ''
    ..isActive = false
    ..adminId = ''
    ..patientId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cases');

  static Stream<CasesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CasesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CasesRecord._();
  factory CasesRecord([void Function(CasesRecordBuilder) updates]) =
      _$CasesRecord;

  static CasesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCasesRecordData({
  String? priority,
  bool? isActive,
  DateTime? createdOn,
  String? adminId,
  String? patientId,
}) {
  final firestoreData = serializers.toFirestore(
    CasesRecord.serializer,
    CasesRecord(
      (c) => c
        ..priority = priority
        ..isActive = isActive
        ..createdOn = createdOn
        ..adminId = adminId
        ..patientId = patientId,
    ),
  );

  return firestoreData;
}
