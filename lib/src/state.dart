import 'package:flutter/material.dart';

ValueNotifier<T> useState<T>(T initialValue) {
  return ValueNotifier(initialValue);
}

ValueListenableBuilder useStateBuilder<T>(
  ValueNotifier<T> value,
  Widget Function(T value) builder,
) {
  return ValueListenableBuilder(
    valueListenable: value,
    builder: (_, value, _) {
      return builder(value);
    },
  );
}
