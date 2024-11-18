// Mocks generated by Mockito 5.4.4 from annotations
// in flutter_bloc_advance/test/presentation/blocs/account_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flutter_bloc_advance/data/models/change_password.dart' as _i5;
import 'package:flutter_bloc_advance/data/models/user.dart' as _i2;
import 'package:flutter_bloc_advance/data/repository/account_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeUser_0 extends _i1.SmartFake implements _i2.User {
  _FakeUser_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AccountRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAccountRepository extends _i1.Mock implements _i3.AccountRepository {
  MockAccountRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.User?> register(_i2.User? newUser) => (super.noSuchMethod(
        Invocation.method(
          #register,
          [newUser],
        ),
        returnValue: _i4.Future<_i2.User?>.value(),
      ) as _i4.Future<_i2.User?>);

  @override
  _i4.Future<int> changePassword(_i5.PasswordChangeDTO? passwordChangeDTO) =>
      (super.noSuchMethod(
        Invocation.method(
          #changePassword,
          [passwordChangeDTO],
        ),
        returnValue: _i4.Future<int>.value(0),
      ) as _i4.Future<int>);

  @override
  _i4.Future<int> resetPassword(String? mailAddress) => (super.noSuchMethod(
        Invocation.method(
          #resetPassword,
          [mailAddress],
        ),
        returnValue: _i4.Future<int>.value(0),
      ) as _i4.Future<int>);

  @override
  _i4.Future<_i2.User> getAccount() => (super.noSuchMethod(
        Invocation.method(
          #getAccount,
          [],
        ),
        returnValue: _i4.Future<_i2.User>.value(_FakeUser_0(
          this,
          Invocation.method(
            #getAccount,
            [],
          ),
        )),
      ) as _i4.Future<_i2.User>);

  @override
  _i4.Future<_i2.User> saveAccount(_i2.User? user) => (super.noSuchMethod(
        Invocation.method(
          #saveAccount,
          [user],
        ),
        returnValue: _i4.Future<_i2.User>.value(_FakeUser_0(
          this,
          Invocation.method(
            #saveAccount,
            [user],
          ),
        )),
      ) as _i4.Future<_i2.User>);

  @override
  dynamic updateAccount(_i2.User? account) =>
      super.noSuchMethod(Invocation.method(
        #updateAccount,
        [account],
      ));

  @override
  dynamic deleteAccount(int? id) => super.noSuchMethod(Invocation.method(
        #deleteAccount,
        [id],
      ));
}
