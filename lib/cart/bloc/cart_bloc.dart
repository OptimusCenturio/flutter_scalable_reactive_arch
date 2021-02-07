import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../catalog/models/models.dart';
import '../../repository/repository.dart';
import '../cart.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc({@required this.repository}) : super(CartLoading());

  AppRepository repository;

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is CartStarted) {
      /// Storing the bloc instance in the repository
      repository.cartBloc = this;

      yield* _mapCartStartedToState();
    } else if (event is CartItemAdded) {
      yield* _mapCartItemAddedToState(event, state);
    }
  }

  /// `CartStarted` event handler
  Stream<CartState> _mapCartStartedToState() async* {
    yield CartLoading();
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield const CartLoaded();
    } catch (_) {
      yield CartError();
    }
  }

  /// `CartItemAdded` event handler
  Stream<CartState> _mapCartItemAddedToState(CartItemAdded event, CartState state) async* {
    if (state is CartLoaded) {
      try {
        yield CartLoaded(
          cart: Cart(items: List.from(state.cart.items)..add(event.item)),
        );
      } on Exception {
        yield CartError();
      }
    }
  }
}
