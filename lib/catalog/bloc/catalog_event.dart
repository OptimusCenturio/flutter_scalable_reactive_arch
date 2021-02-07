part of 'catalog_bloc.dart';

abstract class CatalogEvent extends Equatable {
  const CatalogEvent();

  @override
  List<Object> get props => [];
}

class CatalogStarted extends CatalogEvent {
  @override
  List<Object> get props => [];
}
