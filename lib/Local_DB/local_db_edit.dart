/*import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DatabaseHelper {
  static final _databaseName = 'my_database.db';
  static final _databaseVersion = 1;

  static final table = 'my_table';
  static final columnId = 'id';
  static final columnName = 'name';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion,
        onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        $columnId INTEGER PRIMARY KEY,
        $columnName TEXT NOT NULL
      )
    ''');
  }

// قم بتنفيذ العمليات المتعلقة بقاعدة البيانات هنا
}

final dbHelper = DatabaseHelper.instance;

// إدخال البيانات
Future<void> insertData(String name) async {
  Database db = await dbHelper.database;
  await db.insert(
    DatabaseHelper.table,
    {DatabaseHelper.columnName: name},
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

// استرداد البيانات
Future<List<Map<String, dynamic>>> retrieveData() async {
  Database db = await dbHelper.database;
  return await db.query(DatabaseHelper.table);
}

// تحديث البيانات
Future<void> updateData(int id, String newName) async {
  Database db = await dbHelper.database;
  await db.update(
    DatabaseHelper.table,
    {DatabaseHelper.columnName: newName},
    where: '${DatabaseHelper.columnId} = ?',
    whereArgs: [id],
  );
}

// حذف البيانات
Future<void> deleteData(int id) async {
  Database db = await dbHelper.database;
  await db.delete(
    DatabaseHelper.table,
    where: '${DatabaseHelper.columnId} = ?',
    whereArgs: [id],
  );
}

*/