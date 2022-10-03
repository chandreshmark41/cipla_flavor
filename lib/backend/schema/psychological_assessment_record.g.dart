// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'psychological_assessment_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PsychologicalAssessmentRecord>
    _$psychologicalAssessmentRecordSerializer =
    new _$PsychologicalAssessmentRecordSerializer();

class _$PsychologicalAssessmentRecordSerializer
    implements StructuredSerializer<PsychologicalAssessmentRecord> {
  @override
  final Iterable<Type> types = const [
    PsychologicalAssessmentRecord,
    _$PsychologicalAssessmentRecord
  ];
  @override
  final String wireName = 'PsychologicalAssessmentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PsychologicalAssessmentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.distressThermometer;
    if (value != null) {
      result
        ..add('distress_thermometer')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.familyBbn;
    if (value != null) {
      result
        ..add('Family_bbn')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.familyGoalOfCare;
    if (value != null) {
      result
        ..add('familyGoalOfCare')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.psp;
    if (value != null) {
      result
        ..add('PSP')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.visitId;
    if (value != null) {
      result
        ..add('visit_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PsychologicalAssessmentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PsychologicalAssessmentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'distress_thermometer':
          result.distressThermometer = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Family_bbn':
          result.familyBbn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'familyGoalOfCare':
          result.familyGoalOfCare = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'PSP':
          result.psp = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'visit_id':
          result.visitId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PsychologicalAssessmentRecord extends PsychologicalAssessmentRecord {
  @override
  final int? distressThermometer;
  @override
  final bool? familyBbn;
  @override
  final bool? familyGoalOfCare;
  @override
  final bool? psp;
  @override
  final DocumentReference<Object?>? visitId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PsychologicalAssessmentRecord(
          [void Function(PsychologicalAssessmentRecordBuilder)? updates]) =>
      (new PsychologicalAssessmentRecordBuilder()..update(updates))._build();

  _$PsychologicalAssessmentRecord._(
      {this.distressThermometer,
      this.familyBbn,
      this.familyGoalOfCare,
      this.psp,
      this.visitId,
      this.ffRef})
      : super._();

  @override
  PsychologicalAssessmentRecord rebuild(
          void Function(PsychologicalAssessmentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PsychologicalAssessmentRecordBuilder toBuilder() =>
      new PsychologicalAssessmentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PsychologicalAssessmentRecord &&
        distressThermometer == other.distressThermometer &&
        familyBbn == other.familyBbn &&
        familyGoalOfCare == other.familyGoalOfCare &&
        psp == other.psp &&
        visitId == other.visitId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, distressThermometer.hashCode),
                        familyBbn.hashCode),
                    familyGoalOfCare.hashCode),
                psp.hashCode),
            visitId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PsychologicalAssessmentRecord')
          ..add('distressThermometer', distressThermometer)
          ..add('familyBbn', familyBbn)
          ..add('familyGoalOfCare', familyGoalOfCare)
          ..add('psp', psp)
          ..add('visitId', visitId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PsychologicalAssessmentRecordBuilder
    implements
        Builder<PsychologicalAssessmentRecord,
            PsychologicalAssessmentRecordBuilder> {
  _$PsychologicalAssessmentRecord? _$v;

  int? _distressThermometer;
  int? get distressThermometer => _$this._distressThermometer;
  set distressThermometer(int? distressThermometer) =>
      _$this._distressThermometer = distressThermometer;

  bool? _familyBbn;
  bool? get familyBbn => _$this._familyBbn;
  set familyBbn(bool? familyBbn) => _$this._familyBbn = familyBbn;

  bool? _familyGoalOfCare;
  bool? get familyGoalOfCare => _$this._familyGoalOfCare;
  set familyGoalOfCare(bool? familyGoalOfCare) =>
      _$this._familyGoalOfCare = familyGoalOfCare;

  bool? _psp;
  bool? get psp => _$this._psp;
  set psp(bool? psp) => _$this._psp = psp;

  DocumentReference<Object?>? _visitId;
  DocumentReference<Object?>? get visitId => _$this._visitId;
  set visitId(DocumentReference<Object?>? visitId) => _$this._visitId = visitId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PsychologicalAssessmentRecordBuilder() {
    PsychologicalAssessmentRecord._initializeBuilder(this);
  }

  PsychologicalAssessmentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _distressThermometer = $v.distressThermometer;
      _familyBbn = $v.familyBbn;
      _familyGoalOfCare = $v.familyGoalOfCare;
      _psp = $v.psp;
      _visitId = $v.visitId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PsychologicalAssessmentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PsychologicalAssessmentRecord;
  }

  @override
  void update(void Function(PsychologicalAssessmentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PsychologicalAssessmentRecord build() => _build();

  _$PsychologicalAssessmentRecord _build() {
    final _$result = _$v ??
        new _$PsychologicalAssessmentRecord._(
            distressThermometer: distressThermometer,
            familyBbn: familyBbn,
            familyGoalOfCare: familyGoalOfCare,
            psp: psp,
            visitId: visitId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
