# Localization

---
### Localization
If your app serves more than a single language or needs specific implementation based on region and/or language you need localizations.

In flutter this is done through the `flutter_localizations` package, which is included in the sdk.

For date and currency formatting, the package `intl` is used.

---
### Setup localizations in your flutter project

Execute the commands below

```sh
flutter pub add flutter_localizations --sdk=flutter
flutter pub add intl:any
```

Or add the dependencies manually in your pubspec.yaml

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: any
```

---
### Adding localizations support to your app

Import the localizations package

```dart
import 'package:flutter_localizations/flutter_localizations.dart';
```

Define the supported locales

```dart
return const MaterialApp(
  title: 'Localizations Sample App',
  localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('nl'), // Dutch
    Locale('en'), // English
  ],
  home: Home(),
);
```

---
### Add localized messages

Enable code generation:
```yaml
flutter:
  generate: true # This line is new
```

Create a configuration file: `l10n.yaml` in the root of your project.
Add the following lines:
```yaml
arb-dir: lib/l10n # you can change this to any path
template-arb-file: app_en.arb # This is the file that is used for metadata
output-localization-file: app_localizations.dart # The dart file where the localizations can be found.
```

In your code, you can import `import 'package:flutter_gen/gen_l10n/app_localizations.dart';` to have access to your localizations.

---
### Creating your first localized message

For each supported locale you should add a `app_<local>.arb` file.
Given that we have both `en` and `nl` support, our file structure will be:

```
/lib
    /l10n
        app_en.arb
        app_nl.arb
```

---
### Creating your first localized message

In your template file `app_en.arb`, add the following.
```json
{
  "flutterDevs": "Flutter developers",
  "@flutterDevs": {
    "description": "Phrase to describe the best developers"
  }
}
```

Then in all other files, add the same value, but translated
```json
{
  "flutterDevs": "Flutter ontwikkelaars"
}
```

---
### Using your first localized message

In the file where you want to use the messages and in the file containing your app:

```dart
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
```

```dart
return const MaterialApp(
  title: 'Localizations Example',
  localizationsDelegates: [
    AppLocalizations.delegate, // Add this line
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('nl'),
    Locale('en'),
  ],
  home: Home(),
);
```

In your build function:
```dart
Text(AppLocalizations.of(context)!.flutterDevs)
```

---
### Using your first