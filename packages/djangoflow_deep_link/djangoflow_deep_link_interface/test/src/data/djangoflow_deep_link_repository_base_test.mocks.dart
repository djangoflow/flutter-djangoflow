// Mocks generated by Mockito 5.4.6 from annotations
// in djangoflow_deep_link_interface/test/src/data/djangoflow_deep_link_repository_base_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:djangoflow_deep_link_interface/src/data/djangoflow_deep_link_repository_base.dart'
    as _i2;
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

/// A class which mocks [DjangoflowDeepLinkRepositoryBase].
///
/// See the documentation for Mockito's code generation for more information.
class MockDjangoflowDeepLinkRepositoryBase extends _i1.Mock
    implements _i2.DjangoflowDeepLinkRepositoryBase<String> {
  @override
  _i3.Stream<String> getLinkStream() => (super.noSuchMethod(
        Invocation.method(
          #getLinkStream,
          [],
        ),
        returnValue: _i3.Stream<String>.empty(),
        returnValueForMissingStub: _i3.Stream<String>.empty(),
      ) as _i3.Stream<String>);

  @override
  _i3.Future<String?> getInitialLink() => (super.noSuchMethod(
        Invocation.method(
          #getInitialLink,
          [],
        ),
        returnValue: _i3.Future<String?>.value(),
        returnValueForMissingStub: _i3.Future<String?>.value(),
      ) as _i3.Future<String?>);
}
