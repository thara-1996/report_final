import 'package:record_app/BMI/BMICalculatorScreen.dart';
import 'package:record_app/medicinereminder/mainfile.dart';
import 'package:record_app/models/brew.dart';
import 'package:record_app/screens/Task/main.dart';
import 'package:record_app/screens/home/horizontal.dart';
import 'package:record_app/screens/home/profile.dart';
import 'package:record_app/screens/home/report.dart';
import 'package:record_app/screens/home/settings_form.dart';
import 'package:record_app/services/auth.dart';
import 'package:record_app/services/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/M2.jpg'),
          AssetImage('assets/M3.jpg'),
          AssetImage('assets/M4.jpg'),
          AssetImage('assets/M5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.blueAccent,
        indicatorBgPadding: 6.0,
      ),
    );

    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: SettingsForm(),
            );
          });
    }

    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      child: Scaffold(
        //backgroundColor: Colors.brown[50],
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.blueAccent,
          title: InkWell(
              //onTap: () {
              //  Navigator.push(context,MaterialPageRoute: (builder:(context)=> new Products()));},

              child: Text('ReportApp')),
          actions: <Widget>[
            FlatButton.icon(
                color: Colors.blueAccent,
                icon: Icon(Icons.person),
                label: Text('logout'),
                onPressed: () async {
                  await _auth.signOut();
                })
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              //      header
              new UserAccountsDrawerHeader(
                accountName: Text('Lahiru Bassnayake'),
                accountEmail: Text('lahiru@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.blue),
                  ),
                ),
                decoration: new BoxDecoration(color: Colors.blueAccent),
              ),
// body
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Profile()));
                },
                child: ListTile(
                  title: Text('My Accounts'),
                  leading: Icon(
                    Icons.person,
                    color: Colors.teal,
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new MyMedicineRemainder()));
                },
                child: ListTile(
                  title: Text('Medical Reminder'),
                  leading: Icon(
                    Icons.memory,
                    color: Colors.teal,
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new MyHomePage1()));
                },
                child: ListTile(
                  title: Text('Notes'),
                  leading: Icon(
                    Icons.dashboard,
                    color: Colors.teal,
                  ),
                ),
              ),

              Divider(),
              InkWell(
                onTap: () => _showSettingsPanel(),
                child: ListTile(
                  title: Text('Sugar Level'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new BMICalculatorScreen()));
                },
                child: ListTile(
                  title: Text('BMI Calculator'),
                  leading: Icon(
                    Icons.line_weight,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),

        body: new ListView(
          children: <Widget>
              //imageCaeousel begins here
              [
            imageCarousel,
            new Padding(
              padding: const EdgeInsets.all(8.0),
              // child: new Text('Reports'),
            ),

            //horizontal list begins here
            HorizontalList(),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: new Text('Recent Reports'),
            ),
            //gird veiw
            Container(
              height: 320.0,
              child: Products(),
            )
          ],
        ),
      ),
    );
  }
}
