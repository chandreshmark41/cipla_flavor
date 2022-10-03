import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'nursing_assessment_record.g.dart';

abstract class NursingAssessmentRecord
    implements Built<NursingAssessmentRecord, NursingAssessmentRecordBuilder> {
  static Serializer<NursingAssessmentRecord> get serializer =>
      _$nursingAssessmentRecordSerializer;

  @BuiltValueField(wireName: 'Painscore')
  int? get painscore;

  @BuiltValueField(wireName: 'Bedridden')
  bool? get bedridden;

  bool? get bleeding;

  bool? get breathlessness;

  bool? get restlessness;

  @BuiltValueField(wireName: 'Clinicallystable')
  bool? get clinicallystable;

  @BuiltValueField(wireName: 'Woundprogression')
  bool? get woundprogression;

  @BuiltValueField(wireName: 'Nowoundsorfeedingassistance')
  bool? get nowoundsorfeedingassistance;

  @BuiltValueField(wireName: 'Oncatheterstoma')
  bool? get oncatheterstoma;

  @BuiltValueField(wireName: 'visit_id')
  DocumentReference? get visitId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NursingAssessmentRecordBuilder builder) =>
      builder
        ..painscore = 0
        ..bedridden = false
        ..bleeding = false
        ..breathlessness = false
        ..restlessness = false
        ..clinicallystable = false
        ..woundprogression = false
        ..nowoundsorfeedingassistance = false
        ..oncatheterstoma = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nursing_assessment');

  static Stream<NursingAssessmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NursingAssessmentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NursingAssessmentRecord._();
  factory NursingAssessmentRecord(
          [void Function(NursingAssessmentRecordBuilder) updates]) =
      _$NursingAssessmentRecord;

  static NursingAssessmentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNursingAssessmentRecordData({
  int? painscore,
  bool? bedridden,
  bool? bleeding,
  bool? breathlessness,
  bool? restlessness,
  bool? clinicallystable,
  bool? woundprogression,
  bool? nowoundsorfeedingassistance,
  bool? oncatheterstoma,
  DocumentReference? visitId,
}) {
  final firestoreData = serializers.toFirestore(
    NursingAssessmentRecord.serializer,
    NursingAssessmentRecord(
      (n) => n
        ..painscore = painscore
        ..bedridden = bedridden
        ..bleeding = bleeding
        ..breathlessness = breathlessness
        ..restlessness = restlessness
        ..clinicallystable = clinicallystable
        ..woundprogression = woundprogression
        ..nowoundsorfeedingassistance = nowoundsorfeedingassistance
        ..oncatheterstoma = oncatheterstoma
        ..visitId = visitId,
    ),
  );

  return firestoreData;
}
