import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pav_game/side_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class GameView extends StatefulWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {

  @override
  Widget build(BuildContext context) {

    const numberQueen = '*120*5455#';
    const numberLucky = '*120*1310#';

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 50, right: 50, bottom: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: const <Widget>[
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('PAV GAME', style: TextStyle(fontSize: 53),),
                ),
                Divider(color: Colors.orange),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        width: 4.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Gaming",
                      style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),

                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
               Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Please select a card and stand a chance to win Airtime",

                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              launch('tel://$numberQueen');
                            },
                            child: Card(
                                elevation: 10,
                                color: Colors.amber,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child:  const SizedBox(
                                  width: 200,
                                  height: 100,
                                  child:
                                  Center(child: Text('Queens of Heart', style: TextStyle(fontSize: 20))),
                                )),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text('1 Queen R12 Airtime'),
                        const Divider(color: Colors.amber, thickness: 2),
                        const Text('2 Queen R29 Airtime'),
                        const Divider(color: Colors.amber, thickness: 2),
                        const Text('3 Queen R55 Airtime'),
                        const Divider(color: Colors.amber, thickness: 2),
                        const Text('4 Queen R110 Airtime'),
                        const Divider(color: Colors.amber, thickness: 2),
                        const Text('5 Queen R275 Airtime'),
                        const SizedBox(height: 25,),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              launch('tel://$numberLucky');
                            },
                            child: Card(
                                elevation: 10,
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const SizedBox(
                                  width: 200,
                                  height: 100,
                                  child:
                                  Center(child: Text('Lucky Seven', style: TextStyle(fontSize: 20, color: Colors.white),)),
                                )),
                          ),
                        ),
                        const Text('1 Seven R12 Airtime'),
                        const Divider(color: Colors.blue, thickness: 2),
                        const Text('2 Seven R29 Airtime'),
                        const Divider(color: Colors.blue, thickness: 2),
                        const Text('3 Seven R55 Airtime'),
                        const Divider(color: Colors.blue, thickness: 2),
                        const Text('4 Seven R110 Airtime'),
                        const Divider(color: Colors.blue, thickness: 2),
                        const Text('4 Seven R275 Airtime'),

                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}