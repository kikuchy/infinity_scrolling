// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timeline_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TimelineStateTearOff {
  const _$TimelineStateTearOff();

// ignore: unused_element
  _Loading loading(
      {List<TimelineItem> items = const [],
      NextPageToken nextToken = const NextPageToken.initial()}) {
    return _Loading(
      items: items,
      nextToken: nextToken,
    );
  }

// ignore: unused_element
  _Ready ready(
      {List<TimelineItem> items = const [],
      NextPageToken nextToken = const NextPageToken.initial()}) {
    return _Ready(
      items: items,
      nextToken: nextToken,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimelineState = _$TimelineStateTearOff();

/// @nodoc
mixin _$TimelineState {
  List<TimelineItem> get items;
  NextPageToken get nextToken;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult loading(List<TimelineItem> items, NextPageToken nextToken),
    @required TResult ready(List<TimelineItem> items, NextPageToken nextToken),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(List<TimelineItem> items, NextPageToken nextToken),
    TResult ready(List<TimelineItem> items, NextPageToken nextToken),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult ready(_Ready value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult ready(_Ready value),
    @required TResult orElse(),
  });

  $TimelineStateCopyWith<TimelineState> get copyWith;
}

/// @nodoc
abstract class $TimelineStateCopyWith<$Res> {
  factory $TimelineStateCopyWith(
          TimelineState value, $Res Function(TimelineState) then) =
      _$TimelineStateCopyWithImpl<$Res>;
  $Res call({List<TimelineItem> items, NextPageToken nextToken});
}

/// @nodoc
class _$TimelineStateCopyWithImpl<$Res>
    implements $TimelineStateCopyWith<$Res> {
  _$TimelineStateCopyWithImpl(this._value, this._then);

  final TimelineState _value;
  // ignore: unused_field
  final $Res Function(TimelineState) _then;

  @override
  $Res call({
    Object items = freezed,
    Object nextToken = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<TimelineItem>,
      nextToken:
          nextToken == freezed ? _value.nextToken : nextToken as NextPageToken,
    ));
  }
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $TimelineStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<TimelineItem> items, NextPageToken nextToken});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TimelineStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object items = freezed,
    Object nextToken = freezed,
  }) {
    return _then(_Loading(
      items: items == freezed ? _value.items : items as List<TimelineItem>,
      nextToken:
          nextToken == freezed ? _value.nextToken : nextToken as NextPageToken,
    ));
  }
}

/// @nodoc
class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  _$_Loading(
      {this.items = const [], this.nextToken = const NextPageToken.initial()})
      : assert(items != null),
        assert(nextToken != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<TimelineItem> items;
  @JsonKey(defaultValue: const NextPageToken.initial())
  @override
  final NextPageToken nextToken;

  bool _didhasNext = false;
  bool _hasNext;

  @override
  bool get hasNext {
    if (_didhasNext == false) {
      _didhasNext = true;
      _hasNext = nextToken.hasNext;
    }
    return _hasNext;
  }

  bool _didisLoading = false;
  bool _isLoading;

  @override
  bool get isLoading {
    if (_didisLoading == false) {
      _didisLoading = true;
      _isLoading = map(loading: (_) => true, ready: (_) => false);
    }
    return _isLoading;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimelineState.loading(items: $items, nextToken: $nextToken, hasNext: $hasNext, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimelineState.loading'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('nextToken', nextToken))
      ..add(DiagnosticsProperty('hasNext', hasNext))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.nextToken, nextToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextToken, nextToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(nextToken);

  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult loading(List<TimelineItem> items, NextPageToken nextToken),
    @required TResult ready(List<TimelineItem> items, NextPageToken nextToken),
  }) {
    assert(loading != null);
    assert(ready != null);
    return loading(items, nextToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(List<TimelineItem> items, NextPageToken nextToken),
    TResult ready(List<TimelineItem> items, NextPageToken nextToken),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(items, nextToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult ready(_Ready value),
  }) {
    assert(loading != null);
    assert(ready != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult ready(_Ready value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TimelineState {
  factory _Loading({List<TimelineItem> items, NextPageToken nextToken}) =
      _$_Loading;

  @override
  List<TimelineItem> get items;
  @override
  NextPageToken get nextToken;
  @override
  _$LoadingCopyWith<_Loading> get copyWith;
}

/// @nodoc
abstract class _$ReadyCopyWith<$Res> implements $TimelineStateCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
      __$ReadyCopyWithImpl<$Res>;
  @override
  $Res call({List<TimelineItem> items, NextPageToken nextToken});
}

/// @nodoc
class __$ReadyCopyWithImpl<$Res> extends _$TimelineStateCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
      : super(_value, (v) => _then(v as _Ready));

  @override
  _Ready get _value => super._value as _Ready;

  @override
  $Res call({
    Object items = freezed,
    Object nextToken = freezed,
  }) {
    return _then(_Ready(
      items: items == freezed ? _value.items : items as List<TimelineItem>,
      nextToken:
          nextToken == freezed ? _value.nextToken : nextToken as NextPageToken,
    ));
  }
}

/// @nodoc
class _$_Ready with DiagnosticableTreeMixin implements _Ready {
  _$_Ready(
      {this.items = const [], this.nextToken = const NextPageToken.initial()})
      : assert(items != null),
        assert(nextToken != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<TimelineItem> items;
  @JsonKey(defaultValue: const NextPageToken.initial())
  @override
  final NextPageToken nextToken;

  bool _didhasNext = false;
  bool _hasNext;

  @override
  bool get hasNext {
    if (_didhasNext == false) {
      _didhasNext = true;
      _hasNext = nextToken.hasNext;
    }
    return _hasNext;
  }

  bool _didisLoading = false;
  bool _isLoading;

  @override
  bool get isLoading {
    if (_didisLoading == false) {
      _didisLoading = true;
      _isLoading = map(loading: (_) => true, ready: (_) => false);
    }
    return _isLoading;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimelineState.ready(items: $items, nextToken: $nextToken, hasNext: $hasNext, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimelineState.ready'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('nextToken', nextToken))
      ..add(DiagnosticsProperty('hasNext', hasNext))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ready &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.nextToken, nextToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextToken, nextToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(nextToken);

  @override
  _$ReadyCopyWith<_Ready> get copyWith =>
      __$ReadyCopyWithImpl<_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult loading(List<TimelineItem> items, NextPageToken nextToken),
    @required TResult ready(List<TimelineItem> items, NextPageToken nextToken),
  }) {
    assert(loading != null);
    assert(ready != null);
    return ready(items, nextToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(List<TimelineItem> items, NextPageToken nextToken),
    TResult ready(List<TimelineItem> items, NextPageToken nextToken),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(items, nextToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult ready(_Ready value),
  }) {
    assert(loading != null);
    assert(ready != null);
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult ready(_Ready value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements TimelineState {
  factory _Ready({List<TimelineItem> items, NextPageToken nextToken}) =
      _$_Ready;

  @override
  List<TimelineItem> get items;
  @override
  NextPageToken get nextToken;
  @override
  _$ReadyCopyWith<_Ready> get copyWith;
}
