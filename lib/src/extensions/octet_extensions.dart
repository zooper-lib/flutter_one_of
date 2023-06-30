import 'package:flutter_one_of/flutter_one_of.dart';

extension OctetExtensions<T0, T1, T2, T3, T4, T5, T6, T7> on Octet<T0, T1, T2, T3, T4, T5, T6, T7> {
  R map<R>({
    required R Function(T0) first,
    required R Function(T1) second,
    required R Function(T2) third,
    required R Function(T3) fourth,
    required R Function(T4) fifth,
    required R Function(T5) sixth,
    required R Function(T6) seventh,
    required R Function(T7) eighth,
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
    } else if (isSeventh) {
      return seventh(this.seventh);
    } else if (isEighth) {
      return eighth(this.eighth);
    } else {
      throw Exception('Octet is empty');
    }
  }

  void on<R>({
    void Function(T0)? first,
    void Function(T1)? second,
    void Function(T2)? third,
    void Function(T3)? fourth,
    void Function(T4)? fifth,
    void Function(T5)? sixth,
    void Function(T6)? seventh,
    void Function(T7)? eighth,
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
    } else if (isSeventh) {
      return seventh?.call(this.seventh);
    } else if (isEighth) {
      return eighth?.call(this.eighth);
    } else {
      throw Exception('Octet is empty');
    }
  }

  void ifType<R>({
    required void Function(T0) first,
    required void Function(T1) second,
    required void Function(T2) third,
    required void Function(T3) fourth,
    required void Function(T4) fifth,
    required void Function(T5) sixth,
    required void Function(T6) seventh,
    required void Function(T7) eighth,
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
    } else if (isSeventh) {
      return seventh(this.seventh);
    } else if (isEighth) {
      return eighth(this.eighth);
    }
  }
}
