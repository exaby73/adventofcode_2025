import 'package:adventofcode_2025/problems/day_1/types.dart';
import 'package:adventofcode_2025/types/input_parser.dart';

final class Day1Puzzle1InputParser extends InputParser<PuzzleInput> {
  const Day1Puzzle1InputParser(super.rawInput);

  @override
  PuzzleInput parse() {
    return rawInput.trim().split('\n').map((line) {
      final directionMarker = line[0];
      final distanceString = line.substring(1);
      final distance = int.parse(distanceString);

      return (
        direction: switch (directionMarker) {
          'R' => Direction.right,
          'L' => Direction.left,
          _ => throw StateError('Invalid direction: $directionMarker'),
        },
        distance: distance,
      );
    }).toList();
  }
}
