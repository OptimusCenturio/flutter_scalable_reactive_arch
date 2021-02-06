import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc() : super(CatalogInitial());

  @override
  Stream<CatalogState> mapEventToState(
    CatalogEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
