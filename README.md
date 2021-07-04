# Flutter Scalable Reactive App Architecture

This is an example of a scalable and reactive Flutter web / mobile app architecture, based on experience of various projects.

## Getting Started

This architecture can be a starting point for a medium or big Flutter project.

The architecture includes the following design patterns and packages:

- RxDart
- BLoC

## Project Structure
### Flutter shopping cart example
The `cart` and `catalog` sections are part of the shopping cart, but their structure can be used as a template for other sections.

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
│   ├── repository
│   │   └── repository.dart
│   ├── theme
│   │   ├── colors.dart
│   │   ├── config.dart
│   │   ├── custom_theme.dart
│   │   └── widgets.dart
├── pubspec.lock
├── pubspec.yaml
```

### What packages do we need
Add the following dependencies to `pubspec.yaml` file:

```yaml
dependencies:
  ...

  # Google fonts
  google_fonts: ^2.1.0

  # Bloc
  bloc: ^7.0.0
  flutter_bloc: ^7.0.1
  
  # Equality check for class objects
  equatable: ^2.0.3
  # Synchronization
  synchronized: ^3.0.0
  ...
```
