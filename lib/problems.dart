import 'package:adventofcode_2025/problems/day_1/puzzle_1.dart';

enum Status { unsolved, solved }

abstract base class Problem {
  const Problem(this.status);

  final Status status;

  String solve(String input);
}

const List<List<Problem>> problems = [
  [Day1Puzzle1()],
];

extension Problems on List<List<Problem>> {
  Problem get(int day, int puzzle) {
    if (day < 1 || day > length) {
      throw ArgumentError.value(
        day,
        'day',
        'Day must be between 1 and $length',
      );
    }

    if (puzzle < 1 || puzzle > this[day - 1].length) {
      throw ArgumentError.value(
        puzzle,
        'puzzle',
        'Puzzle must be between 1 and ${this[day - 1].length}',
      );
    }

    return this[day - 1][puzzle - 1];
  }
}
