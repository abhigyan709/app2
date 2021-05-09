import 'dart:convert';

/// Optional Parameters
/// In dart function parameters can be optional in the sense that you don't
/// provide them, the compiler will assign null or a default value you have
/// specified

// Named Parameters
void test({int? a, int? b}) {
  print("Value of a: $a");
  print("Value of b: $b");
}

void test2({int? c, int? d = 0}) {
  print("Value of c: $c");
  print("Value of d: $d");
  // default value of the is assigned to zero
}

// working upon the required parameter

void test3({int e = 0, required int f}) {
  print("Value of e is $e");
  print("Value of f is $f"); // throw an error if the value is not given on call
}

// most used case in flutter for required parameter
void test4(int g, {int h = 0}) {
  print("Value of g $g"); // required
  print("Value of h $h");
}

void main() {
  test(a: 2, b: -6);
  // the position doesent matter in named parameters
  test(b: -6, a: 5);

  // when a parameter is missing the default null value is given;

  test(a: -8); // value of will be printed of null

  // when the dafault value is set to optional parameter
  test2(c: 5); // value of d is set to zero therefore it will print zero

  // when the value is given during functional call
  test2(c: 9, d: 10); // value of the d will be 10

  // calling the function without arguments
  test(); // a = null, b = null
  test2(); // c = null, d = 0

  // calling the required parameter without function
  // already throwing an eception test3(e: 0);
  test3(f: 6);
  test3(e: 5, f: 98);

  test4(6); // if not given throw the error
  test4(6, h: 100);
}
