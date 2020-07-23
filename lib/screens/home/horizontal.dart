import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:record_app/screens/home/new.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
           Navigator.push(
                    context,
                  MaterialPageRoute(
                        builder: (context) => new DataTableDemo()));
        
        },
        padding: EdgeInsets.all(12),
        color: Colors.blueAccent,
        child: Text('Search report details',
            style: TextStyle(color: Colors.white)),
      ),
    );
  }
}


