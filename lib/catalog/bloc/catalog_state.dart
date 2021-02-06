part of 'catalog_bloc.dart';

abstract class CatalogState extends Equatable {
  const CatalogState();
  
  @override
  List<Object> get props => [];
}

class CatalogInitial extends CatalogState {}
