import 'dart:ui';

class Program {
  final String count;
  final String description;
  final Color boxColor;

  Program({required this.count, required this.description, required this.boxColor,});
}


class ProgramData {
  final String month;
  final int count;
  final String status;

  ProgramData(this.month, this.count, this.status);
}

