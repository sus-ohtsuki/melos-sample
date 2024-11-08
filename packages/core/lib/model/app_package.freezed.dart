// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppPackage {
  String get appName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;
  String get installerStore => throw _privateConstructorUsedError;

  /// Create a copy of AppPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppPackageCopyWith<AppPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPackageCopyWith<$Res> {
  factory $AppPackageCopyWith(
          AppPackage value, $Res Function(AppPackage) then) =
      _$AppPackageCopyWithImpl<$Res, AppPackage>;
  @useResult
  $Res call(
      {String appName,
      String version,
      String buildNumber,
      String installerStore});
}

/// @nodoc
class _$AppPackageCopyWithImpl<$Res, $Val extends AppPackage>
    implements $AppPackageCopyWith<$Res> {
  _$AppPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? installerStore = null,
  }) {
    return _then(_value.copyWith(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      installerStore: null == installerStore
          ? _value.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppPackageImplCopyWith<$Res>
    implements $AppPackageCopyWith<$Res> {
  factory _$$AppPackageImplCopyWith(
          _$AppPackageImpl value, $Res Function(_$AppPackageImpl) then) =
      __$$AppPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appName,
      String version,
      String buildNumber,
      String installerStore});
}

/// @nodoc
class __$$AppPackageImplCopyWithImpl<$Res>
    extends _$AppPackageCopyWithImpl<$Res, _$AppPackageImpl>
    implements _$$AppPackageImplCopyWith<$Res> {
  __$$AppPackageImplCopyWithImpl(
      _$AppPackageImpl _value, $Res Function(_$AppPackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? version = null,
    Object? buildNumber = null,
    Object? installerStore = null,
  }) {
    return _then(_$AppPackageImpl(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: null == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      installerStore: null == installerStore
          ? _value.installerStore
          : installerStore // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppPackageImpl extends _AppPackage {
  const _$AppPackageImpl(
      {this.appName = '',
      this.version = '',
      this.buildNumber = '',
      this.installerStore = ''})
      : super._();

  @override
  @JsonKey()
  final String appName;
  @override
  @JsonKey()
  final String version;
  @override
  @JsonKey()
  final String buildNumber;
  @override
  @JsonKey()
  final String installerStore;

  @override
  String toString() {
    return 'AppPackage(appName: $appName, version: $version, buildNumber: $buildNumber, installerStore: $installerStore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppPackageImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.installerStore, installerStore) ||
                other.installerStore == installerStore));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appName, version, buildNumber, installerStore);

  /// Create a copy of AppPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppPackageImplCopyWith<_$AppPackageImpl> get copyWith =>
      __$$AppPackageImplCopyWithImpl<_$AppPackageImpl>(this, _$identity);
}

abstract class _AppPackage extends AppPackage {
  const factory _AppPackage(
      {final String appName,
      final String version,
      final String buildNumber,
      final String installerStore}) = _$AppPackageImpl;
  const _AppPackage._() : super._();

  @override
  String get appName;
  @override
  String get version;
  @override
  String get buildNumber;
  @override
  String get installerStore;

  /// Create a copy of AppPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppPackageImplCopyWith<_$AppPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
