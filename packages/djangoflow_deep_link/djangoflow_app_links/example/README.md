# Djangoflow App Links Example

### Getting started

Install dependencies

```bash
flutter pub get
```

This example app has been configured with schema "**app**" and host as "**host**". You can change it in [AndroidManifest.xml].

To launch the app with a deep link, run the following command:

1. On Android Emulator
```bash
adb shell am start -a android.intent.action.VIEW -d "app://example/primary"
```

2. On iOS Simulator
```bash
/usr/bin/xcrun simctl openurl booted "app://example/primary" 
```