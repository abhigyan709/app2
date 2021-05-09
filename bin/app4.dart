/// Optional Parameters
/// In dart function parameters can be optional in the sense that you don't
/// provide them, the compiler will assign null or a default value you have
/// specified

// Named Parameters
void test({int a, int b}) {
  print("Value of a: $a");
  print("Value of b: $b");
}

void main() {
  test(a: 2, b: -6);
}
