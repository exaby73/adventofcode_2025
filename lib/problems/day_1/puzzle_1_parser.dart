import 'package:adventofcode_2025/types/input_parser.dart';

enum Direction { left, right }

typedef Puzzle1Input = List<({Direction direction, int distance})>;

final class Day1Puzzle1InputParser extends InputParser<Puzzle1Input> {
  const Day1Puzzle1InputParser(super.rawInput);

  @override
  Puzzle1Input parse() {
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
