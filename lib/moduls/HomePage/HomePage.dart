import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:bmi_calculator/moduls/BmiResult/bmi_result.dart';
import 'package:flutter/material.dart';



class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int color = 0xff23272c ;
  int colors = 0xff23272c ;
  int weight = 50 ;
  int age = 10 ;
  double height = 120.0  ;

  bool isMale  = true;
  AudioCache player = AudioCache(prefix: 'assets/audios/');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff23272c),
      appBar: AppBar(
        backgroundColor: const Color(0xff23272c),
        title: Row(
          children:  [
            Text(
                'BMI ',
                style: TextStyle(
                    color: isMale?Color(0xff00c2e2):Color(0xfffe388d),
                  fontFamily: 'Nerko' ,
                  fontSize: 35
                ),
            ) ,
            const Text(
              'Calculator' ,
              style: TextStyle(
                color: Color(0xff4A4F58),
                  fontFamily: 'Nerko' ,
                  fontSize: 35
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                   child:GestureDetector(
                     onTap: ()=>setState(() {

                       isMale=!isMale;
                       //AudioCache player = AudioCache(prefix: 'assets/audios');
                       player.play('hey Mr.mp3');
                     }),

                     child: Container(
                       width: 200,
                       height: 180,
                       alignment: Alignment.center,
                       decoration:  BoxDecoration(
                       color: isMale?const Color(0xff00c2e2):const Color(0xff23272c),
                          shape: BoxShape.circle ,
                         //borderRadius: BorderRadius.all(Radius.circular(500)) ,
                         boxShadow: const [
                           BoxShadow(
                             color: Color(0xff7f7f7f) ,
                             blurStyle: BlurStyle.outer ,
                             blurRadius: 5 ,
                           ),
                         ] ,
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: const[
                           Image(
                             image:AssetImage(
                               'assets/images/pngeggg.png' ,
                             ),
                             width: 90,
                             height: 90,
                           ) ,
                           Text(
                                'Male' ,
                                style: TextStyle(
                                  color: Colors.white ,
                                  fontSize: 25 ,
                                  fontFamily: 'Nerko'
                                ) ,
                     ) ,
                         ],
                       ),
                     ),
                   ) ,
                ) ,
                Expanded(
                  child:GestureDetector(
                    onTap: ()=>setState(() {
                      // colors=0xfffe388d ;
                      // color =0xff23272c ;
                      isMale=!isMale;
                      player.play('Hey Mrss.mp3');

                    }),
                    child: Container(
                      height: 180,
                      width: 200,
                      alignment: Alignment.center,
                      decoration:  BoxDecoration(
                        color: isMale?const Color(0xff23272c):const Color(0xfffe388d),
                        shape: BoxShape.circle ,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white ,
                            blurStyle: BlurStyle.outer ,
                            blurRadius: 5 ,
                          ),
                        ] ,
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Image(
                              image:AssetImage(
                                  'assets/images/pngwing.com.png' ,
                              ),
                            width: 90,
                            height: 90,
                          ) , 
                          Text(
                            'Female' ,
                            style: TextStyle(
                                color: Colors.white ,
                                fontSize: 25 ,
                                fontFamily: 'Nerko'
                            ) ,
                          ) ,
                        ],
                      ) ,
                    ),
                  ) ,
                ) ,
              ],
            ),
          ) ,


          Expanded(
            child: GestureDetector(
              onTap: ()=>setState(() {
               isMale? player.play('You will change yourhe.mp3'):player.play('woman.mp3');
              }),
              child: Container(
                width: double.infinity,
                margin:const EdgeInsets.symmetric(horizontal: 20 , vertical: 15),
                decoration:  const BoxDecoration(
                  color: Color(0xff23272c),
                  // shape: BoxShape.circle ,
                  borderRadius: BorderRadius.all(Radius.circular(20)) ,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff7f7f7f) ,
                      blurStyle: BlurStyle.outer ,
                      blurRadius: 5 ,
                    ),
                  ] ,
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text(
                    'HEIGHT' ,
                    style: TextStyle(
                      fontSize: 35 ,
                      fontFamily: 'Nerko' ,
                      color: Colors.white ,
                    ),
                  ) ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline:TextBaseline.alphabetic ,
                    children:  [
                      Text(
                        '${height.round()}' ,
                        style: const TextStyle(
                          fontSize: 55 ,
                          fontFamily: 'Nerko' ,
                          color: Colors.white ,
                        ),
                      ),
                      const Text(
                        'cm' ,
                        style: TextStyle(
                          color: Colors.white ,

                          fontFamily: 'Nerko' ,
                          fontSize: 25
                        ),
                        textAlign: TextAlign.end,
                      ) ,

                    ],
                  ) ,
                  Slider(
                    value: height,
                    min: 80,
                    max: 220,
                    activeColor: isMale?Color(0xff00c2e2):Color(0xfffe388d),
                    onChanged: (value)
                    {
                      setState(() {
                        height=value ;
                      });
                    },
                  ) ,


                ],
              ),
          ),
            ) ,
          ) ,


          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: ()=>setState(() {
                      isMale? player.play('You will change yourweight.mp3'):player.play('You will change yourwoman.mp3');
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                      decoration: const BoxDecoration(
                        color: Color(0xff23272c) ,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5 ,
                            blurStyle: BlurStyle.outer ,
                            color: Colors.white ,
                          ) ,
                        ] ,
                        borderRadius: BorderRadius.all(Radius.circular(20)) ,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight(kg)' ,
                            style: TextStyle(
                              fontSize: 30 ,
                              fontFamily: 'Nerko' ,
                              color: Colors.white ,
                            ),
                          ) ,
                          Text(
                            '$weight' ,
                            style: const TextStyle(
                                color: Colors.white ,
                                fontFamily: 'Nerko' ,
                                fontSize: 30

                            ),
                          ) ,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 75,
                                width: 50,
                                child: FloatingActionButton(
                                  heroTag: 'b1',
                                  onPressed: ()=>setState(() {
                                    weight++ ;
                                  }),
                                  backgroundColor: isMale?const Color(0xff00c2e2):const Color(0xfffe388d),

                                  child: const Icon(
                                    Icons.add ,

                                  ),

                                ),
                              ) ,
                              const SizedBox(width: 15,) ,
                              SizedBox(
                                height: 75,
                                width: 50,
                                child: FloatingActionButton(
                                  heroTag: 'b2',

                                  onPressed: ()=>setState(() {
                                    weight-- ;
                                  }),
                                  backgroundColor: isMale?const Color(0xff00c2e2):const Color(0xfffe388d),

                                  child: const Icon(
                                    Icons.remove ,

                                  ),

                                ),
                              ) ,
                            ],
                          ) ,
                        ],
                      ),
                    ),
                  ),
                ) ,
                Expanded(
                  child: GestureDetector(
                    onTap: ()=>setState(() {
                      isMale? player.play('You will change your age man.mp3'):player.play('You will change youragewoam.mp3');

                    }),
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                      decoration: const BoxDecoration(
                        color: Color(0xff23272c) ,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5 ,
                            blurStyle: BlurStyle.outer ,
                            color: Colors.white ,
                          ) ,
                        ] ,
                        borderRadius: BorderRadius.all(Radius.circular(20)) ,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Age(Y)' ,
                            style: TextStyle(
                              fontSize: 30 ,
                              fontFamily: 'Nerko' ,
                              color: Colors.white ,
                            ),
                          ) ,
                          Text(
                            '$age' ,
                            style: const TextStyle(
                                color: Colors.white ,
                                fontFamily: 'Nerko' ,
                                fontSize: 30

                            ),
                          ) ,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 75,
                                width: 50,
                                child: FloatingActionButton(
                                  heroTag: 'b11',

                                  onPressed: ()=>setState(() {
                                    age++ ;
                                  }),
                                  backgroundColor: isMale?const Color(0xff00c2e2):const Color(0xfffe388d),

                                  child: const Icon(
                                    Icons.add ,

                                  ),

                                ),
                              ) ,
                              const SizedBox(width: 15,) ,
                              SizedBox(
                                height: 75,
                                width: 50,
                                child: FloatingActionButton(
                                  heroTag: 'b22',

                                  onPressed: ()=>setState(() {
                                    age-- ;
                                  }),
                                  backgroundColor: isMale?const Color(0xff00c2e2):const Color(0xfffe388d),

                                  child: const Icon(
                                    Icons.remove ,

                                  ),

                                ),
                              ) ,
                            ],
                          ) ,
                        ],
                      ),
                    ),
                  ),
                ) ,
              ],
            )
          ) ,


          GestureDetector(
            onTap: ()=>setState(() {
              isMale? player.play('Your BMI man.mp3'):player.play('Your BMI shown on th (1).mp3');

            }),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(15),
              decoration:  BoxDecoration(
              color: isMale?const Color(0xff00c2e2):const Color(0xfffe388d),
                boxShadow: const [
                BoxShadow(
                blurRadius: 5 ,
                blurStyle: BlurStyle.outer ,
                color: Colors.white ,
                ) ,
                ] ,
                borderRadius: const BorderRadius.all(Radius.circular(20)) ,
                ),
              child: MaterialButton(
                  onPressed: ()
                  {
                    var result = weight/pow(height/100, 2) ;
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(res: result, isM: isMale, a: age, w: weight, h: height))) ;
                    });
                  } ,
                  child: const Text(
                    'Calculate' ,
                    style: TextStyle(
                      fontSize: 35 ,
                      fontFamily: 'Nerko' ,
                      color: Colors.white,
                    ),
                  ),
              ),
            ),
          )


        ],
      ),
    );
  }
}
