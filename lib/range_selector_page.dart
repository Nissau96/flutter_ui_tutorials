// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter_ui_tutorials/randomizer_page.dart';
import 'package:flutter_ui_tutorials/range_selector_form.dart';

class RangeSelectorPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  RangeSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Range'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
      ),
      floatingActionButton: FloatingActionButton( 
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            // TODO: Navigate to generator page
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RandomizerPage(),
              ),
            );
          }
        },
      ),
    );
  }
}
