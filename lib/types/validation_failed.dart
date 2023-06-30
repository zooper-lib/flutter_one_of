import 'package:flutter_one_of/types/one_of_type.dart';

class ValidationFailed extends OneOfType {
  final String message;
  ValidationFailed(this.message);
}
