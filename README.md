# app_dictionary

A new Flutter project.

## Getting Started

### To generate code:

```
flutter pub run build_runner build --delete-conflicting-outputs
```

### To build appbundle prod version by market:

_Android:_

```
flutter build appbundle -t lib/main_prod.dart --flavor prod
```

_IOS:_

```
flutter build ipa -t lib/main_prod.dart --flavor prod
```

### To build apk dev/demo/prod version:

_Android:_

```
flutter build apk -t lib/main_dev.dart --flavor dev
```

```
flutter build apk -t lib/main_demo.dart --flavor demo
```

```
flutter build apk -t lib/main_prod.dart --flavor prod
```

_IOS:_

```
flutter build ipa -t lib/main_dev.dart --flavor dev
```

```
flutter build ipa -t lib/main_demo.dart --flavor demo
```

```
flutter build ipa -t lib/main_prod.dart --flavor prod
```
