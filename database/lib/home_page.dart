import 'package:database/data/local/db_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> allNotes = [];
  DbHelper? dbRef;

  @override
  void initState() {

    super.initState();

    dbRef = DbHelper.getInstance;
    getNotes();
  }

  void getNotes() async {
    allNotes = await dbRef!.getAllNotes();
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      body: allNotes.isEmpty ? ListView.builder(
          itemCount: allNotes.length,
          itemBuilder: (_, index) {  // _ means no context
        return ListTile(
          leading: Text(allNotes[index][DbHelper.COLUMN_NOTE_SNO]),
          title: Text(allNotes[index][DbHelper.COLUMN_NOTE_TITLE]),
          subtitle: Text(allNotes[index][DbHelper.COLUMN_NOTE_DESCRIPTION]),
        );
      }) : Center(
        child: Text("No notes yet"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        dbRef!.addNote(mTitle: "Example Note", mDesc: "Description will be here");
        //getNotes();
      },
      child: Icon(Icons.add),),
    );
  }
}