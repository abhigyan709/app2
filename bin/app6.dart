/// typedefs in the function
/// the typedef keyword simply gives another name to function type so that it
/// can be easily reused.
///

void printIntegers(void Function(String msg) logger) {
  logger("Done");
}

void printDoubles(void Function(String msg) logger) {
  logger("done");
}
