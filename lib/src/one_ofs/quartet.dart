import 'package:equatable/equatable.dart';
import 'package:flutter_one_of/flutter_one_of.dart';

class Quartet<T0, T1, T2, T3> extends Triplet<T0, T1, T2> with EquatableMixin {
  final T3? _fourth;

  Quartet.first(T0 value) : this(value, null, null, null);
  Quartet.second(T1 value) : this(null, value, null, null);
  Quartet.third(T2 value) : this(null, null, value, null);
  Quartet.fourth(T3 value) : this(null, null, null, value);

  Quartet(T0? first, T1? second, T2? third, this._fourth) : super(first, second, third);

  bool get isFourth => _fourth != null;

  T3 get fourth => _fourth!;

  @override
  List<Object?> get props => [
        ...super.props,
        _fourth,
      ];
}
