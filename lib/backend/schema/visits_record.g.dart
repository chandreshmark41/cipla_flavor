// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visits_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VisitsRecord> _$visitsRecordSerializer =
    new _$VisitsRecordSerializer();

class _$VisitsRecordSerializer implements StructuredSerializer<VisitsRecord> {
  @override
  final Iterable<Type> types = const [VisitsRecord, _$VisitsRecord];
  @override
  final String wireName = 'VisitsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VisitsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.caseId;
    if (value != null) {
      result
        ..add('case_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.scheduledDate;
    if (value != null) {
      result
        ..add('scheduled_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdOn;
    if (value != null) {
      result
        ..add('created_on')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.currentPriority;
    if (value != null) {
      result
        ..add('current_priority')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedPriority;
    if (value != null) {
      result
        ..add('updated_priority')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.visitNotes;
    if (value != null) {
      result
        ..add('visit_notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.doctorId;
    if (value != null) {
      result
        ..add('doctor_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nurseId;
    if (value != null) {
      result
        ..add('nurse_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mswId;
    if (value != null) {
      result
        ..add('msw_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isCompleted;
    if (value != null) {
      result
        ..add('is_completed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  VisitsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VisitsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'case_id':
          result.caseId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'scheduled_date':
          result.scheduledDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'created_on':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'current_priority':
          result.currentPriority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_priority':
          result.updatedPriority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'visit_notes':
          result.visitNotes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'doctor_id':
          result.doctorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nurse_id':
          result.nurseId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'msw_id':
          result.mswId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_completed':
          result.isCompleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$VisitsRecord extends VisitsRecord {
  @override
  final DocumentReference<Object?>? caseId;
  @override
  final DateTime? scheduledDate;
  @override
  final DateTime? createdOn;
  @override
  final String? currentPriority;
  @override
  final String? updatedPriority;
  @override
  final String? status;
  @override
  final String? visitNotes;
  @override
  final String? doctorId;
  @override
  final String? nurseId;
  @override
  final String? mswId;
  @override
  final bool? isCompleted;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VisitsRecord([void Function(VisitsRecordBuilder)? updates]) =>
      (new VisitsRecordBuilder()..update(updates))._build();

  _$VisitsRecord._(
      {this.caseId,
      this.scheduledDate,
      this.createdOn,
      this.currentPriority,
      this.updatedPriority,
      this.status,
      this.visitNotes,
      this.doctorId,
      this.nurseId,
      this.mswId,
      this.isCompleted,
      this.ffRef})
      : super._();

  @override
  VisitsRecord rebuild(void Function(VisitsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VisitsRecordBuilder toBuilder() => new VisitsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VisitsRecord &&
        caseId == other.caseId &&
        scheduledDate == other.scheduledDate &&
        createdOn == other.createdOn &&
        currentPriority == other.currentPriority &&
        updatedPriority == other.updatedPriority &&
        status == other.status &&
        visitNotes == other.visitNotes &&
        doctorId == other.doctorId &&
        nurseId == other.nurseId &&
        mswId == other.mswId &&
        isCompleted == other.isCompleted &&
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
                                        $jc(
                                            $jc($jc(0, caseId.hashCode),
                                                scheduledDate.hashCode),
                                            createdOn.hashCode),
                                        currentPriority.hashCode),
                                    updatedPriority.hashCode),
                                status.hashCode),
                            visitNotes.hashCode),
                        doctorId.hashCode),
                    nurseId.hashCode),
                mswId.hashCode),
            isCompleted.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VisitsRecord')
          ..add('caseId', caseId)
          ..add('scheduledDate', scheduledDate)
          ..add('createdOn', createdOn)
          ..add('currentPriority', currentPriority)
          ..add('updatedPriority', updatedPriority)
          ..add('status', status)
          ..add('visitNotes', visitNotes)
          ..add('doctorId', doctorId)
          ..add('nurseId', nurseId)
          ..add('mswId', mswId)
          ..add('isCompleted', isCompleted)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VisitsRecordBuilder
    implements Builder<VisitsRecord, VisitsRecordBuilder> {
  _$VisitsRecord? _$v;

  DocumentReference<Object?>? _caseId;
  DocumentReference<Object?>? get caseId => _$this._caseId;
  set caseId(DocumentReference<Object?>? caseId) => _$this._caseId = caseId;

  DateTime? _scheduledDate;
  DateTime? get scheduledDate => _$this._scheduledDate;
  set scheduledDate(DateTime? scheduledDate) =>
      _$this._scheduledDate = scheduledDate;

  DateTime? _createdOn;
  DateTime? get createdOn => _$this._createdOn;
  set createdOn(DateTime? createdOn) => _$this._createdOn = createdOn;

  String? _currentPriority;
  String? get currentPriority => _$this._currentPriority;
  set currentPriority(String? currentPriority) =>
      _$this._currentPriority = currentPriority;

  String? _updatedPriority;
  String? get updatedPriority => _$this._updatedPriority;
  set updatedPriority(String? updatedPriority) =>
      _$this._updatedPriority = updatedPriority;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _visitNotes;
  String? get visitNotes => _$this._visitNotes;
  set visitNotes(String? visitNotes) => _$this._visitNotes = visitNotes;

  String? _doctorId;
  String? get doctorId => _$this._doctorId;
  set doctorId(String? doctorId) => _$this._doctorId = doctorId;

  String? _nurseId;
  String? get nurseId => _$this._nurseId;
  set nurseId(String? nurseId) => _$this._nurseId = nurseId;

  String? _mswId;
  String? get mswId => _$this._mswId;
  set mswId(String? mswId) => _$this._mswId = mswId;

  bool? _isCompleted;
  bool? get isCompleted => _$this._isCompleted;
  set isCompleted(bool? isCompleted) => _$this._isCompleted = isCompleted;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VisitsRecordBuilder() {
    VisitsRecord._initializeBuilder(this);
  }

  VisitsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _caseId = $v.caseId;
      _scheduledDate = $v.scheduledDate;
      _createdOn = $v.createdOn;
      _currentPriority = $v.currentPriority;
      _updatedPriority = $v.updatedPriority;
      _status = $v.status;
      _visitNotes = $v.visitNotes;
      _doctorId = $v.doctorId;
      _nurseId = $v.nurseId;
      _mswId = $v.mswId;
      _isCompleted = $v.isCompleted;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VisitsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VisitsRecord;
  }

  @override
  void update(void Function(VisitsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VisitsRecord build() => _build();

  _$VisitsRecord _build() {
    final _$result = _$v ??
        new _$VisitsRecord._(
            caseId: caseId,
            scheduledDate: scheduledDate,
            createdOn: createdOn,
            currentPriority: currentPriority,
            updatedPriority: updatedPriority,
            status: status,
            visitNotes: visitNotes,
            doctorId: doctorId,
            nurseId: nurseId,
            mswId: mswId,
            isCompleted: isCompleted,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
