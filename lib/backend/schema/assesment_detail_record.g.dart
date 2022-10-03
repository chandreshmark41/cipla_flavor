// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assesment_detail_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AssesmentDetailRecord> _$assesmentDetailRecordSerializer =
    new _$AssesmentDetailRecordSerializer();

class _$AssesmentDetailRecordSerializer
    implements StructuredSerializer<AssesmentDetailRecord> {
  @override
  final Iterable<Type> types = const [
    AssesmentDetailRecord,
    _$AssesmentDetailRecord
  ];
  @override
  final String wireName = 'AssesmentDetailRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AssesmentDetailRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.painScore;
    if (value != null) {
      result
        ..add('pain_score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.breathlessness;
    if (value != null) {
      result
        ..add('breathlessness')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.titration;
    if (value != null) {
      result
        ..add('titration')
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
    value = object.endOfLife;
    if (value != null) {
      result
        ..add('endOfLife')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.remmission;
    if (value != null) {
      result
        ..add('remmission')
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
  AssesmentDetailRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AssesmentDetailRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pain_score':
          result.painScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'breathlessness':
          result.breathlessness = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'titration':
          result.titration = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'restlessness':
          result.restlessness = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'endOfLife':
          result.endOfLife = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'remmission':
          result.remmission = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Clinicallystable':
          result.clinicallystable = serializers.deserialize(value,
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

class _$AssesmentDetailRecord extends AssesmentDetailRecord {
  @override
  final int? painScore;
  @override
  final bool? breathlessness;
  @override
  final bool? titration;
  @override
  final bool? restlessness;
  @override
  final bool? endOfLife;
  @override
  final bool? remmission;
  @override
  final bool? clinicallystable;
  @override
  final DocumentReference<Object?>? visitId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AssesmentDetailRecord(
          [void Function(AssesmentDetailRecordBuilder)? updates]) =>
      (new AssesmentDetailRecordBuilder()..update(updates))._build();

  _$AssesmentDetailRecord._(
      {this.painScore,
      this.breathlessness,
      this.titration,
      this.restlessness,
      this.endOfLife,
      this.remmission,
      this.clinicallystable,
      this.visitId,
      this.ffRef})
      : super._();

  @override
  AssesmentDetailRecord rebuild(
          void Function(AssesmentDetailRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssesmentDetailRecordBuilder toBuilder() =>
      new AssesmentDetailRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssesmentDetailRecord &&
        painScore == other.painScore &&
        breathlessness == other.breathlessness &&
        titration == other.titration &&
        restlessness == other.restlessness &&
        endOfLife == other.endOfLife &&
        remmission == other.remmission &&
        clinicallystable == other.clinicallystable &&
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
                                $jc($jc(0, painScore.hashCode),
                                    breathlessness.hashCode),
                                titration.hashCode),
                            restlessness.hashCode),
                        endOfLife.hashCode),
                    remmission.hashCode),
                clinicallystable.hashCode),
            visitId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssesmentDetailRecord')
          ..add('painScore', painScore)
          ..add('breathlessness', breathlessness)
          ..add('titration', titration)
          ..add('restlessness', restlessness)
          ..add('endOfLife', endOfLife)
          ..add('remmission', remmission)
          ..add('clinicallystable', clinicallystable)
          ..add('visitId', visitId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AssesmentDetailRecordBuilder
    implements Builder<AssesmentDetailRecord, AssesmentDetailRecordBuilder> {
  _$AssesmentDetailRecord? _$v;

  int? _painScore;
  int? get painScore => _$this._painScore;
  set painScore(int? painScore) => _$this._painScore = painScore;

  bool? _breathlessness;
  bool? get breathlessness => _$this._breathlessness;
  set breathlessness(bool? breathlessness) =>
      _$this._breathlessness = breathlessness;

  bool? _titration;
  bool? get titration => _$this._titration;
  set titration(bool? titration) => _$this._titration = titration;

  bool? _restlessness;
  bool? get restlessness => _$this._restlessness;
  set restlessness(bool? restlessness) => _$this._restlessness = restlessness;

  bool? _endOfLife;
  bool? get endOfLife => _$this._endOfLife;
  set endOfLife(bool? endOfLife) => _$this._endOfLife = endOfLife;

  bool? _remmission;
  bool? get remmission => _$this._remmission;
  set remmission(bool? remmission) => _$this._remmission = remmission;

  bool? _clinicallystable;
  bool? get clinicallystable => _$this._clinicallystable;
  set clinicallystable(bool? clinicallystable) =>
      _$this._clinicallystable = clinicallystable;

  DocumentReference<Object?>? _visitId;
  DocumentReference<Object?>? get visitId => _$this._visitId;
  set visitId(DocumentReference<Object?>? visitId) => _$this._visitId = visitId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AssesmentDetailRecordBuilder() {
    AssesmentDetailRecord._initializeBuilder(this);
  }

  AssesmentDetailRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _painScore = $v.painScore;
      _breathlessness = $v.breathlessness;
      _titration = $v.titration;
      _restlessness = $v.restlessness;
      _endOfLife = $v.endOfLife;
      _remmission = $v.remmission;
      _clinicallystable = $v.clinicallystable;
      _visitId = $v.visitId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssesmentDetailRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssesmentDetailRecord;
  }

  @override
  void update(void Function(AssesmentDetailRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssesmentDetailRecord build() => _build();

  _$AssesmentDetailRecord _build() {
    final _$result = _$v ??
        new _$AssesmentDetailRecord._(
            painScore: painScore,
            breathlessness: breathlessness,
            titration: titration,
            restlessness: restlessness,
            endOfLife: endOfLife,
            remmission: remmission,
            clinicallystable: clinicallystable,
            visitId: visitId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
