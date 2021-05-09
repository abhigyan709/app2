// 1.
void test(void Function(int) action) {
  // 2.
  final list = [1, 2, 3, 4, 5];

  // 3.
  for (final item in list) {
    action(item);
  }
}

void main() {
  // 4.
  test((int value) {
    print("Number $value");
  });

  // 5. another method to call the function
  test((int value) => print("$value"));

  // 6. an anothet one
  test((int value) => print("${value + 2}"));
}

/// The action parameter commonly known as callback
/// beacause it executes an action given from the action
/// given from the outside.
///
/// 1. This function doesn't return a value because of void. The parameter,
/// called action, accepts a void function with a single integer value.
/// 2. Its a simple list of integer values
/// 3. We iterate through entire list and for each item, we call the function.
/// 4. test(); is how you normally call a function.
/// 5. This is anonymous function(nameless funtion) returning nothing (void) and
/// asking for a single integer parameter.
