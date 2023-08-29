import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int firstTeamPoint = 0;
  int secondTeamPoint = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    void incrementPoint({int? point1, int? point2}) {
      if (point1 != null) {
        //this is for selecting that first point increase or second point increase
        setState(() {
          firstTeamPoint++;
        });
      } else if (point2 != null) {
        setState(() {
          secondTeamPoint++;
        });
      }
    }

    void decrementPoint({int? point1, int? point2}) {
      if (point1 != null) {
        if (firstTeamPoint > 0) {
          //the second condition is for that  to the point not be -1 only if it was bigger than 0 then decrease it to 0
          setState(() {
            firstTeamPoint--;
          });
        }
      } else if (point2 != null) {
        if (secondTeamPoint > 0) {
          setState(() {
            secondTeamPoint--;
          });
        }
      }
    }

    void resetPoint({int? point1, int? point2}) {
      if (point1 != null) {
        setState(() {
          firstTeamPoint = 0;
        });
      } else if (point2 != null) {
        setState(() {
          secondTeamPoint = 0;
        });
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Tayra APP"),
        centerTitle: true,
      ),
      body: Container(
        width: width,
        decoration: BoxDecoration(color: Colors.teal.shade100),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Column(
                  children: [
                    Text(
                      'تیپی یەکەم',
                      style: TextStyle(fontSize: 39),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Text(
                      "$firstTeamPoint",
                      style: TextStyle(fontSize: 79),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    FilledButton(
                      onPressed: () {
                        incrementPoint(point1: 1);
                      },
                      child: Text(
                        "زیادکردن",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        // fixedSize: MaterialStateProperty.all(Size(80, 80)),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    FilledButton(
                      onPressed: () {
                        decrementPoint(point1: 1);
                      },
                      child: Text(
                        "کەمکردن",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        // fixedSize: MaterialStateProperty.all(Size(80, 80)),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    FilledButton(
                      onPressed: () {
                        resetPoint(point1: 1);
                      },
                      child: Text(
                        "دووبارەکردنەوە",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        // fixedSize: MaterialStateProperty.all(Size(80, 80)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: VerticalDivider(
                  color: Colors.blue,
                  thickness: 2,
                  width: 20,
                ),
              ),
              Column(
                children: [
                  Text(
                    'تیپی دووەم',
                    style: TextStyle(fontSize: 39),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    "$secondTeamPoint",
                    style: TextStyle(fontSize: 79),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  FilledButton(
                    onPressed: () {
                      incrementPoint(point2: 1);
                    },
                    child: Text(
                      "زیادکردن",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      // fixedSize: MaterialStateProperty.all(Size(80, 80)),
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  FilledButton(
                    onPressed: () {
                      decrementPoint(point2: 1);
                    },
                    child: Text(
                      "کەمکردن",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      // fixedSize: MaterialStateProperty.all(Size(80, 80)),
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  FilledButton(
                    onPressed: () {
                      resetPoint(point2: 1);
                    },
                    child: Text(
                      "دووبارەکردنەوە",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      // fixedSize: MaterialStateProperty.all(Size(80, 80)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
