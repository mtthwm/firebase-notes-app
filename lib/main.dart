import 'package:firebase_notes_app/note.dart';
import 'package:firebase_notes_app/DataClasses/note_data.dart';
import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NoteData> _notes = <NoteData>[];

  void _setNotes (List<NoteData> newList) {
    setState(() {
      _notes = newList;
    });
  }

  @override
  void initState() {
    _setNotes([NoteData('Title', 'SOME TEXT'), NoteData('Title 2', 'SOME TEXT'), NoteData('Title 3', 'SOME TEXT')]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _notes.length,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          itemBuilder: (BuildContext buildContext, int index) {
            return NoteTile(title: _notes[index].title, text: _notes[index].text);
          }
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Create Note',
        child: Icon(Icons.add),
      ),
    );
  }
}
