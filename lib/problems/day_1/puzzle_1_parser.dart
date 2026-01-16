import 'package:adventofcode_2025/types/input_parser.dart';

enum Direction { left, right }

typedef Puzzle1Input = List<({Direction direction, int distance})>;

final class Puzzle1InputParser extends InputParser<Puzzle1Input> {
  const Puzzle1InputParser(super.input);

  @override
  Puzzle1Input parse() {
    throw UnimplementedError();
  }
}
