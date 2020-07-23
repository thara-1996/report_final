import 'package:flutter/material.dart';

class ReportDetails extends StatefulWidget {
  final Test_name;
  final Test_pricture;
  final Test_description;
  final Test_overview;
  final Test_prepare;
  final Test_done;
  final Test_feel;
  final Test_risks;
  final Test_result;
  final Test_affects;

  ReportDetails(
      {this.Test_name,
      this.Test_pricture,
      this.Test_description,
      this.Test_overview,
      this.Test_prepare,
      this.Test_done,
      this.Test_feel,
      this.Test_risks,
      this.Test_result,
      this.Test_affects,});

  @override
  _ReportDetailsState createState() => _ReportDetailsState();
}

class _ReportDetailsState extends State<ReportDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blueAccent,
        title: Text('ReportApp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.settings_voice,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
//page routing image showing
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.Test_pricture),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.Test_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ),
          //====================first Report catergory==================//
         Padding(padding:const EdgeInsets.all(10.0),
         child: Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text(widget.Test_description),
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 10.0,
                child: Row(
                  children: <Widget>[
                    Align(alignment: Alignment.topRight),
                    Expanded(child: new Text("Test description")),
                    Expanded(child: new Icon(Icons.arrow_drop_down,))
                  ],
                ),

              )
              )
            ],
          ),
         ),
        //============second report catergroy==============
        Padding(padding: const EdgeInsets.all(10.0),
          child:Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text(widget.Test_overview.toString()),
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 10.0,
                child: Row(
                  children: <Widget>[
                    Align(alignment: Alignment.topRight),
                    Expanded(child: new Text("Test overview")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),
        ),
          //===============3rd report catergory=================
          Padding(padding: const EdgeInsets.all(10.0),
          child:Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text(widget.Test_prepare.toString()),
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 10.0,
                child: Row(
                  children: <Widget>[
                    Align(alignment: Alignment.topRight),
                    Expanded(child: new Text("How do prepare for the test")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),
          ),






//===============4th report catergory=================
Padding(padding: const EdgeInsets.all(10.0),
         child: Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text(widget.Test_done.toString()),
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 10.0,
                child: Row(
                  children: <Widget>[
                    Align(alignment: Alignment.topRight),
                    Expanded(child: new Text("How is the test done")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),),

          //===============5th report catergory=================
          Padding(padding: const EdgeInsets.all(10.0),
          child:
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text(widget.Test_feel.toString()),
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 10.0,
                child: Row(
                  children: <Widget>[
                    Align(alignment: Alignment.topRight),
                    Expanded(child: new Text("What would feel during the test")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),),

          //===============6th report catergory=================
          Padding(padding: const EdgeInsets.all(10.0),
          child:
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text(widget.Test_risks.toString()),
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 10.0,
                child: Row(
                  children: <Widget>[
                    Align(alignment: Alignment.topRight),
                    Expanded(child: new Text("What are the risks to the test")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),
          ),
          //===============7th report catergory=================
          Padding(padding: const EdgeInsets.all(10.0),
           child: Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text(widget.Test_result.toString()),
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 10.0,
                child: Row(
                  children: <Widget>[
                    Align(alignment: Alignment.topRight),
                    Expanded(child: new Text("What are the result of the test")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),
          ),
          //===============8th report catergory=================
         Padding(padding: const EdgeInsets.all(10.0),child: Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text(widget.Test_affects.toString()),
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 10.0,
                child: Row(
                  children: <Widget>[
                    Align(alignment: Alignment.topRight),
                    Expanded(child: new Text("what are the affects of the test")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),
          ),
           ],
      ),
    );
  }
}
