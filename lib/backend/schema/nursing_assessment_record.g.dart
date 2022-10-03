// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nursing_assessment_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NursingAssessmentRecord> _$nursingAssessmentRecordSerializer =
    new _$NursingAssessmentRecordSerializer();

class _$NursingAssessmentRecordSerializer
    implements StructuredSerializer<NursingAssessmentRecord> {
  @override
  final Iterable<Type> types = const [
    NursingAssessmentRecord,
    _$NursingAssessmentRecord
  ];
  @override
  final String wireName = 'NursingAssessmentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NursingAssessmentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.painscore;
    if (value != null) {
      result
        ..add('Painscore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.bedridden;
    if (value != null) {
      result
        ..add('Bedridden')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.bleeding;
    if (value != null) {
      result
        ..add('bleeding')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.breathlessness;
    if (value != null) {
      result
        ..add('breathlessness')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.restlessness;
    if (value != null) {
      result
        ..add('restlessness')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.clinicallystable;
    if (value != null) {
      result
        ..add('Clinicallystable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.woundprogression;
    if (value != null) {
      result
        ..add('Woundprogression')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.nowoundsorfeedingassistance;
    if (value != null) {
      result
        ..add('Nowoundsorfeedingassistance')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.oncatheterstoma;
    if (value != null) {
      result
        ..add('Oncatheterstoma')
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
  NursingAssessmentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NursingAssessmentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Painscore':
          result.painscore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Bedridden':
          result.bedridden = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'bleeding':
          result.bleeding = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'breathlessness':
          result.breathlessness = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'restlessness':
          result.restlessness = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Clinicallystable':
          result.clinicallystable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Woundprogression':
          result.woundprogression = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Nowoundsorfeedingassistance':
          result.nowoundsorfeedingassistance = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Oncatheterstoma':
          result.oncatheterstoma = serializers.deserialize(value,
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

class _$NursingAssessmentRecord extends NursingAssessmentRecord {
  @override
  final int? painscore;
  @override
  final bool? bedridden;
  @override
  final bool? bleeding;
  @override
  final bool? breathlessness;
  @override
  final bool? restlessness;
  @override
  final bool? clinicallystable;
  @override
  final bool? woundprogression;
  @override
  final bool? nowoundsorfeedingassistance;
  @override
  final bool? oncatheterstoma;
  @override
  final DocumentReference<Object?>? visitId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NursingAssessmentRecord(
          [void Function(NursingAssessmentRecordBuilder)? updates]) =>
      (new NursingAssessmentRecordBuilder()..update(updates))._build();

  _$NursingAssessmentRecord._(
      {this.painscore,
      this.bedridden,
      this.bleeding,
      this.breathlessness,
      this.restlessness,
      this.clinicallystable,
      this.woundprogression,
      this.nowoundsorfeedingassistance,
      this.oncatheterstoma,
      this.visitId,
      this.ffRef})
      : super._();

  @override
  NursingAssessmentRecord rebuild(
          void Function(NursingAssessmentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NursingAssessmentRecordBuilder toBuilder() =>
      new NursingAssessmentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NursingAssessmentRecord &&
        painscore == other.painscore &&
        bedridden == other.bedridden &&
        bleeding == other.bleeding &&
        breathlessness == other.breathlessness &&
        restlessness == other.restlessness &&
        clinicallystable == other.clinicallystable &&
        woundprogression == other.woundprogression &&
        nowoundsorfeedingassistance == other.nowoundsorfeedingassistance &&
        oncatheterstoma == other.oncatheterstoma &&
        visitId == other.visitId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, painscore.hashCode),
                                            bedridden.hashCode),
                                        bleeding.hashCode),
                                    breathlessness.hashCode),
                                restlessness.hashCode),
                            clinicallystable.hashCode),
                        woundprogression.hashCode),
                    nowoundsorfeedingassistance.hashCode),
                oncatheterstoma.hashCode),
            visitId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NursingAssessmentRecord')
          ..add('painscore', painscore)
          ..add('bedridden', bedridden)
          ..add('bleeding', bleeding)
          ..add('breathlessness', breathlessness)
          ..add('restlessness', restlessness)
          ..add('clinicallystable', clinicallystable)
          ..add('woundprogression', woundprogression)
          ..add('nowoundsorfeedingassistance', nowoundsorfeedingassistance)
          ..add('oncatheterstoma', oncatheterstoma)
          ..add('visitId', visitId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NursingAssessmentRecordBuilder
    implements
        Builder<NursingAssessmentRecord, NursingAssessmentRecordBuilder> {
  _$NursingAssessmentRecord? _$v;

  int? _painscore;
  int? get painscore => _$this._painscore;
  set painscore(int? painscore) => _$this._painscore = painscore;

  bool? _bedridden;
  bool? get bedridden => _$this._bedridden;
  set bedridden(bool? bedridden) => _$this._bedridden = bedridden;

  bool? _bleeding;
  bool? get bleeding => _$this._bleeding;
  set bleeding(bool? bleeding) => _$this._bleeding = bleeding;

  bool? _breathlessness;
  bool? get breathlessness => _$this._breathlessness;
  set breathlessness(bool? breathlessness) =>
      _$this._breathlessness = breathlessness;

  bool? _restlessness;
  bool? get restlessness => _$this._restlessness;
  set restlessness(bool? restlessness) => _$this._restlessness = restlessness;

  bool? _clinicallystable;
  bool? get clinicallystable => _$this._clinicallystable;
  set clinicallystable(bool? clinicallystable) =>
      _$this._clinicallystable = clinicallystable;

  bool? _woundprogression;
  bool? get woundprogression => _$this._woundprogression;
  set woundprogression(bool? woundprogression) =>
      _$this._woundprogression = woundprogression;

  bool? _nowoundsorfeedingassistance;
  bool? get nowoundsorfeedingassistance => _$this._nowoundsorfeedingassistance;
  set nowoundsorfeedingassistance(bool? nowoundsorfeedingassistance) =>
      _$this._nowoundsorfeedingassistance = nowoundsorfeedingassistance;

  bool? _oncatheterstoma;
  bool? get oncatheterstoma => _$this._oncatheterstoma;
  set oncatheterstoma(bool? oncatheterstoma) =>
      _$this._oncatheterstoma = oncatheterstoma;

  DocumentReference<Object?>? _visitId;
  DocumentReference<Object?>? get visitId => _$this._visitId;
  set visitId(DocumentReference<Object?>? visitId) => _$this._visitId = visitId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NursingAssessmentRecordBuilder() {
    NursingAssessmentRecord._initializeBuilder(this);
  }

  NursingAssessmentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _painscore = $v.painscore;
      _bedridden = $v.bedridden;
      _bleeding = $v.bleeding;
      _breathlessness = $v.breathlessness;
      _restlessness = $v.restlessness;
      _clinicallystable = $v.clinicallystable;
      _woundprogression = $v.woundprogression;
      _nowoundsorfeedingassistance = $v.nowoundsorfeedingassistance;
      _oncatheterstoma = $v.oncatheterstoma;
      _visitId = $v.visitId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NursingAssessmentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NursingAssessmentRecord;
  }

  @override
  void update(void Function(NursingAssessmentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NursingAssessmentRecord build() => _build();

  _$NursingAssessmentRecord _build() {
    final _$result = _$v ??
        new _$NursingAssessmentRecord._(
            painscore: painscore,
            bedridden: bedridden,
            bleeding: bleeding,
            breathlessness: breathlessness,
            restlessness: restlessness,
            clinicallystable: clinicallystable,
            woundprogression: woundprogression,
            nowoundsorfeedingassistance: nowoundsorfeedingassistance,
            oncatheterstoma: oncatheterstoma,
            visitId: visitId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
