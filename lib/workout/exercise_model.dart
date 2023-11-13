
part of 'workout_lib.dart';

class ExerciseModel {
  ExerciseModel({required this.uid, required this.sets, required this.mvmt});

  final String uid;
  final MovementModel mvmt;
  List<SetModel> sets;

  factory ExerciseModel.fromJson(Map<String, dynamic> json) {
    return ExerciseModel(
      sets: (json['sets'] as List<dynamic>).map((dynamic set) {
        return SetModel.fromJson(set);
      }).toList(growable: false),
      mvmt: MovementModel.fromJson(json['mvmt'] as Map<String, dynamic>),
      uid: json['uid'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'sets': sets.map((SetModel set) => set.toJson()).toList(growable: false),
      'mvmt': mvmt.toJson(),
      uid: uid
    };
  }
}
