import 'package:flutter/material.dart';
import 'package:flutter3dbutton/ThreeDButton.dart';
import 'package:flutter3dbutton/ThreeDButtonPressed.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('3D Button', style: TextStyle(
                color: Colors.black
            ),),
            backgroundColor: Colors.transparent,
            elevation: 4.0,
            centerTitle: true,
        ),
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () => setState(() {
                      tapped = !tapped;
                  }),
//              onPanStart: (details) {
//                  setState(() {
//                    tapped = true;
//                  });
//              },
//                  onPanEnd: (details){
//                      setState(() {
//                          tapped = false;
//                      });
//                  },
                child: tapped ? ThreeDButtonPressed() : ThreeDButton(),
              ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 32),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.grey
                        ),
                        color: tapped ? Colors.green : Colors.grey[800]
                    ),
                )
            ],
          ),
        ),
    );
  }
}
