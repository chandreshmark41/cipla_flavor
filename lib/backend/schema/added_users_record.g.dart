// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'added_users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddedUsersRecord> _$addedUsersRecordSerializer =
    new _$AddedUsersRecordSerializer();

class _$AddedUsersRecordSerializer
    implements StructuredSerializer<AddedUsersRecord> {
  @override
  final Iterable<Type> types = const [AddedUsersRecord, _$AddedUsersRecord];
  @override
  final String wireName = 'AddedUsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddedUsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pincode;
    if (value != null) {
      result
        ..add('pincode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.street;
    if (value != null) {
      result
        ..add('street')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.compass;
    if (value != null) {
      result
        ..add('compass')
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
  AddedUsersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddedUsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'compass':
          result.compass = serializers.deserialize(value,
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

class _$AddedUsersRecord extends AddedUsersRecord {
  @override
  final String? email;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? pincode;
  @override
  final String? city;
  @override
  final String? street;
  @override
  final String? role;
  @override
  final String? state;
  @override
  final String? displayName;
  @override
  final String? uid;
  @override
  final String? photoUrl;
  @override
  final String? compass;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AddedUsersRecord(
          [void Function(AddedUsersRecordBuilder)? updates]) =>
      (new AddedUsersRecordBuilder()..update(updates))._build();

  _$AddedUsersRecord._(
      {this.email,
      this.createdTime,
      this.phoneNumber,
      this.firstName,
      this.lastName,
      this.pincode,
      this.city,
      this.street,
      this.role,
      this.state,
      this.displayName,
      this.uid,
      this.photoUrl,
      this.compass,
      this.ffRef})
      : super._();

  @override
  AddedUsersRecord rebuild(void Function(AddedUsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddedUsersRecordBuilder toBuilder() =>
      new AddedUsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddedUsersRecord &&
        email == other.email &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        pincode == other.pincode &&
        city == other.city &&
        street == other.street &&
        role == other.role &&
        state == other.state &&
        displayName == other.displayName &&
        uid == other.uid &&
        photoUrl == other.photoUrl &&
        compass == other.compass &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                email.hashCode),
                                                            createdTime
                                                                .hashCode),
                                                        phoneNumber.hashCode),
                                                    firstName.hashCode),
                                                lastName.hashCode),
                                            pincode.hashCode),
                                        city.hashCode),
                                    street.hashCode),
                                role.hashCode),
                            state.hashCode),
                        displayName.hashCode),
                    uid.hashCode),
                photoUrl.hashCode),
            compass.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddedUsersRecord')
          ..add('email', email)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('pincode', pincode)
          ..add('city', city)
          ..add('street', street)
          ..add('role', role)
          ..add('state', state)
          ..add('displayName', displayName)
          ..add('uid', uid)
          ..add('photoUrl', photoUrl)
          ..add('compass', compass)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AddedUsersRecordBuilder
    implements Builder<AddedUsersRecord, AddedUsersRecordBuilder> {
  _$AddedUsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _pincode;
  String? get pincode => _$this._pincode;
  set pincode(String? pincode) => _$this._pincode = pincode;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _compass;
  String? get compass => _$this._compass;
  set compass(String? compass) => _$this._compass = compass;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AddedUsersRecordBuilder() {
    AddedUsersRecord._initializeBuilder(this);
  }

  AddedUsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _pincode = $v.pincode;
      _city = $v.city;
      _street = $v.street;
      _role = $v.role;
      _state = $v.state;
      _displayName = $v.displayName;
      _uid = $v.uid;
      _photoUrl = $v.photoUrl;
      _compass = $v.compass;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddedUsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddedUsersRecord;
  }

  @override
  void update(void Function(AddedUsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddedUsersRecord build() => _build();

  _$AddedUsersRecord _build() {
    final _$result = _$v ??
        new _$AddedUsersRecord._(
            email: email,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            firstName: firstName,
            lastName: lastName,
            pincode: pincode,
            city: city,
            street: street,
            role: role,
            state: state,
            displayName: displayName,
            uid: uid,
            photoUrl: photoUrl,
            compass: compass,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
