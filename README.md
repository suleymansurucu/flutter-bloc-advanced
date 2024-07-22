# Advanced Flutter BLOC Template

* This project is an open-source template built with Flutter and BLOC architecture. 
* It comes with a range of features and allows you to quickly get started by adding your own screens, models, and BLOCs.

---

* BLoC Pattern(Data, Models, Repository, Presentation), Environments, Configuration, Themes, IOS,
* Android/IOS and Web 

---

## Out-of-the-box Features

- Public and Private Routes
- Home Page
    - Private Pages
        - Admin Pages
        - User Pages
    - Public Pages
        - Guest Pages
        - Access the public pages
- User Management
    - Login
    - Register
    - Forgot Password
    - Update Profile
    - Change Password
- Roles and Permissions
- Dark and Light Themes
- Mock data or API data
- API client
- Internationalization
- Access Control with Flutter and Firebase
- CI/CD with Github Actions

---

## Installation
```bash
git clone https://github.com/cevheri/flutter-bloc-advanced.git
```

---

## Requirements

* for serialize and deserialize json to object
```
dart run build_runner build --delete-conflicting-outputs
```

* fix dart analyze
```
dart analyze --fix
```

---

## Install Dependencies

```bash
flutter pub get
```

---

## Getting Started

- Run `flutter run --target lib/main/main-dev.dart` for dev environment
- Run `flutter run --target lib/main/main-prod.dart` for prod environment

flutter run dev environment

- Run `flutter run -d chrome --target lib/main/main-dev.dart` for web dev environment
- Run `flutter run -d chrome --target lib/main/main-prod.dart` for web prod environment

---

## How to Build

- Run `flutter build apk --target lib/main/main-prod.dart` for android
- Run `flutter build ios --target lib/main/main-prod.dart` for ios
- Run `flutter build web --target lib/main/main-prod.dart` for web

---

## How to Run

- Run `flutter pub get`
- Run `flutter run --target lib/main/main-dev.dart` for dev environment
- Run `flutter run -d chrome --target lib/main/main-dev.dart` for web
- Run `flutter run -d ios --target lib/main/main-dev.dart` for ios
- Run `flutter run -d android --target lib/main/main-dev.dart` for android
- Run `flutter run -d web --target lib/main/main-dev.dart` for web

## How to Test

- Run `flutter test`

## Usage

To add new screens, models, and BLOCs, follow these steps:

1. Add New Screens
   Add your new screens to the lib/screens directory.
2. Add New Models
   Add your new model classes to the lib/models directory.
3. Add New BLOCs
   Add your new BLOC classes to the lib/bloc directory and perform necessary operations.
4. API Integration 
   Integrate with APIs using the services provided in the lib/api directory.


## CI/CD with Github Actions

- [Flutter CI/CD with Github Actions]()

## Firebase

### How to Setup Firebase

- [Flutter Firebase Setup]()
- [Flutter Firebase Setup with Github Actions]()
- [Flutter Firebase Setup with Github Actions and Firebase Hosting]()

### How to Deploy Firebase

- [Flutter Firebase Deploy]()
- [Flutter Firebase Deploy with Github Actions]()
- [Flutter Firebase Deploy with Github Actions and Firebase Hosting]()


## How to Contribute

- Fork the repository
- Clone your forked repository
- Create your feature branch
- Commit your changes
- Push to the branch
- Create a new Pull Request

## References
- https://flutter.dev/
- https://bloclibrary.dev/
- https://pub.dev/packages/flutter_bloc
