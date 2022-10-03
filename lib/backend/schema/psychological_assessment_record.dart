import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'psychological_assessment_record.g.dart';

abstract class PsychologicalAssessmentRecord
    implements
        Built<PsychologicalAssessmentRecord,
            PsychologicalAssessmentRecordBuilder> {
  static Serializer<PsychologicalAssessmentRecord> get serializer =>
      _$psychologicalAssessmentRecordSerializer;

  @BuiltValueField(wireName: 'distress_thermometer')
  int? get distressThermometer;

  @BuiltValueField(wireName: 'Family_bbn')
  bool? get familyBbn;

  bool? get familyGoalOfCare;

  @BuiltValueField(wireName: 'PSP')
  bool? get psp;

  @BuiltValueField(wireName: 'visit_id')
  DocumentReference? get visitId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(
          PsychologicalAssessmentRecordBuilder builder) =>
      builder
        ..distressThermometer = 0
        ..familyBbn = false
        ..familyGoalOfCare = false
        ..psp = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('psychological_assessment');

  static Stream<PsychologicalAssessmentRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PsychologicalAssessmentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PsychologicalAssessmentRecord._();
  factory PsychologicalAssessmentRecord(
          [void Function(PsychologicalAssessmentRecordBuilder) updates]) =
      _$PsychologicalAssessmentRecord;

  static PsychologicalAssessmentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPsychologicalAssessmentRecordData({
  int? distressThermometer,
  bool? familyBbn,
  bool? familyGoalOfCare,
  bool? psp,
  DocumentReference? visitId,
}) {
  final firestoreData = serializers.toFirestore(
    PsychologicalAssessmentRecord.serializer,
    PsychologicalAssessmentRecord(
      (p) => p
        ..distressThermometer = distressThermometer
        ..familyBbn = familyBbn
        ..familyGoalOfCare = familyGoalOfCare
        ..psp = psp
        ..visitId = visitId,
    ),
  );

  return firestoreData;
}
