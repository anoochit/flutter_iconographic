<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

[![pub package](https://img.shields.io/pub/v/flutter_iconographic)](https://pub.dartlang.org/packages/flutter_iconographic)
[![likes](https://img.shields.io/pub/likes/flutter_iconographic)](https://pub.dartlang.org/packages/flutter_iconographic/score)
[![points](https://img.shields.io/pub/points/flutter_iconographic)](https://pub.dartlang.org/packages/flutter_iconographic/score)
[![popularity](https://img.shields.io/pub/popularity/flutter_iconographic)](https://pub.dartlang.org/packages/flutter_iconographic/score)
[![license](https://img.shields.io/github/license/anoochit/flutter_iconographic)](https://pub.dartlang.org/packages/flutter_iconographic)
[![stars](https://img.shields.io/github/stars/anoochit/flutter_iconographic)](https://github.com/xclud/flutter_iconographic/stargazers)
[![forks](https://img.shields.io/github/forks/anoochit/flutter_iconographic)](https://github.com/xclud/flutter_iconographic/network/members)
[![sdk version](https://badgen.net/pub/sdk-version/flutter_iconographic)](https://pub.dartlang.org/packages/flutter_iconographic)

Flutter Iconograph is a widget to show an icon as a graph, support vertical and horizontal direction. You can specify an icon for full, half and empty icon.

## Features

- Show a Icon as a graph.
- Support vertical and horizontal direction.
- Can specify an icon for full, half and empty icon.

## Usage

```dart
Iconographic(
    value: 7,
    max: 10,
    showHalf: false,
    direction: Axis.horizontal,
    iconoWidget: IconoWidget(
        full: const Icon(
            Icons.man,
            color: Colors.blue,
        ),
        empty: Icon(
            Icons.man,
            color: Colors.grey.shade400,
        ),
    ),
),
```

More examples at `/example` folder.
