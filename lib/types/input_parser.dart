abstract base class InputParser<T> {
  const InputParser(this.input);

  final String input;

  T parse();
}
