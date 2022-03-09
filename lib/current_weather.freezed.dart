// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
class _$CurrentWeatherTearOff {
  const _$CurrentWeatherTearOff();

  _CurrentWeather call(
      {double? temp,
      double? feelsLike,
      int? pressure,
      int? humidity,
      List<dynamic> allTemp = const []}) {
    return _CurrentWeather(
      temp: temp,
      feelsLike: feelsLike,
      pressure: pressure,
      humidity: humidity,
      allTemp: allTemp,
    );
  }

  CurrentWeather fromJson(Map<String, Object?> json) {
    return CurrentWeather.fromJson(json);
  }
}

/// @nodoc
const $CurrentWeather = _$CurrentWeatherTearOff();

/// @nodoc
mixin _$CurrentWeather {
  double? get temp => throw _privateConstructorUsedError;
  double? get feelsLike => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  List<dynamic> get allTemp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res>;
  $Res call(
      {double? temp,
      double? feelsLike,
      int? pressure,
      int? humidity,
      List<dynamic> allTemp});
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  final CurrentWeather _value;
  // ignore: unused_field
  final $Res Function(CurrentWeather) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? allTemp = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      allTemp: allTemp == freezed
          ? _value.allTemp
          : allTemp // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$CurrentWeatherCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$CurrentWeatherCopyWith(
          _CurrentWeather value, $Res Function(_CurrentWeather) then) =
      __$CurrentWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? temp,
      double? feelsLike,
      int? pressure,
      int? humidity,
      List<dynamic> allTemp});
}

/// @nodoc
class __$CurrentWeatherCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res>
    implements _$CurrentWeatherCopyWith<$Res> {
  __$CurrentWeatherCopyWithImpl(
      _CurrentWeather _value, $Res Function(_CurrentWeather) _then)
      : super(_value, (v) => _then(v as _CurrentWeather));

  @override
  _CurrentWeather get _value => super._value as _CurrentWeather;

  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? allTemp = freezed,
  }) {
    return _then(_CurrentWeather(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      allTemp: allTemp == freezed
          ? _value.allTemp
          : allTemp // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeather extends _CurrentWeather with DiagnosticableTreeMixin {
  const _$_CurrentWeather(
      {this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.allTemp = const []})
      : super._();

  factory _$_CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherFromJson(json);

  @override
  final double? temp;
  @override
  final double? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @JsonKey()
  @override
  final List<dynamic> allTemp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWeather(temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, allTemp: $allTemp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentWeather'))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('feelsLike', feelsLike))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('allTemp', allTemp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentWeather &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.feelsLike, feelsLike) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.allTemp, allTemp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(feelsLike),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(allTemp));

  @JsonKey(ignore: true)
  @override
  _$CurrentWeatherCopyWith<_CurrentWeather> get copyWith =>
      __$CurrentWeatherCopyWithImpl<_CurrentWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherToJson(this);
  }
}

abstract class _CurrentWeather extends CurrentWeather {
  const factory _CurrentWeather(
      {double? temp,
      double? feelsLike,
      int? pressure,
      int? humidity,
      List<dynamic> allTemp}) = _$_CurrentWeather;
  const _CurrentWeather._() : super._();

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeather.fromJson;

  @override
  double? get temp;
  @override
  double? get feelsLike;
  @override
  int? get pressure;
  @override
  int? get humidity;
  @override
  List<dynamic> get allTemp;
  @override
  @JsonKey(ignore: true)
  _$CurrentWeatherCopyWith<_CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
