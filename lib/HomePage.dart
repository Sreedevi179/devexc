import 'package:devexc/Profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

      ),
      body: SingleChildScrollView(


        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left:35.0,right: 35.0,top:0,bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                alignment: Alignment.center,
                transformAlignment: Alignment.center,
                height: 48,
                width: 335,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                child: FlatButton(

                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => ProfilePage(title: 'Profile')));
                  },
                  child: Text(
                    'Find profiles',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 130,
            ),

          ],
        ),
      ),
    );
  }
}
