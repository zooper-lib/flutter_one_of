import 'package:flutter_one_of/flutter_one_of.dart';

extension DoubletExtensions<T0, T1> on Doublet<T0, T1> {
  R map<R>({
    required R Function(T0) first,
    required R Function(T1) second,
  }) {
    if (isFirst) {
      return first(this.first);
    } else if (isSecond) {
      return second(this.second);
    } else {
      throw Exception('Doublet is empty');
    }
  }

  void on<R>({
    required void Function(T0) first,
    required void Function(T1) second,
  }) {
    if (isFirst) {
      return first(this.first);
    } else if (isSecond) {
      return second(this.second);
    } else {
      throw Exception('Doublet is empty');
    }
  }

  void ifType<R>({
    required void Function(R) callback,
  }) {
    if (isFirst && first is R) {
      callback(first as R);
    } else if (isSecond && second is R) {
      callback(second as R);
    }
  }
}
