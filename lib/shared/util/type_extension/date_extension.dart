import 'dart:math';

import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get dMMMykkmm {
    return DateFormat('d MMM y kk:mm').format(toLocal().toLocal());
  }

  String get dMMMykkmmss {
    return DateFormat('d MMM y kk:mm:ss').format(toLocal().toLocal());
  }

  String get dMMMy {
    return DateFormat('d MMM y').format(toLocal().toLocal());
  }

  String get yMd {
    return DateFormat('y-MM-dd').format(toLocal().toLocal());
  }

  String get d {
    return DateFormat('d').format(toLocal().toLocal());
  }

  String get MMM {
    return DateFormat('MMM').format(toLocal().toLocal());
  }

  String get dMMM {
    return DateFormat('d MMM').format(toLocal().toLocal());
  }

  String get Y {
    return DateFormat('y').format(toLocal().toLocal());
  }

  String get kk {
    return DateFormat('kk').format(toLocal().toLocal());
  }

  String get mm {
    return DateFormat('mm').format(toLocal().toLocal());
  }

  String get ss {
    return DateFormat('ss').format(toLocal().toLocal());
  }

  String get kkmm {
    return DateFormat('kk:mm').format(toLocal().toLocal());
  }

  String get kkmmss {
    return DateFormat('kk:mm:ss').format(toLocal().toLocal());
  }

  bool isToday() {
    return toLocal().year == now.year &&
        toLocal().month == now.month &&
        toLocal().day == now.day;
  }

  bool isSame(DateTime to) {
    return this.year == to.year && this.month == to.month && this.day == to.day;
  }

  bool isThisMonth() {
    return toLocal().year == now.year && toLocal().month == now.month;
  }

  bool isThisYear() {
    return toLocal().year == now.year;
  }

  bool isThisWeek() {
    final today = DateTime(now.year, now.month, now.day);
    final firstDayOfWeek = today.subtract(Duration(days: today.weekday - 1));
    final lastDayOfWeek = today.add(Duration(days: 7 - today.weekday));
    return toLocal()
            .isAfter(firstDayOfWeek.subtract(const Duration(days: 1))) &&
        toLocal().isBefore(lastDayOfWeek.add(const Duration(days: 1)));
  }

  int get daysInMonth {
    final nextMonth = DateTime(year, month + 1);
    final lastDayOfMonth = nextMonth.subtract(Duration(days: 1));
    return lastDayOfMonth.day;
  }
}

DateTime get now => DateTime.now().toLocal();

DateTime get randomDate {
  DateTime startDate = DateTime.now().subtract(Duration(days: 30));
  DateTime endDate = DateTime.now();

  final random = Random();
  final startMillis = startDate.millisecondsSinceEpoch;
  final endMillis = endDate.millisecondsSinceEpoch;
  final randomMillis = startMillis + random.nextInt(endMillis - startMillis);
  return DateTime.fromMillisecondsSinceEpoch(randomMillis);
}

bool isDatesToday(DateTime from, DateTime to) {
  final today = DateTime.now().toLocal();
  final startOfToday = DateTime(today.year, today.month, today.day);
  final endOfToday =
      startOfToday.add(Duration(days: 1)).subtract(Duration(milliseconds: 1));
  return from.isAfter(startOfToday) && to.isBefore(endOfToday);
}

bool isDatesThisWeek(DateTime from, DateTime to) {
  final today = DateTime.now().toLocal();
  final firstDayOfWeek = DateTime(today.year, today.month, today.day);
  final lastDayOfWeek = DateTime(today.year, today.month, today.day + 6);
  return from.isAfter(firstDayOfWeek.subtract(const Duration(days: 1))) &&
      to.isBefore(lastDayOfWeek.add(const Duration(days: 1)));
}

bool isDatesYesterday(DateTime from, DateTime to) {
  final yesterday = DateTime.now().toLocal().subtract(Duration(days: 1));
  final startOfYesterday =
      DateTime(yesterday.year, yesterday.month, yesterday.day);
  final endOfYesterday = startOfYesterday
      .add(Duration(days: 1))
      .subtract(Duration(milliseconds: 1));
  return from.isAfter(startOfYesterday) && to.isBefore(endOfYesterday);
}

bool isDatesTomorrow(DateTime from, DateTime to) {
  final tomorrow = DateTime.now().toLocal().add(Duration(days: 1));
  final startOfTomorrow = DateTime(tomorrow.year, tomorrow.month, tomorrow.day);
  final endOfTomorrow = startOfTomorrow
      .add(Duration(days: 1))
      .subtract(Duration(milliseconds: 1));
  return from.isAfter(startOfTomorrow) && to.isBefore(endOfTomorrow);
}

bool isDatesLast7Days(DateTime from, DateTime to) {
  final today = DateTime.now().toLocal();
  final startOfLast7Days = today.subtract(Duration(days: 6));
  final endOfLast7Days =
      today.add(Duration(days: 1)).subtract(Duration(milliseconds: 1));
  return from.isAfter(startOfLast7Days) && to.isBefore(endOfLast7Days);
}

bool isDatesThisMonth(DateTime from, DateTime to) {
  final today = DateTime.now().toLocal();
  final startOfThisMonth = DateTime(today.year, today.month);
  final endOfThisMonth =
      DateTime(today.year, today.month + 1).subtract(Duration(milliseconds: 1));
  return from.isAfter(startOfThisMonth) && to.isBefore(endOfThisMonth);
}

bool isDatesPreviousMonth(DateTime from, DateTime to) {
  final today = DateTime.now().toLocal();
  final startOfPreviousMonth = DateTime(today.year, today.month - 1);
  final endOfPreviousMonth =
      DateTime(today.year, today.month).subtract(Duration(milliseconds: 1));
  return from.isAfter(startOfPreviousMonth) && to.isBefore(endOfPreviousMonth);
}

bool isDatesNextMonth(DateTime from, DateTime to) {
  final today = DateTime.now().toLocal();
  final startOfNextMonth = DateTime(today.year, today.month + 1);
  final endOfNextMonth =
      DateTime(today.year, today.month + 2).subtract(Duration(milliseconds: 1));
  return from.isAfter(startOfNextMonth) && to.isBefore(endOfNextMonth);
}

bool isDatesThisYear(DateTime from, DateTime to) {
  final today = DateTime.now().toLocal();
  final startOfThisYear = DateTime(today.year);
  final endOfThisYear =
      DateTime(today.year + 1).subtract(Duration(milliseconds: 1));
  return from.isAfter(startOfThisYear) && to.isBefore(endOfThisYear);
}

bool isDatesPreviousYear(DateTime from, DateTime to) {
  final today = DateTime.now().toLocal();
  final startOfPreviousYear = DateTime(today.year - 1);
  final endOfPreviousYear =
      DateTime(today.year).subtract(Duration(milliseconds: 1));
  return from.isAfter(startOfPreviousYear) && to.isBefore(endOfPreviousYear);
}

bool isDatesNextYear(DateTime from, DateTime to) {
  final today = DateTime.now().toLocal();
  final startOfNextYear = DateTime(today.year + 1);
  final endOfNextYear =
      DateTime(today.year + 2).subtract(Duration(milliseconds: 1));
  return from.isAfter(startOfNextYear) && to.isBefore(endOfNextYear);
}
