import 'package:flutter/material.dart';

class NavigationService {
  static final navKey = GlobalKey<NavigatorState>();

  Future<T?> pushReplacement<T>(String path) {
    return navKey.currentState!.pushReplacementNamed(path);
  }

  Future<T?> pushAndRemoveUntil<T>(String path) {
    return navKey.currentState!.pushNamedAndRemoveUntil(path, (route) => false);
  }

  Future<T?> pushNamed<T>(String path, {Object? arguments}) {
    return navKey.currentState!.pushNamed(path, arguments: arguments);
  }

  void pop<T>({int popCount = 1, Object? arguments}) {
    for (int i = 0; i < popCount; i++) {
      navKey.currentState!.pop(arguments);
    }
  }

  void goToRoot() {
    navKey.currentState!.popUntil((route) => route.isFirst);
  }
}
