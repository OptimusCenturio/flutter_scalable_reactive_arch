import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../repository/repository.dart';
import '../models/catalog.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc({@required this.repository}) : super(CatalogLoading());

  AppRepository repository;

  @override
  Stream<CatalogState> mapEventToState(CatalogEvent event) async* {
    if (event is CatalogStarted) {
      /// Storing the bloc instance in the repository
      repository.catalogBloc = this;

      yield* _mapCatalogStartedToState();
    }
  }

  /// `CatalogStarted` event handler
  Stream<CatalogState> _mapCatalogStartedToState() async* {
    yield CatalogLoading();
    try {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      yield CatalogLoaded(Catalog());
    } catch (_) {
      yield CatalogError();
    }
  }
}
