import 'package:flutter_one_of/flutter_one_of.dart';

extension TripletExtensions<T0, T1, T2> on Triplet<T0, T1, T2> {
  R map<R>({
    required R Function(T0) first,
    required R Function(T1) second,
    required R Function(T2) third,
  }) {
    if (isFirst) {
      return first(this.first);
    } else if (isSecond) {
      return second(this.second);
    } else if (isThird) {
      return third(this.third);
    } else {
      throw Exception('Triplet is empty');
    }
  }

  void on<R>({
    required void Function(T0) first,
    required void Function(T1) second,
    required void Function(T2) third,
  }) {
    if (isFirst) {
      return first(this.first);
    } else if (isSecond) {
      return second(this.second);
    } else if (isThird) {
      return third(this.third);
    } else {
      throw Exception('Triplet is empty');
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
    }
  }
}
