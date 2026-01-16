import 'package:adventofcode_2025/problems/day_1/puzzle_1_parser.dart';
import 'package:adventofcode_2025/problems/day_1/types.dart';
import 'package:adventofcode_2025/types/input_parser.dart';

final class Day1Puzzle2InputParser extends InputParser<PuzzleInput> {
  const Day1Puzzle2InputParser(super.rawInput);

  @override
  PuzzleInput parse() {
    return Day1Puzzle1InputParser(rawInput).parse();
  }
}
