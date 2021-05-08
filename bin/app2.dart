enum Fruits { Apple, Pear, Grapes, Banana, Orange }
enum Status { Ready, Puased, Terminated }
void main(List<String> arguments) {
  print('Hello world!');
  print('Hello Abhigyan');

  var value = 18;
  var myName = "Abhigyan";
  print(value);
  print(myName);

  final name = "Gyanu"; //final variable can be used only once
  print(name);
  // now the name can be used again,
  // name = "Gyan";
  var a = 1;
  var b = 1.0;

  int x = 8;
  double y = b + 6;
  num z = 10 - y + x;
  const valueA = 7;
  const valueB = 2 * valueA;

  print(a);
  print(b);
  print(x);
  print(y);
  print(z);
  print(valueB);

  String myvalue = "17";

  var ab = int.parse(myvalue);
  print(ab);
  // print(Type(ab));
  String v1 = 100.toString();
  String v2 = 100.123.toString();
  String v3 = 100.123.toStringAsFixed(2);
  print(v1);
  print(v2);
  print(v3);

  // if the string is not a number, val is null
  double v4 = double.tryParse("12@3x");
  print(v4);
  double v5 = double.tryParse("120.343");
  print(v5);

  // the onError callback is called when parsing fails
  var abc = int.parse("1_6", onError: (abc) => 0);
  print(abc);
  var bcd = int.parse("16", onError: (bcd) => 0);
  print(bcd);

  // parse() is deprecated, you should choose tryParse()
  // string
  var s = "Double Quoted";
  var t = 'Single Quoted';
  print(s);
  print(t);

  Fruits liked = Fruits.Apple;
  var disliked = Fruits.Banana;

  print(liked.toString()); // prints 'Fruits.Apple'
  print(disliked.toString()); // prints 'Fruits.Banana'

  var fruit1 = Fruits.Apple.index;
  var fruit2 = Fruits.Pear.index;
  var fruit3 = Fruits.Grapes.index;
  print(fruit1);
  print(fruit2);
  print(fruit3);

  // booleans
  bool test = 5 == 0; //
  print(test);
  bool test2 = 0 == 0;
  print(test2);

  var oops = 0.0 / 0.0; // evaluates to Not a Number(NaN)
  bool didIFail = oops.isNaN;
  print(didIFail);

  // working upon arrays
  // Array
  // (no equivalent)
  // Generic list

  final myList = [-3.1, 5, 5.0, 4.4];
  final myListNew = myList[1];
  print(myListNew);

  // a consequence of the usage of a List<T> as container is that the instance
  // exposes many useful methods, typical of collections

  /// Length
  /// add(T value)
  /// isEmpty
  /// conatins(T value)

  // nullable and non nullable types
  // trying to access the variable before its assignment
  // will lead to a compilation error

  String naming = "Abhigyan";
  if (naming != null) {
    print(naming);
  }

  int newValue;
  print("$newValue");
  int myNewValue;
  print("$myNewValue");

  /// When you are sure that a nullable expression isn't null,
  /// you can add a ! at the end to convert it to the non-nullable version.

  // int nullableType = 0;
  // int notNullable = nullableType!;
  // above version will require the SDK version 2.12.0 and above

  /// if you need to convert a nullable variable into a non-nullable subtype,
  /// use the typecast operator as
  int typeCastValue = 5;
  int otherValue = typeCastValue as int;
  print(otherValue);

  double pi = 3.14;
  double pi2 = 3.1412;
  final round1 = pi.round();
  final round2 = pi2.round();
  print(round1);
  print(round2);

  /// Data type operators
  /// "+" : Add two numbers: 2 + 3
  /// "-" : Substract two numbers
  /// "*" : Multiply two numbers
  /// "/" : Divide two numbers
  /// "~/": Integer divison of two values
  /// "%" : Remainder(modulo) of an int division
  /// "++x": Prefix Increment Operator
  /// "x--": Postfix Increment Operator
  /// "--x": Prefix Decrement Operator
  /// "x--": Postfix Decrement Operator

  int ac = 1;
  print(++ac);
  print(ac++);

  /// int b = 5;
  /// --b; //b = 4;
  /// b--; //b = 3;
  /// int c = 6;
  /// c += 6 // c = 12
  ///
  /// as a remainder, both postfix and prefix increment/decrement have the same
  /// result but they work in different way
  ///
  /// ++x first incrmented and then returned
  /// x++ first returned and then incremented

  /// Relational Operators
  /// "==" : Equality Test Relational Operator
  /// "!=" : Inequality Test
  /// ">" : Greater than
  /// "<" : Smaller than
  /// ">=": Greater or equal to
  /// "<=": Smaller or equal to

  /// type test operators
  /// as: cast a type to another : object as string
  /// is: True if the object has a certain type : obj is double
  /// is! False if the object has a certain type: obj is! int

  /// Logical Operator
  /// !expr: Toggles true to false and vice versa
  /// expr1 && expr2: Logical AND(true if both sides are true)
  /// expr1 || expr2: Logical OR(true if at least one is true)

  /// Bitwise and shift operator
  /// a & b : Bitwise AND
  /// a | b : Bitwsie OR
  /// a ^ b : Bitwise XOR
  /// ~a : Bitwise complement
  /// a >> b Right Shift
  /// a << b Left Shift

  /// Dealing with the Control Flow and Functions
  /// If Statements

  final random = 13;
  if (random % 2 == 0) {
    print("Got an even number");
  } else {
    print("Got an odd number");
  }

  String status; //this is null
  var isAlive = "Yes";
  if (status != null) {
    isAlive = status;
  } else {
    isAlive = "RIP";
  }

  /// basically we want to know whether status is null and then decide the
  /// proper value to assign. The same logic can ba expressed in anothe and more
  /// concise way
  // String? status; //This is null
  // String isAlive = status ?? "RIP";
  /// - status is not null: return status;
  /// - status is null: return the provided "default value" at the right of??

  /// working with switch, case and break statements
  ///

  final status1 = Status.Puased;
  switch (status1) {
    case Status.Ready:
      print("Run");
      break;
    case Status.Puased:
      print("Pause");
      break;
    case Status.Terminated:
      print("Stop");
      break;
    default:
      print("unknown");
  }

  /// if the body of the case is NOT empty you must put a break otherwise your
  /// code wont compile.
  /// when you just fall through to avoid code-replication, leave the body empty

  switch (status1) {
    case Status.Ready:
      break;
    case Status.Puased:
      print(
          "this is example to leave the body empty, and to avoid the code-replication");
      break;
    case Status.Terminated:
      break;
  }

  /// looping techniques

  // For Loop
  for (var i = 0; i <= 10; ++i) {
    print("Number $i");
  }

  // While Loop
  var ii = 0;
  while (ii <= 10) {
    print("Number is $ii");
    ++ii;
  }

  // Do While
  var iii = 0;
  do {
    print("Number will be $iii");
    ++iii;
  } while (iii <= 10);
}
