// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(LotteryApp());
}

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  int x = 0;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(5);
            setState(() {});
          },
          child: Icon(
            Icons.refresh,
            color: Colors.black,
          ),
        ),
        appBar: AppBar(
          title: Text('Lottery App'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Lottery winning number is: 3',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: x == 3
                    ? Container(
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadiusDirectional.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.done_all,
                                color: Colors.green,
                                size: 35,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Congratulations You Have Won the Lottery👏\n Your Number is $x',
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 35,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Better Luck Next Time, Your Number is $x\n try again!!😟',
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
