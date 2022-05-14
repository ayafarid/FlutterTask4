import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key, required this.title}) : super(key: key);
  final String title;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: const [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.camera),
                      foregroundColor: Colors.orange,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.account_circle),
                            Column(
                              children: const [
                                Text('Change Icon'),
                                Text('Click her to change icon'),
                              ],
                            ),
                            const Icon(Icons.add),
                          ],
                        ),

                      ),
                      SizedBox(height: height*0.2,),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue,
                  ),
                  height: 50,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 390,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(title),
                            const Icon(Icons.add,),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
