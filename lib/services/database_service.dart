import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../models/exercise.dart';

// Example: https://github.com/thecodexhub/flutter-sqflite-example/blob/main/lib/services/database_service.dart

class DatabaseService {
  static final DatabaseService _databaseService = DatabaseService._internal();
  factory DatabaseService() => _databaseService;
  DatabaseService._internal();

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'flutter_sqflite_database.db');

    return await openDatabase(
      path,
      onCreate: _onCreate,
      version: 1,
      onConfigure: (db) async => await db.execute('PRAGMA foreign_keys = ON'),
    );
  }

  // When the database is first created, it created the following tables:
  // * exercises
  // * TODO
  Future<void> _onCreate(Database db, int version) async {
    // Run the CREATE {exercises} TABLE statement on the database
    await db.execute(
      'CREATE TABLE exercises(id INTEGER PRIMARY KEY, name TEXT, reps INTEGER)',
    );
  }

  // Create
  Future<void> createExercise(Exercise exercise) async {
    final db = await _databaseService.database;
    await db.insert(
      'exercises',
      exercise.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Index
  Future<List<Exercise>> exercises() async {
    final db = await _databaseService.database;
    final List<Map<String, dynamic>> maps = await db.query('exercises');

    return List.generate(maps.length, (index) => Exercise.fromMap(maps[index]));
  }

  // Show

  // Update

  // Delete
  Future<void> deleteExercise(int id) async {
    final db = await _databaseService.database;
    await db.delete('exercises', where: 'id = ?', whereArgs: [id]);
  }
}
