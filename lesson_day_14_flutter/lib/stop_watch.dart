import 'package:flutter/material.dart';
import 'dart:async';
//алдаатай байгаа
class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  bool isTicking = true;
  int seconds = 0;
  late Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
  }
  void _onTick(Timer timer) {
    setState(() {
      seconds = seconds + 1;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StopWatch'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: Text(
                '$seconds ${_secondsText()}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: isTicking ? null : _startTimer,
                  child: Text('Start')
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(onPressed: isTicking ? _stopTimer: null,
                  child: Text('Stop'))
            ],
          )
        ],
      ),
    );
  }
  //arrow function
  String _secondsText() => seconds <= 1 ? 'second': 'seconds';
void _startTimer(){
  timer = Timer.periodic(Duration(seconds: 1), _onTick);
  setState(() {
    isTicking = true;
  });
}

void _stopTimer(){
  timer.cancel();
  setState(() {
    isTicking = false;
  });
}
  // String _secondText(){
  //   if(seconds == 1){
  //     return 'second';
  //   }else{
  //     return 'seconds';
  //   }
  // }
}
