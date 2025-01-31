// Mocks generated by Mockito 5.4.5 from annotations
// in ecommerce/test/add_to_cart_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i3;

import 'package:ecommerce/model/shopping_cart.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [ShoppingCart].
///
/// See the documentation for Mockito's code generation for more information.
class MockShoppingCart extends _i1.Mock implements _i2.ShoppingCart {
  @override
  List<_i2.ProductWithQuantity> get products =>
      (super.noSuchMethod(
            Invocation.getter(#products),
            returnValue: <_i2.ProductWithQuantity>[],
            returnValueForMissingStub: <_i2.ProductWithQuantity>[],
          )
          as List<_i2.ProductWithQuantity>);

  @override
  bool get hasListeners =>
      (super.noSuchMethod(
            Invocation.getter(#hasListeners),
            returnValue: false,
            returnValueForMissingStub: false,
          )
          as bool);

  @override
  dynamic add(_i2.ProductWithQuantity? productWithQuantity) =>
      super.noSuchMethod(
        Invocation.method(#add, [productWithQuantity]),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(_i3.VoidCallback? listener) => super.noSuchMethod(
    Invocation.method(#addListener, [listener]),
    returnValueForMissingStub: null,
  );

  @override
  void removeListener(_i3.VoidCallback? listener) => super.noSuchMethod(
    Invocation.method(#removeListener, [listener]),
    returnValueForMissingStub: null,
  );

  @override
  void dispose() => super.noSuchMethod(
    Invocation.method(#dispose, []),
    returnValueForMissingStub: null,
  );

  @override
  void notifyListeners() => super.noSuchMethod(
    Invocation.method(#notifyListeners, []),
    returnValueForMissingStub: null,
  );
}
