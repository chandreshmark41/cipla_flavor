// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cases_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CasesRecord> _$casesRecordSerializer = new _$CasesRecordSerializer();

class _$CasesRecordSerializer implements StructuredSerializer<CasesRecord> {
  @override
  final Iterable<Type> types = const [CasesRecord, _$CasesRecord];
  @override
  final String wireName = 'CasesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CasesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.priority;
    if (value != null) {
      result
        ..add('priority')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.createdOn;
    if (value != null) {
      result
        ..add('created_on')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.adminId;
    if (value != null) {
      result
        ..add('admin_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patientId;
    if (value != null) {
      result
        ..add('patient_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CasesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CasesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_active':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'created_on':
          result.createdOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'admin_id':
          result.adminId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'patient_id':
          result.patientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CasesRecord extends CasesRecord {
  @override
  final String? priority;
  @override
  final bool? isActive;
  @override
  final DateTime? createdOn;
  @override
  final String? adminId;
  @override
  final String? patientId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CasesRecord([void Function(CasesRecordBuilder)? updates]) =>
      (new CasesRecordBuilder()..update(updates))._build();

  _$CasesRecord._(
      {this.priority,
      this.isActive,
      this.createdOn,
      this.adminId,
      this.patientId,
      this.ffRef})
      : super._();

  @override
  CasesRecord rebuild(void Function(CasesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CasesRecordBuilder toBuilder() => new CasesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CasesRecord &&
        priority == other.priority &&
        isActive == other.isActive &&
        createdOn == other.createdOn &&
        adminId == other.adminId &&
        patientId == other.patientId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, priority.hashCode), isActive.hashCode),
                    createdOn.hashCode),
                adminId.hashCode),
            patientId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CasesRecord')
          ..add('priority', priority)
          ..add('isActive', isActive)
          ..add('createdOn', createdOn)
          ..add('adminId', adminId)
          ..add('patientId', patientId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CasesRecordBuilder implements Builder<CasesRecord, CasesRecordBuilder> {
  _$CasesRecord? _$v;

  String? _priority;
  String? get priority => _$this._priority;
  set priority(String? priority) => _$this._priority = priority;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  DateTime? _createdOn;
  DateTime? get createdOn => _$this._createdOn;
  set createdOn(DateTime? createdOn) => _$this._createdOn = createdOn;

  String? _adminId;
  String? get adminId => _$this._adminId;
  set adminId(String? adminId) => _$this._adminId = adminId;

  String? _patientId;
  String? get patientId => _$this._patientId;
  set patientId(String? patientId) => _$this._patientId = patientId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CasesRecordBuilder() {
    CasesRecord._initializeBuilder(this);
  }

  CasesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _priority = $v.priority;
      _isActive = $v.isActive;
      _createdOn = $v.createdOn;
      _adminId = $v.adminId;
      _patientId = $v.patientId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CasesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CasesRecord;
  }

  @override
  void update(void Function(CasesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CasesRecord build() => _build();

  _$CasesRecord _build() {
    final _$result = _$v ??
        new _$CasesRecord._(
            priority: priority,
            isActive: isActive,
            createdOn: createdOn,
            adminId: adminId,
            patientId: patientId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
