# daymemory

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

#Windows build
flutter build windows -t lib/configuration/daymemory_desktop.dart

#Build database 
flutter pub run build_runner build

#Generate classes
flutter packages pub run build_runner build --delete-conflicting-outputs

#Android
Setup Hash key for Google sign in
https://stackoverflow.com/questions/54557479/flutter-and-google-sign-in-plugin-platformexceptionsign-in-failed-com-google
https://stackoverflow.com/questions/56188338/platformexception-platformexceptionsign-in-failed-com-google-android-gms-comm

#Android Images should be generated in Android Studio

#Icons for Android are generated in the Android Studio
https://developer.android.com/studio/write/image-asset-studio

#create MSIX installer
flutter pub run msix:create

flutter run -d macos -t 'lib/configuration/daymemory_desktop.dart'

#Android build
flutter build appbundle -t lib/configuration/daymemory_prod.dart
flutter build apk -t lib/configuration/daymemory_prod.dart