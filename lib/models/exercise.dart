import 'dart:convert';

enum MuscleGroup { chest, back, legs, shoulders, core, arms }

class Exercise {
  final int? id;
  final String name;
  final MuscleGroup muscleGroup;

  Exercise({this.id, required this.name, required this.muscleGroup});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'muscleGroup': muscleGroup.index,
    };
  }

  factory Exercise.fromMap(Map<String, dynamic> map) {
    return Exercise(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      muscleGroup: MuscleGroup.values[map['muscleGroup']?.toInt() ?? 0],
    );
  }

  String toJson() => json.encode(toMap());

  factory Exercise.fromJson(String source) =>
      Exercise.fromMap(json.decode(source));

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Dog(id: $id, name: $name, muscleGroup: $muscleGroup)';
  }
}
