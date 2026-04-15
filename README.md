# 🪶 Flutter Simple UseState

A **simple and minimal state management solution** built on top of Flutter’s `ValueNotifier`.

This library provides a clean, hook-like API to manage state with **almost zero boilerplate**.

---

## ✨ Features

* ⚡ Extremely lightweight
* 🧠 Built on native Flutter primitives (`ValueNotifier`)
* 🔁 Reactive UI updates
* 📦 No external dependencies
* 🎯 Easy to learn and use

---

## 🚀 Getting Started

### Import the library

```dart
import 'package:flutter_simple_usestate/flutter_simple_usestate.dart';
```

---

## 🧩 Usage

### 1. Create state

```dart
final counter = useState<int>(0);
```

---

### 2. Update state

```dart
counter.value++;
```

---

### 3. Bind state to UI

```dart
useStateBuilder<int>(
  counter,
  (value) {
    return Text('$value');
  },
);
```

---

## 📌 Full Example

```dart
import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  final counter = useState<int>(0);

  CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: useStateBuilder<int>(
          counter,
          (value) => Text(
            '$value',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.value++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

---

## 🛠 API

### `useState<T>(T initialValue)`

Creates a `ValueNotifier<T>`.

```dart
final state = useState<String>('hello');
```

---

### `useStateBuilder<T>(ValueNotifier<T> value, Widget Function(T value) builder)`

A wrapper around `ValueListenableBuilder` to rebuild UI when state changes.

```dart
useStateBuilder(counter, (value) => Text('$value'));
```

---

## 🤔 Why use this?

If you:

* don’t want heavy frameworks
* prefer simple and readable code
* just need basic reactive state

👉 This is perfect for small to medium apps.

---

## ⚠️ Limitations

* Not suitable for very complex state logic
* No dependency injection
* No advanced features like scoped providers

---

## 📄 License

MIT License

---

## 💡 Contributing

Feel free to open issues or submit pull requests!

---
