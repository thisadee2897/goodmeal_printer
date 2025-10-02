// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'footer_order_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FooterOrderHistoryModel _$FooterOrderHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _FooterOrderHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$FooterOrderHistoryModel {
  @JsonKey(name: 'total_items')
  num? get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  num? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_charge')
  num? get serviceCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'discounts')
  List<DiscountModel>? get discounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_discount')
  num? get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat_included')
  num? get vatIncluded => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_amount')
  num? get netAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'cash_received')
  num? get cashReceived => throw _privateConstructorUsedError;
  @JsonKey(name: 'change')
  num? get change => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_methods')
  List<PaymentMethodModel>? get paymentMethods =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<CategoryModel>? get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_categories_amount')
  num? get totalCategoriesAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'points')
  List<PointModel>? get points => throw _privateConstructorUsedError;

  /// Serializes this FooterOrderHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FooterOrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FooterOrderHistoryModelCopyWith<FooterOrderHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooterOrderHistoryModelCopyWith<$Res> {
  factory $FooterOrderHistoryModelCopyWith(FooterOrderHistoryModel value,
          $Res Function(FooterOrderHistoryModel) then) =
      _$FooterOrderHistoryModelCopyWithImpl<$Res, FooterOrderHistoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_items') num? totalItems,
      @JsonKey(name: 'total_amount') num? totalAmount,
      @JsonKey(name: 'service_charge') num? serviceCharge,
      @JsonKey(name: 'discounts') List<DiscountModel>? discounts,
      @JsonKey(name: 'total_discount') num? totalDiscount,
      @JsonKey(name: 'vat_included') num? vatIncluded,
      @JsonKey(name: 'net_amount') num? netAmount,
      @JsonKey(name: 'cash_received') num? cashReceived,
      @JsonKey(name: 'change') num? change,
      @JsonKey(name: 'payment_methods')
      List<PaymentMethodModel>? paymentMethods,
      @JsonKey(name: 'categories') List<CategoryModel>? categories,
      @JsonKey(name: 'total_categories_amount') num? totalCategoriesAmount,
      @JsonKey(name: 'points') List<PointModel>? points});
}

/// @nodoc
class _$FooterOrderHistoryModelCopyWithImpl<$Res,
        $Val extends FooterOrderHistoryModel>
    implements $FooterOrderHistoryModelCopyWith<$Res> {
  _$FooterOrderHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FooterOrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? totalAmount = freezed,
    Object? serviceCharge = freezed,
    Object? discounts = freezed,
    Object? totalDiscount = freezed,
    Object? vatIncluded = freezed,
    Object? netAmount = freezed,
    Object? cashReceived = freezed,
    Object? change = freezed,
    Object? paymentMethods = freezed,
    Object? categories = freezed,
    Object? totalCategoriesAmount = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as num?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      serviceCharge: freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as num?,
      discounts: freezed == discounts
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel>?,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as num?,
      vatIncluded: freezed == vatIncluded
          ? _value.vatIncluded
          : vatIncluded // ignore: cast_nullable_to_non_nullable
              as num?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      cashReceived: freezed == cashReceived
          ? _value.cashReceived
          : cashReceived // ignore: cast_nullable_to_non_nullable
              as num?,
      change: freezed == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as num?,
      paymentMethods: freezed == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodModel>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      totalCategoriesAmount: freezed == totalCategoriesAmount
          ? _value.totalCategoriesAmount
          : totalCategoriesAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FooterOrderHistoryModelImplCopyWith<$Res>
    implements $FooterOrderHistoryModelCopyWith<$Res> {
  factory _$$FooterOrderHistoryModelImplCopyWith(
          _$FooterOrderHistoryModelImpl value,
          $Res Function(_$FooterOrderHistoryModelImpl) then) =
      __$$FooterOrderHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_items') num? totalItems,
      @JsonKey(name: 'total_amount') num? totalAmount,
      @JsonKey(name: 'service_charge') num? serviceCharge,
      @JsonKey(name: 'discounts') List<DiscountModel>? discounts,
      @JsonKey(name: 'total_discount') num? totalDiscount,
      @JsonKey(name: 'vat_included') num? vatIncluded,
      @JsonKey(name: 'net_amount') num? netAmount,
      @JsonKey(name: 'cash_received') num? cashReceived,
      @JsonKey(name: 'change') num? change,
      @JsonKey(name: 'payment_methods')
      List<PaymentMethodModel>? paymentMethods,
      @JsonKey(name: 'categories') List<CategoryModel>? categories,
      @JsonKey(name: 'total_categories_amount') num? totalCategoriesAmount,
      @JsonKey(name: 'points') List<PointModel>? points});
}

/// @nodoc
class __$$FooterOrderHistoryModelImplCopyWithImpl<$Res>
    extends _$FooterOrderHistoryModelCopyWithImpl<$Res,
        _$FooterOrderHistoryModelImpl>
    implements _$$FooterOrderHistoryModelImplCopyWith<$Res> {
  __$$FooterOrderHistoryModelImplCopyWithImpl(
      _$FooterOrderHistoryModelImpl _value,
      $Res Function(_$FooterOrderHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FooterOrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? totalAmount = freezed,
    Object? serviceCharge = freezed,
    Object? discounts = freezed,
    Object? totalDiscount = freezed,
    Object? vatIncluded = freezed,
    Object? netAmount = freezed,
    Object? cashReceived = freezed,
    Object? change = freezed,
    Object? paymentMethods = freezed,
    Object? categories = freezed,
    Object? totalCategoriesAmount = freezed,
    Object? points = freezed,
  }) {
    return _then(_$FooterOrderHistoryModelImpl(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as num?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      serviceCharge: freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as num?,
      discounts: freezed == discounts
          ? _value._discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel>?,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as num?,
      vatIncluded: freezed == vatIncluded
          ? _value.vatIncluded
          : vatIncluded // ignore: cast_nullable_to_non_nullable
              as num?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      cashReceived: freezed == cashReceived
          ? _value.cashReceived
          : cashReceived // ignore: cast_nullable_to_non_nullable
              as num?,
      change: freezed == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as num?,
      paymentMethods: freezed == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodModel>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      totalCategoriesAmount: freezed == totalCategoriesAmount
          ? _value.totalCategoriesAmount
          : totalCategoriesAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      points: freezed == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FooterOrderHistoryModelImpl implements _FooterOrderHistoryModel {
  const _$FooterOrderHistoryModelImpl(
      {@JsonKey(name: 'total_items') this.totalItems,
      @JsonKey(name: 'total_amount') this.totalAmount,
      @JsonKey(name: 'service_charge') this.serviceCharge,
      @JsonKey(name: 'discounts') final List<DiscountModel>? discounts,
      @JsonKey(name: 'total_discount') this.totalDiscount,
      @JsonKey(name: 'vat_included') this.vatIncluded,
      @JsonKey(name: 'net_amount') this.netAmount,
      @JsonKey(name: 'cash_received') this.cashReceived,
      @JsonKey(name: 'change') this.change,
      @JsonKey(name: 'payment_methods')
      final List<PaymentMethodModel>? paymentMethods,
      @JsonKey(name: 'categories') final List<CategoryModel>? categories,
      @JsonKey(name: 'total_categories_amount') this.totalCategoriesAmount,
      @JsonKey(name: 'points') final List<PointModel>? points})
      : _discounts = discounts,
        _paymentMethods = paymentMethods,
        _categories = categories,
        _points = points;

  factory _$FooterOrderHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FooterOrderHistoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'total_items')
  final num? totalItems;
  @override
  @JsonKey(name: 'total_amount')
  final num? totalAmount;
  @override
  @JsonKey(name: 'service_charge')
  final num? serviceCharge;
  final List<DiscountModel>? _discounts;
  @override
  @JsonKey(name: 'discounts')
  List<DiscountModel>? get discounts {
    final value = _discounts;
    if (value == null) return null;
    if (_discounts is EqualUnmodifiableListView) return _discounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_discount')
  final num? totalDiscount;
  @override
  @JsonKey(name: 'vat_included')
  final num? vatIncluded;
  @override
  @JsonKey(name: 'net_amount')
  final num? netAmount;
  @override
  @JsonKey(name: 'cash_received')
  final num? cashReceived;
  @override
  @JsonKey(name: 'change')
  final num? change;
  final List<PaymentMethodModel>? _paymentMethods;
  @override
  @JsonKey(name: 'payment_methods')
  List<PaymentMethodModel>? get paymentMethods {
    final value = _paymentMethods;
    if (value == null) return null;
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryModel>? _categories;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_categories_amount')
  final num? totalCategoriesAmount;
  final List<PointModel>? _points;
  @override
  @JsonKey(name: 'points')
  List<PointModel>? get points {
    final value = _points;
    if (value == null) return null;
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FooterOrderHistoryModel(totalItems: $totalItems, totalAmount: $totalAmount, serviceCharge: $serviceCharge, discounts: $discounts, totalDiscount: $totalDiscount, vatIncluded: $vatIncluded, netAmount: $netAmount, cashReceived: $cashReceived, change: $change, paymentMethods: $paymentMethods, categories: $categories, totalCategoriesAmount: $totalCategoriesAmount, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FooterOrderHistoryModelImpl &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge) &&
            const DeepCollectionEquality()
                .equals(other._discounts, _discounts) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.vatIncluded, vatIncluded) ||
                other.vatIncluded == vatIncluded) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.cashReceived, cashReceived) ||
                other.cashReceived == cashReceived) &&
            (identical(other.change, change) || other.change == change) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.totalCategoriesAmount, totalCategoriesAmount) ||
                other.totalCategoriesAmount == totalCategoriesAmount) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalItems,
      totalAmount,
      serviceCharge,
      const DeepCollectionEquality().hash(_discounts),
      totalDiscount,
      vatIncluded,
      netAmount,
      cashReceived,
      change,
      const DeepCollectionEquality().hash(_paymentMethods),
      const DeepCollectionEquality().hash(_categories),
      totalCategoriesAmount,
      const DeepCollectionEquality().hash(_points));

  /// Create a copy of FooterOrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FooterOrderHistoryModelImplCopyWith<_$FooterOrderHistoryModelImpl>
      get copyWith => __$$FooterOrderHistoryModelImplCopyWithImpl<
          _$FooterOrderHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FooterOrderHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _FooterOrderHistoryModel implements FooterOrderHistoryModel {
  const factory _FooterOrderHistoryModel(
          {@JsonKey(name: 'total_items') final num? totalItems,
          @JsonKey(name: 'total_amount') final num? totalAmount,
          @JsonKey(name: 'service_charge') final num? serviceCharge,
          @JsonKey(name: 'discounts') final List<DiscountModel>? discounts,
          @JsonKey(name: 'total_discount') final num? totalDiscount,
          @JsonKey(name: 'vat_included') final num? vatIncluded,
          @JsonKey(name: 'net_amount') final num? netAmount,
          @JsonKey(name: 'cash_received') final num? cashReceived,
          @JsonKey(name: 'change') final num? change,
          @JsonKey(name: 'payment_methods')
          final List<PaymentMethodModel>? paymentMethods,
          @JsonKey(name: 'categories') final List<CategoryModel>? categories,
          @JsonKey(name: 'total_categories_amount')
          final num? totalCategoriesAmount,
          @JsonKey(name: 'points') final List<PointModel>? points}) =
      _$FooterOrderHistoryModelImpl;

  factory _FooterOrderHistoryModel.fromJson(Map<String, dynamic> json) =
      _$FooterOrderHistoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'total_items')
  num? get totalItems;
  @override
  @JsonKey(name: 'total_amount')
  num? get totalAmount;
  @override
  @JsonKey(name: 'service_charge')
  num? get serviceCharge;
  @override
  @JsonKey(name: 'discounts')
  List<DiscountModel>? get discounts;
  @override
  @JsonKey(name: 'total_discount')
  num? get totalDiscount;
  @override
  @JsonKey(name: 'vat_included')
  num? get vatIncluded;
  @override
  @JsonKey(name: 'net_amount')
  num? get netAmount;
  @override
  @JsonKey(name: 'cash_received')
  num? get cashReceived;
  @override
  @JsonKey(name: 'change')
  num? get change;
  @override
  @JsonKey(name: 'payment_methods')
  List<PaymentMethodModel>? get paymentMethods;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel>? get categories;
  @override
  @JsonKey(name: 'total_categories_amount')
  num? get totalCategoriesAmount;
  @override
  @JsonKey(name: 'points')
  List<PointModel>? get points;

  /// Create a copy of FooterOrderHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FooterOrderHistoryModelImplCopyWith<_$FooterOrderHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
