import 'package:flutter_one_of/flutter_one_of.dart';

extension SextetExtensions<T0, T1, T2, T3, T4, T5> on Sextet<T0, T1, T2, T3, T4, T5> {
  R map<R>({
    required R Function(T0) first,
    required R Function(T1) second,
    required R Function(T2) third,
    required R Function(T3) fourth,
    required R Function(T4) fifth,
    required R Function(T5) sixth,
  }) {
    if (isFirst) {
      return first(this.first);
    } else if (isSecond) {
      return second(this.second);
    } else if (isThird) {
      return third(this.third);
    } else if (isFourth) {
      return fourth(this.fourth);
    } else if (isFifth) {
      return fifth(this.fifth);
    } else if (isSixth) {
      return sixth(this.sixth);
    } else {
      throw Exception('Sextet is empty');
    }
  }

  void on<R>({
    void Function(T0)? first,
    void Function(T1)? second,
    void Function(T2)? third,
    void Function(T3)? fourth,
    void Function(T4)? fifth,
    void Function(T5)? sixth,
  }) {
    if (isFirst) {
      return first?.call(this.first);
    } else if (isSecond) {
      return second?.call(this.second);
    } else if (isThird) {
      return third?.call(this.third);
    } else if (isFourth) {
      return fourth?.call(this.fourth);
    } else if (isFifth) {
      return fifth?.call(this.fifth);
    } else if (isSixth) {
      return sixth?.call(this.sixth);
    } else {
      throw Exception('Sextet is empty');
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
    } else if (isFifth && fifth is R) {
      callback(fifth as R);
    } else if (isSixth && sixth is R) {
      callback(sixth as R);
    } else {
      throw Exception('Sextet is empty');
    }
  }
}
