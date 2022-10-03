import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'visits_record.g.dart';

abstract class VisitsRecord
    implements Built<VisitsRecord, VisitsRecordBuilder> {
  static Serializer<VisitsRecord> get serializer => _$visitsRecordSerializer;

  @BuiltValueField(wireName: 'case_id')
  DocumentReference? get caseId;

  @BuiltValueField(wireName: 'scheduled_date')
  DateTime? get scheduledDate;

  @BuiltValueField(wireName: 'created_on')
  DateTime? get createdOn;

  @BuiltValueField(wireName: 'current_priority')
  String? get currentPriority;

  @BuiltValueField(wireName: 'updated_priority')
  String? get updatedPriority;

  String? get status;

  @BuiltValueField(wireName: 'visit_notes')
  String? get visitNotes;

  @BuiltValueField(wireName: 'doctor_id')
  String? get doctorId;

  @BuiltValueField(wireName: 'nurse_id')
  String? get nurseId;

  @BuiltValueField(wireName: 'msw_id')
  String? get mswId;

  @BuiltValueField(wireName: 'is_completed')
  bool? get isCompleted;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VisitsRecordBuilder builder) => builder
    ..currentPriority = ''
    ..updatedPriority = ''
    ..status = ''
    ..visitNotes = ''
    ..doctorId = ''
    ..nurseId = ''
    ..mswId = ''
    ..isCompleted = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('visits');

  static Stream<VisitsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VisitsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VisitsRecord._();
  factory VisitsRecord([void Function(VisitsRecordBuilder) updates]) =
      _$VisitsRecord;

  static VisitsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVisitsRecordData({
  DocumentReference? caseId,
  DateTime? scheduledDate,
  DateTime? createdOn,
  String? currentPriority,
  String? updatedPriority,
  String? status,
  String? visitNotes,
  String? doctorId,
  String? nurseId,
  String? mswId,
  bool? isCompleted,
}) {
  final firestoreData = serializers.toFirestore(
    VisitsRecord.serializer,
    VisitsRecord(
      (v) => v
        ..caseId = caseId
        ..scheduledDate = scheduledDate
        ..createdOn = createdOn
        ..currentPriority = currentPriority
        ..updatedPriority = updatedPriority
        ..status = status
        ..visitNotes = visitNotes
        ..doctorId = doctorId
        ..nurseId = nurseId
        ..mswId = mswId
        ..isCompleted = isCompleted,
    ),
  );

  return firestoreData;
}
