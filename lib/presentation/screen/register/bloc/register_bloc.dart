import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_advance/configuration/app_logger.dart';
import 'package:flutter_bloc_advance/data/app_api_exception.dart';

import '../../../../data/models/user.dart';
import '../../../../data/repository/account_repository.dart';

part 'register_event.dart';

part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({required AccountRepository accountRepository})
      : _accountRepository = accountRepository,
        super(const RegisterInitialState()) {
    on<RegisterFormSubmitted>(_onSubmit);
  }

  static final _log = AppLogger.getLogger("RegisterBloc");

  final AccountRepository _accountRepository;

  @override
  void onTransition(Transition<RegisterEvent, RegisterState> transition) {
    super.onTransition(transition);
    _log.trace("current state: ${transition.currentState.toString()}");
    _log.trace("event: ${transition.event.toString()}");
    _log.trace("next state: ${transition.nextState.toString()}");
  }

  FutureOr<void> _onSubmit(RegisterFormSubmitted event, Emitter<RegisterState> emit) async {
    _log.debug("BEGIN: onSubmit RegisterFormSubmitted event: {}", [event.createUser.toString()]);
    emit(const RegisterLoadingState());
    try {
      var user = await _accountRepository.register(event.createUser);
      if (user != null) {
        emit(RegisterCompletedState(user: user));
        _log.debug("END:onSubmit RegisterFormSubmitted event success: {}", [user.toString()]);
      } else {
        _log.error("END:onSubmit RegisterFormSubmitted event failure: {}", ["Register Error"]);
        throw BadRequestException("Register Error");
      }
    } catch (e) {
      emit(const RegisterErrorState(message: "Register Error"));
      _log.error("END:onSubmit RegisterFormSubmitted event failure: {}", ["Register Error"]);
    }
  }
}
