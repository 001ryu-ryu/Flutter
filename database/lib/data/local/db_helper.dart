import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  //Singleton
  DbHelper._();
  static final DbHelper getInstance = DbHelper._();
  //table note
  static final String TABLE_NOTE = "note";
  static final String COLUMN_NOTE_SNO = "s_no";
  static final String COLUMN_NOTE_TITLE = "title";
  static final String COLUMN_NOTE_DESCRIPTION = "description";


  Database? myDb;

  //db Open(path -> if exists then open else create db)
  Future<Database> getDb() async {
    myDb =  myDb ?? await openDb();
    return myDb!;

    //you can also write like bellow
    // if(myDb != null) {
    //   return myDb!;
    // } else {
    //   return await openDb()!;
    // }
  }

  Future<Database> openDb() async {
    // needs path_provider and path
    Directory appDir = await getApplicationDocumentsDirectory();
    String dbPath = join(appDir.path, "note.db");
    
    return await openDatabase(dbPath, onCreate: (db, version) {
      //create all tables here
      db.execute("create table $TABLE_NOTE ($COLUMN_NOTE_SNO integer primary key autoincrement, $COLUMN_NOTE_TITLE text, $COLUMN_NOTE_DESCRIPTION text)");
      
    }, version: 1);
  }

  //all queries

  //insertion
  Future<bool> addNote({required String mTitle, required String mDesc}) async {
    var db = await getDb();
    int rowsEffected = await  db.insert(TABLE_NOTE, {
      COLUMN_NOTE_TITLE : mTitle,
      COLUMN_NOTE_DESCRIPTION : mDesc
    });

    return rowsEffected > 0;
  }

  Future<List<Map<String, dynamic>>> getAllNotes() async {
    var db = await getDb();

    //select * from note //reading all data
    List<Map<String, dynamic>> mData = await db.query(TABLE_NOTE);
    return mData;
  }
}