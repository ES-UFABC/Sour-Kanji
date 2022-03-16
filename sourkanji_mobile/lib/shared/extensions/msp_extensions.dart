import 'package:flutter/material.dart';

extension MspExt on Object {
  MaterialStateProperty<T> mspAll<T>() {
    return MaterialStateProperty.all<T>(this as T);
  }
}
