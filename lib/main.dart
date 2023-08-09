import 'package:flutter/material.dart';

void main() {
  runApp(counter_App());
}

class counter_App extends StatefulWidget {
  const counter_App({super.key});

  @override
  State<counter_App> createState() => _counter_AppState();
}

class _counter_AppState extends State<counter_App> {
  int pointsTeamA = 0;

  int pointsTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '$pointsTeamA',
                      style: const TextStyle(fontSize: 120),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsTeamA++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pointsTeamA += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text('Add 2 Point',
                          style: TextStyle(color: Colors.black)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pointsTeamA += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text('Add 3 Point',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: const VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '$pointsTeamB',
                      style: const TextStyle(fontSize: 120),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pointsTeamB++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text('Add 1 Point',
                          style: TextStyle(color: Colors.black)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pointsTeamB += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text('Add 2 Point',
                          style: TextStyle(color: Colors.black)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pointsTeamB += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: Text('Add 3 Point',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    pointsTeamA = 0;
                    pointsTeamB = 0;
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: Text('Reset',
                    style: TextStyle(color: Colors.black, fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
