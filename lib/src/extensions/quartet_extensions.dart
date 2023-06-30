import 'package:flutter_one_of/flutter_one_of.dart';

extension QuartetExtensions<T0, T1, T2, T3> on Quartet<T0, T1, T2, T3> {
  R map<R>({
    required R Function(T0) first,
    required R Function(T1) second,
    required R Function(T2) third,
    required R Function(T3) fourth,
  }) {
    if (isFirst) {
      return first(this.first);
    } else if (isSecond) {
      return second(this.second);
    } else if (isThird) {
      return third(this.third);
    } else if (isFourth) {
      return fourth(this.fourth);
    } else {
      throw Exception('Quartet is empty');
    }
  }

  void on<R>({
    required void Function(T0) first,
    required void Function(T1) second,
    required void Function(T2) third,
    required void Function(T3) fourth,
  }) {
    if (isFirst) {
      return first(this.first);
    } else if (isSecond) {
      return second(this.second);
    } else if (isThird) {
      return third(this.third);
    } else if (isFourth) {
      return fourth(this.fourth);
    } else {
      throw Exception('Quartet is empty');
    }
  }

  void ifType<R>({
    required void Function(R) callback,
  }) {
    if (isFirst && first is R) {
      callback(first as R);
    } else if (isSecond && second is R) {
      callback(second as R);
    } else if (isThird && third is R) {
      callback(third as R);
    } else if (isFourth && fourth is R) {
      callback(fourth as R);
    }
  }
}
