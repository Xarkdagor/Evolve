// given a list of completed day
// is the habit completed today

import 'package:evolve/models/habit.dart';

bool isHabitCompletedToday(List<DateTime> completedDays) {
  final today = DateTime.now();
  return completedDays.any((date) =>
      date.year == today.year &&
      date.month == today.month &&
      date.day == today.day);
}

// prepare heat map dataset

Map<DateTime, int> prepareHeatMapDataset(List<Habit> habits) {
  final dataset = <DateTime, int>{};
  for (var habit in habits) {
    for (var completedDate in habit.completedDays) {
      // Normalize to the start of the day
      final normalizedDate =
          DateTime(completedDate.year, completedDate.month, completedDate.day);
      dataset[normalizedDate] = (dataset[normalizedDate] ?? 0) + 1;
    }
  }
  return dataset;
}
