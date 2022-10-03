import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'assesment_detail_record.g.dart';

abstract class AssesmentDetailRecord
    implements Built<AssesmentDetailRecord, AssesmentDetailRecordBuilder> {
  static Serializer<AssesmentDetailRecord> get serializer =>
      _$assesmentDetailRecordSerializer;

  @BuiltValueField(wireName: 'pain_score')
  int? get painScore;

  bool? get breathlessness;

  bool? get titration;

  bool? get restlessness;

  bool? get endOfLife;

  bool? get remmission;

  @BuiltValueField(wireName: 'Clinicallystable')
  bool? get clinicallystable;

  @BuiltValueField(wireName: 'visit_id')
  DocumentReference? get visitId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AssesmentDetailRecordBuilder builder) =>
      builder
        ..painScore = 0
        ..breathlessness = false
        ..titration = false
        ..restlessness = false
        ..endOfLife = false
        ..remmission = false
        ..clinicallystable = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assesment_detail');

  static Stream<AssesmentDetailRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AssesmentDetailRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AssesmentDetailRecord._();
  factory AssesmentDetailRecord(
          [void Function(AssesmentDetailRecordBuilder) updates]) =
      _$AssesmentDetailRecord;

  static AssesmentDetailRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAssesmentDetailRecordData({
  int? painScore,
  bool? breathlessness,
  bool? titration,
  bool? restlessness,
  bool? endOfLife,
  bool? remmission,
  bool? clinicallystable,
  DocumentReference? visitId,
}) {
  final firestoreData = serializers.toFirestore(
    AssesmentDetailRecord.serializer,
    AssesmentDetailRecord(
      (a) => a
        ..painScore = painScore
        ..breathlessness = breathlessness
        ..titration = titration
        ..restlessness = restlessness
        ..endOfLife = endOfLife
        ..remmission = remmission
        ..clinicallystable = clinicallystable
        ..visitId = visitId,
    ),
  );

  return firestoreData;
}
