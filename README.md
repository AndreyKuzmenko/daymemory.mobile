# Day Memory (journaling app)

## Features:
- Unlimited text entries with photos and videos
- Powerful, rich text formatting
- Different journals for every aspect of your life
- Automatic backups keep your journal entries safe
- End-to-end encryption to make your data 100% private
- Protection with a passcode, TouchID, or FaceID
- Reviewing past memories
- Cross-platform apps available on iPhone, iPad, Windows, and Mac

## Idea 💡
I built this app to test the possibilities of Flutter. The goal was to create clients for different platforms with maximum reuse of code. Currently, there are apps for iOS (iPhone, iPad), Android (Mobile and Tablet), MacOS, and Windows. I haven't tried to build it for Linux, but it shouldn't be a problem.

## iPhone screenshots
![iphone screeenshots](https://github.com/AndreyKuzmenko/daymemory.mobile/blob/main/promo/screenshots.png)

## Windows screenshot
![iphone screeenshots](https://github.com/AndreyKuzmenko/daymemory.mobile/blob/main/promo/windows.png)


## Commands
### Android build
```
flutter build appbundle -t lib/configuration/daymemory_prod.dart
flutter build apk -t lib/configuration/daymemory_prod.dart
```
### Windows build
```
flutter build windows -t lib/configuration/daymemory_desktop.dart
```
### Create MSIX installer
```
flutter pub run msix:create
```
### Macos build
```
flutter run -d macos -t 'lib/configuration/daymemory_desktop.dart'
```
### Generate classes
```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Android Configuration
- Setup Hash key for Google sign in
- https://stackoverflow.com/questions/54557479/flutter-and-google-sign-in-plugin-platformexceptionsign-in-failed-com-google
- https://stackoverflow.com/questions/56188338/platformexception-platformexceptionsign-in-failed-com-google-android-gms-comm
- Icons for Android are generated in the Android Studio https://developer.android.com/studio/write/image-asset-studio

## Day memory API
The backend for the app is located in a separate repository - https://github.com/AndreyKuzmenko/daymemory.api


