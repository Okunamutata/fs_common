part of 'workout_lib.dart';

class WorkoutEntity {
  WorkoutEntity(
      {required this.notes,
      required this.numberOfSets,
      required this.tags,
      required this.duration,
      required this.name,
      required this.photoUrl,
      required this.benefit,
      required this.uid,
      required this.exercises,
      required this.creatorName,
      required this.creatorPhotoUrl,
      required this.likes,
      required this.views,
      required this.creatorUid,
      required this.visibilityStatus,
      required this.dateCreated,
      required this.runtimeInMilliseconds,
      required this.desc});

  final int views;
  final WorkoutVisibilityStatus visibilityStatus;
  final DateTime dateCreated;
  final String uid;
  final int numberOfSets;
  final String name;
  final String photoUrl;
  final String benefit;
  final List<ExerciseModel> exercises;
  final String creatorName;
  final String creatorPhotoUrl;
  final String notes;
  final List<String> tags;
  final String duration;
  final String creatorUid;
  final List<String> likes;
  final int runtimeInMilliseconds;
  final String desc;
}

// ignore: constant_identifier_names
enum WorkoutVisibilityStatus { public, private, subscriptions_only }
