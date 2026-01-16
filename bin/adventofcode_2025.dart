// ignore_for_file: avoid_print

import 'dart:io';

import 'package:adventofcode_2025/problems.dart';
import 'package:prompts/prompts.dart' as prompts;

void main(List<String> arguments) {
  late String dayNumberString;
  late String puzzleNumberString;

  if (arguments.length == 2) {
    dayNumberString = arguments[0];
    puzzleNumberString = arguments[1];
  } else {
    dayNumberString = prompts.get('Enter the day number');
  }

  final dayNumber = int.tryParse(dayNumberString);
  if (dayNumber == null) {
    print('Invalid day number: $dayNumberString');
    return;
  }

  if (arguments.length != 2) {
    puzzleNumberString = prompts.get('Enter the puzzle number');
  }

  final puzzleNumber = int.tryParse(puzzleNumberString);
  if (puzzleNumber == null) {
    print('Invalid puzzle number: $puzzleNumberString');
    return;
  }

  try {
    final problem = problems.get(dayNumber, puzzleNumber);

    final inputFile = File(
      'problems/day_$dayNumber/puzzle_$puzzleNumber/input.txt',
    );
    if (!inputFile.existsSync()) {
      print(
        'Input file not found: ${inputFile.path}. Get it from the Advent of Code website.',
      );
      return;
    }

    final input = inputFile.readAsStringSync();
    print(problem.solve(input));
    // ignore: avoid_catching_errors
  } on ArgumentError catch (e) {
    print(e.message);
  }
}
