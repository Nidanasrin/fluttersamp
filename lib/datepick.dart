import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Datepick(),));
}
class Datepick extends StatefulWidget{
  @override
  State<Datepick> createState()=>_DatepickState();

  }

class _DatepickState extends State<Datepick> {
  DateTime selectdate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: TextEditingController(
              text: "${selectdate.toLocal()}".split(" ")[0]),
          readOnly: true,
          onTap: () => selectedatee(context),
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.calendar_month),
              hintText: "Select Date"),
          ),
        ),
    );
  }

  Future<void> selectedatee(BuildContext context) async {
    final DateTime? pickdate = await showDatePicker(
        context: context, firstDate: DateTime(200), lastDate: DateTime(2026));
    if (pickdate != null && pickdate != selectdate) {
      setState(() {
        selectdate = pickdate;
      });
    }
  }
}