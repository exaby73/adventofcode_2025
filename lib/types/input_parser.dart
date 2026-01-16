abstract base class InputParser<T> {
  const InputParser(this.rawInput);

  final String rawInput;

  T parse();
}
