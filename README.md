# Flutter Scalable Reactive App Architecture

This is an example of a scalable and reactive Flutter mobile / web app architecture, based on experience of various projects.

## Getting Started

This architecture can be a starting point for a Flutter project.

The architecture includes the following design patterns and packages:

- BLoC
- RxDart

## Project Structure
### Flutter shopping cart example
The `cart` and `catalog` sections are part of the shopping cart, but their structure can be used as a template for other sections.
> The structure of the sections `cart`, `catalog` is a template for others.

> App localization: `localization.dart` and `lang` directory

> Global `bloc_observer.dart`

> Global `functions` list

> App global `styles` like `colors.dart`, `widgets.dart` etc

```txt
├── lib
│   ├── app.dart
│   ├── bloc_observer.dart
│   ├── cart
│   │   ├── cart.dart
│   │   ├── bloc
│   │   |   ├── cart_bloc.dart
│   │   |   ├── cart_event.dart
│   │   │   └── cart_state.dart
|   |   ├── models
│   │   |   ├── cart.dart
│   │   |   └── models.dart
|   |   ├── repository
│   │   |   ├── cart_provider.dart
│   │   |   └── cart_repository.dart
│   │   └── view
│   │       ├── cart_page.dart
│   │       └── cart_view.dart
│   ├── catalog
│   │   ├── catalog.dart
│   │   ├── bloc
│   │   |   ├── catalog_bloc.dart
│   │   |   ├── catalog_event.dart
│   │   │   └── catalog_state.dart
|   |   ├── models
│   │   |   ├── catalog.dart
│   │   |   └── models.dart
|   |   ├── repository
│   │   |   ├── catalog_provider.dart
│   │   |   └── catalog_repository.dart
│   │   └── view
│   │       ├── catalog_page.dart
│   │       └── catalog_view.dart
│   ├── ...
│   ├── functions
│   │   └── functions.dart
│   ├── lang
│   │   ├── en.dart
│   │   ├── fr.dart
│   │   └── ...
│   ├── localization.dart
│   └── main.dart
│   ├── style
│   │   ├── colors.dart
│   │   └── widgets.dart
├── pubspec.lock
├── pubspec.yaml
```
