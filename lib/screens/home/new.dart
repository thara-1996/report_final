import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Services.dart';
import 'package:record_app/screens/home/patients.dart';
import 'package:record_app/screens/home/Services.dart';


class DataTableDemo extends StatefulWidget {
  //
  DataTableDemo() : super();

  final String title = 'Search Your Report';

  @override
  DataTableDemoState createState() => DataTableDemoState();
}

class Debouncer {
  final int milliseconds;
  VoidCallback action;
  Timer _timer;

  Debouncer({this.milliseconds});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}

class DataTableDemoState extends State<DataTableDemo> {
  List<tblmedicalhistory> _tblmedicalhistory;
  List<tblmedicalhistory> _filtertblmedicalhistory;
  GlobalKey<ScaffoldState> _scaffoldKey;
  // controller for the First Name TextField we are going to create.
  TextEditingController _patientIdController;
  // controller for the Last Name TextField we are going to create.
  //TextEditingController _lastNameController;
  Tblmedicalhistory _selectedPatientId;
    bool _isUpdating;
    String _titleProgress;
    final _debouncer = Debouncer(milliseconds: 500);
  
    @override
    void initState() {
      super.initState();
      _tblmedicalhistory = [];
      _filtertblmedicalhistory = [];
      _isUpdating = false;
      _titleProgress = widget.title;
      _scaffoldKey = GlobalKey(); // key to get the context to show a SnackBar
      _patientIdController = TextEditingController();
      // _lastNameController = TextEditingController();
      _gettblmedicalhistory();
    }
  
    // Method to update title in the AppBar Title
    _showProgress(String message) {
      setState(() {
        _titleProgress = message;
      });
    }
  
    _showSnackBar(context, message) {
      _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  
    _gettblmedicalhistory() {
      _showProgress('Loading Report...');
      Services.gettblmedicalhistory().then((tblmedicalhistory) {
        setState(() {
          _tblmedicalhistory = tblmedicalhistory;
        });
        _showProgress(widget.title); // Reset the title...
        print("Length ${tblmedicalhistory.length}");
      });
    }
  
    // Method to clear TextField values
    _clearValues() {
      _patientIdController.text = '';
      // _lastNameController.text = '';
    }
  
    _showValues(Tblmedicalhistory tblmedicalhistory) {
      
        _patientIdController.text = tblmedicalhistory.patientId;
        //_lastNameController.text = employee.lastName;
      }
    
      // Let's create a DataTable and show the employee list in it.
      SingleChildScrollView _dataBody() {
        // Both Vertical and Horozontal Scrollview for the DataTable to
        // scroll both Vertical and Horizontal...
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: [
                DataColumn(
                  label: Text('ID'),
                ),
                DataColumn(
                  label: Text('PatientID'),
                ),
                DataColumn(
                  label: Text('BloodPressure'),
                ),
                // Lets add one more column to show a delete button
                DataColumn(
                  label: Text('BloodSugar'),
                ),
                DataColumn(
                  label: Text('Weight'),
                ),
                DataColumn(
                  label: Text('Temperature'),
                ),
                DataColumn(
                  label: Text('MedicalPres'),
                ),
              ],
              rows:  _filtertblmedicalhistory
                  .map(
                    (tblmedicalhistory) => DataRow(cells: [
                      DataCell(
                        Text(tblmedicalhistory.id),
                        // Add tap in the row and populate the
                        // textfields with the corresponding values to update
                        onTap: () {
                          // _showValues(tblmedicalhistory);
                          // Set the Selected employee to Update
                          //  _selectedtblmedicalhistory =tblmedicalhistory;
                          setState(() {
                            _isUpdating = true;
                          });
                        },
                      ),
                      DataCell(
                        Text(tblmedicalhistory.patientId),
                        // Add tap in the row and populate the
                        // textfields with the corresponding values to update
                        onTap: () {
                          // _showValues(tblmedicalhistory);
                          // Set the Selected employee to Update
                          //  _selectedtblmedicalhistory =tblmedicalhistory;
                          setState(() {
                            _isUpdating = true;
                          });
                        },
                      ),
                      DataCell(
                        Text(tblmedicalhistory.bloodPressure),
                        // Add tap in the row and populate the
                        // textfields with the corresponding values to update
                        onTap: () {
                          // _showValues(tblmedicalhistory);
                          // Set the Selected employee to Update
                          //  _selectedtblmedicalhistory =tblmedicalhistory;
                          setState(() {
                            _isUpdating = true;
                          });
                        },
                      ),
                      DataCell(
                        Text(tblmedicalhistory. bloodSugar),
                        // Add tap in the row and populate the
                        // textfields with the corresponding values to update
                        onTap: () {
                          // _showValues(tblmedicalhistory);
                          // Set the Selected employee to Update
                          //  _selectedtblmedicalhistory =tblmedicalhistory;
                          setState(() {
                            _isUpdating = true;
                          });
                        },
                      
                      
                
                      ),
                      DataCell(
                        Text(tblmedicalhistory. weight),
                        // Add tap in the row and populate the
                        // textfields with the corresponding values to update
                        onTap: () {
                          // _showValues(tblmedicalhistory);
                          // Set the Selected employee to Update
                          //  _selectedtblmedicalhistory =tblmedicalhistory;
                          setState(() {
                            _isUpdating = true;
                          });
                        },
                      ),
                      DataCell(
                        Text(tblmedicalhistory. temperature),
                        // Add tap in the row and populate the
                        // textfields with the corresponding values to update
                        onTap: () {
                          // _showValues(tblmedicalhistory);
                          // Set the Selected employee to Update
                          //  _selectedtblmedicalhistory =tblmedicalhistory;
                          setState(() {
                            _isUpdating = true;
                          });
                        },
                      ),
                      DataCell(
                        Text(tblmedicalhistory. medicalPres),
                        // Add tap in the row and populate the
                        // textfields with the corresponding values to update
                        onTap: () {
                          // _showValues(tblmedicalhistory);
                          // Set the Selected employee to Update
                          //  _selectedtblmedicalhistory =tblmedicalhistory;
                          setState(() {
                            _isUpdating = true;
                          });
                        },
                    
                      ),
                      
                      
                       ]
                      
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      }
    
    
      searchField() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5.0),
          hintText: 'Input your Patient ID',
        ),
        onChanged: (String) {

          _debouncer.run(() {
            setState(() {
              
            });
            _filtertblmedicalhistory = _tblmedicalhistory
                .where((u) => (u.patientId.contains(String)))
                .toList();
          });
        },
      ),
    );
  }
    
      // UI
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text(_titleProgress), // we show the progress in the title...
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  _gettblmedicalhistory();
                },
              )
            ],
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              
    
                // Add an update button and a Cancel Button
                // show these buttons only when updating an employee
                _isUpdating
                    ? Row(
                        children: <Widget>[
                          OutlineButton(
                            child: Text('UPDATE'),
                            onPressed: () {
                              // _updateEmployee(_selectedEmployee);
                            },
                          ),
                          OutlineButton(
                            child: Text('CANCEL'),
                            onPressed: () {
                              setState(() {
                                _isUpdating = false;
                              });
                              _clearValues();
                            },
                          ),
                        ],
                      )
                    : Container(),
                    searchField(),
                Expanded(
                  child: _dataBody(),
                ),
              ],
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          // onPressed: () {
          //  _addEmployee();
          // },
          // child: Icon(Icons.add),
          // ),
        );
      }
    }
  
  class Tblmedicalhistory {
  String patientId;
}
 
