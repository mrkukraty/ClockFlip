class ClockModel {
  DateTime currentTime;

  ClockModel(this.currentTime);

  void updateTime() {
    currentTime = DateTime.now();
  }

  String get formattedTime {
    return '${currentTime.toUtc().toIso8601String()} UTC';
  }
}