import 'dart:math';

/// working upon nested functions
// function under the function is known as nested functions
void testInner(int value) {
  // Nested function
  int randomValue() => Random().nextInt(10);

  // using the nested function
  final number = value + randomValue();
  print("$number");
}

void main() {
  testInner(20);
  // you cant use the randomValue() function in this.
}

/// good practices and bad practices
/// void test([int a = 0]){...} // good
/// void test([int a : 0]){...} // bad
/// the colon initiaization might be removed in the future
/// you should never initialize nullables with null beacuse the compiler already
/// does by default
///
