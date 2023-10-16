import 'package:flutter/material.dart';
import 'package:word_find_app/gradient_letter.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
      home:  Scaffold(

        body:  Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/back1.png'))),
            child:  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFFFF9002),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: FractionallySizedBox(

                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                  colors: [Color.fromRGBO(255, 144, 2, 0), Color(0xFFE48000)],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [-0.025, 1.6875],
                                  transform: GradientRotation(180)
                                )
                              ),
                              child: Text('W',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Ribeye',
                                    fontSize: 38,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xFFFFFFFF),
                                  height: 52/45
                                ),),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      GradientLetter(word: 'O'),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFFFF9002),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: FractionallySizedBox(

                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                      colors: [Color.fromRGBO(255, 144, 2, 0), Color(0xFFE48000)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [-0.025, 1.6875],
                                      transform: GradientRotation(180)
                                  )
                              ),
                              child: Text('R',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Ribeye',
                                    fontSize: 38,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xFFFFFFFF),
                                  height: 52/45
                                ),),
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFFFF9002),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: FractionallySizedBox(

                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: LinearGradient(
                                      colors: [Color.fromRGBO(255, 144, 2, 0), Color(0xFFE48000)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [-0.025, 1.6875],
                                      transform: GradientRotation(180)
                                  )
                              ),
                              child: Text('D',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Ribeye',
                                    fontSize: 38,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xFFFFFFFF),
                                  height: 52/45
                                ),),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Text(
                    'GAME',
                    style: TextStyle(
                      fontFamily: 'Ribeye',
                        fontSize: 25,
                    color: Colors.orange,
                    fontWeight: FontWeight.w400
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 25)),
                  Image.asset('assets/images/icodeGuy.png'),
                  Padding(padding: EdgeInsets.only(top: 70)),
                  Text(
                    'READY?',
                    style: TextStyle(
                        fontFamily: 'Ribeye',
                        fontSize: 25,
                        color: Colors.orange,
                        fontWeight: FontWeight.w400,
                    ),),
                  Padding(padding: EdgeInsets.only(top: 25)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                    ),
                    onPressed: () {},
                    child: Container(
                      width: 310,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        textAlign: TextAlign.center,
                        'PLAY',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 24,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





