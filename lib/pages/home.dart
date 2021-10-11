import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:overlay/overlay.dart';

import 'package:rive/rive.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blue,
              child: Text('Use Overlay Widget'),
              // Call CustomOverlay Constructor in on pressed function
              onPressed: () => CustomOverlay(
                context: context,
                // Using overlayWidget
                overlayWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                          'This widget is passed to the overlay using overlayWidget so there is no close button, but you can always close this overlay by tapping anywhere in the darker areas.'),
                    ),
                  ),
                ),
              ),
            ),

            FlutterAnalogClock(
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
              hourNumbers: [
                'I',
                'II',
                'III',
                'IV',
                'V',
                'VI',
                'VII',
                'VIII',
                'IX',
                'X',
                'XI',
                'XII'
              ],
              isLive: true,
              width: 200.0,
              height: 200.0,
              decoration: const BoxDecoration(),
              child: Text('Clock Clock'),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/app-selection');
                },
                child: Icon(Icons.play_arrow),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/app-usage');
                  },
                  child: Icon(Icons.app_settings_alt),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/test');
                  },
                  child: Icon(Icons.airline_seat_recline_extra),
                ),
              ],
            ),
          ], // Your elements here
        ),
      ),
    );
  }
}
