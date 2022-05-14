import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      drawerScrimColor: Colors.black.withOpacity(.2),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: const [
            ListTile(
              title: Text('Drawer 1'),
              subtitle: Text('Sub'),
              trailing: Icon(Icons.favorite),
              leading: Icon(Icons.add),
              tileColor: Colors.red,
              selected: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
          ],

        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Image.asset('assets/images/cat.jpg'),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: const Text(
                    'Cat Reloded',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, '/screen2');
            }, child: const Text('Go To The SecondScreen'))
          ],
        ),
      ),
    );
  }
}
