import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class ClockDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return FlutterAnalogClock(
      dateTime: DateTime.now(),
      dialPlateColor: Colors.white,
      hourHandColor: Colors.black,
      minuteHandColor: Colors.black,
      secondHandColor: Colors.black,
      numberColor: Colors.black,
      borderColor: Colors.black,
      tickColor: Colors.black,
      centerPointColor: Colors.black,
      showBorder: true,
      showTicks: false,
      showMinuteHand: true,
      showSecondHand: true,
      showNumber: true,
      borderWidth: 8.0,
      hourNumberScale: .10,
      hourNumbers: ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI', 'XII'],
      isLive: true,
      width: 200.0,
      height: 200.0,
      decoration: const BoxDecoration(),
    );
  }
}