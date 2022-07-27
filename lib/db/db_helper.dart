
import 'package:library_management/models/books_name_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DBHelper{
  static const String createTableBook='''
 create table $tableBook(
 $tableBookColId integer primary key,
 $tableBookColName text,
 $tableBookColAuth text,
 )''';

  static Future<Database> open() async{
    final rootPath =await getDatabasesPath();
    final dbPath =join(rootPath,'book.db');
    return openDatabase(dbPath, version: 1, onCreate: (db,version){
      db.execute(createTableBook);
    });
  }

  static Future<int> insertBook(BookModel bookModel) async{
    final db = await open();
    return db.insert(tableBook, bookModel.toMap());
  }

}