import 'dart:async';

class ClockService {
  DateTime _currentTime;
  Timer _timer;

  ClockService() {
    _currentTime = DateTime.now();
    _startClock();
  }

  void _startClock() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _currentTime = DateTime.now();
    });
  }

  DateTime get currentTime => _currentTime;

  void dispose() {
    _timer.cancel();
  }
}