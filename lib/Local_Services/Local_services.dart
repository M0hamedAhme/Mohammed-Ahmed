import 'dart:convert';


import '../Local_DB/Data_Base.dart';

import 'package:sqflite/sqflite.dart';

import '../models/TodoModel.dart';

class LocalServices{

  final sqlDb=SqlDB.sqlDb;

  ///Add new Todo record:
  Future<int>createTodo({required Todo todo})async
  {
    final Database? db= await sqlDb.db;
     db!.insert(
        tableName,
        todo.toJson()).then(
            (value) {
                return value;
            }).catchError(
         (onError)
             {
               print(onError.toString());
             }
     );
    return 0;
  }
}