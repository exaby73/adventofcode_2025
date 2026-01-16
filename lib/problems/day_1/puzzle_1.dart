import 'package:adventofcode_2025/problems.dart';
import 'package:adventofcode_2025/problems/day_1/puzzle_1_parser.dart';

final class Day1Puzzle1 extends Problem {
  static const int _dialStart = 50;
  static const int _dialMax = 99;

  const Day1Puzzle1() : super(Status.solved);

  @override
  String solve(String rawInput) {
    final input = Day1Puzzle1InputParser(rawInput).parse();
    int dialValue = _dialStart;
    int zeroOccurrence = 0;

    for (final value in input) {
      dialValue += switch (value.direction) {
        .left => -value.distance,
        .right => value.distance,
      };
      dialValue %= _dialMax + 1;
      if (dialValue == 0) zeroOccurrence++;
    }

    return '$zeroOccurrence';
  }
}
