import 'package:acanthis/acanthis.dart';
import 'package:benchmarks/shared/acanthis_benchmark.dart';

class NestedObjectValidator extends AcanthisBenchmark {
  
  NestedObjectValidator()
      : super(name: 'NestedObjectValidator');

  static void main() {
    NestedObjectValidator().report();
  }

  @override
  void run() {
    final validator = object({
      'username': string(),
      'password': string(),
      'contact': object({
        'name': string(),
        'address': string().nullable(),
      }),
    });
    final payload = {
      'username': 'John Doe',
      'password': 'secret',
      'contact': {
        'name': 'John Doe',
        'address': '123 Main St',
      },
    };
    validator.parse(payload);
  }

}



class FlatObjectValidator extends AcanthisBenchmark {
  
  FlatObjectValidator()
      : super(name: 'FlatObjectValidator');

  static void main() {
    FlatObjectValidator().report();
  }

  @override
  void run() {
    final validator = object({
      'firstname': string(),
      'lastname': string(),
    });

    final payload = {
      'firstname': 'John',
      'lastname': 'Doe',
    };
    validator.parse(payload);
  }

}

class ArrayObjectValidator extends AcanthisBenchmark {

  ArrayObjectValidator()
      : super(name: 'ArrayObjectValidator');

  static void main() {
    ArrayObjectValidator().report();
  }

  @override
  void run() {
    final validator = object({
      'contacts': object({
        'type': string(),
        'value': string(),
      }).list(),
    });

    final payload = {
      'contacts': [
        {'type': 'email', 'value': 'foo@bar.com'},
        {'type': 'phone', 'value': '12345678'},
      ],
    };
    validator.parse(payload);
  }

}