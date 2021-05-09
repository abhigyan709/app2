/// Optional Parameters
/// In dart function parameters can be optional in the sense that you don't
/// provide them, the compiler will assign null or a default value you have
/// specified

// Named Parameters
void test({int a, int b}) {
  print("Value of a: $a");
  print("Value of b: $b");
}

void test2({int c, int d = 0}) {
  print("Value of c: $c");
  print("Value of d: $d");
  // default value of the is assigned to zero
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
}
