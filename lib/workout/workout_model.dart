
part of 'workout_lib.dart';

class WorkoutModel extends WorkoutEntity {
  WorkoutModel(
      {super.notes = '',
      super.tags = const <String>[],
      required super.uid,
      required super.duration,
      required super.name,
      required super.photoUrl,
      super.benefit = '',
      int? views,
      required super.numberOfSets,
      required super.exercises,
      required super.visibilityStatus,
      required super.creatorName,
      required super.dateCreated,
      required super.creatorPhotoUrl,
      required super.creatorUid,
      super.likes = const <String>[],
      required super.runtimeInMilliseconds,
      required super.desc})
      : super(views: views ?? -1);

  // final WorkoutVisibilityStatus visibilityStatus;
  // final DateTime dateCreated;
  // final String uid;
  // final int numberOfSets;
  // final String name;
  // final String photoUrl;
  // final String benefit;
  // final List<ExerciseModel> exercises;
  // final String creatorName;
  // final String creatorPhotoUrl;
  // final String notes;
  // final List<String> tags;
  // final String duration;
  // final String creatorUid;
  // final int runtimeInMilliseconds;
  // final String desc;
  // final List<String> likes;

  factory WorkoutModel.fromJson(Map<String, dynamic> json) {
    return WorkoutModel(
        duration: json['duration'] ?? '0:00:02.000000',
        name: json['name'] ?? '',
        visibilityStatus: parseVisibility(json['visibility_status'] as String),
        uid: json['uid'] ?? '',
        views: forcedCast(json[WorkoutModelKeys.views.key], -1),
        dateCreated: DateTime.tryParse(json['date_created'] as String) ?? DateTime.now(),
        numberOfSets: json['number_of_sets'] ?? 0,
        photoUrl: json['photo_url'] ?? '',
        exercises: (json['exercises'] as List<dynamic>).map((dynamic exercise) {
          return ExerciseModel.fromJson(exercise as Map<String, dynamic>);
        }).toList(growable: false),
        creatorName: json['creator_name'] ?? '',
        creatorPhotoUrl: json['creator_photo_url'] ?? '',
        creatorUid: json['creator_uid'] ?? '',
        runtimeInMilliseconds: json['runtime_in_milliseconds'] ?? '0',
        desc: json['description'] ?? '',
        notes: forcedCast(json['notes'], ''),
        tags: forcedCast(json['tags'], <String>[]),
        likes: forcedCast(json['likes'], <String>[]),
        benefit: json['benefit'] ?? '');
  }

  static WorkoutVisibilityStatus parseVisibility(String visibility) {
    switch (visibility) {
      case 'subscriptions_only':
        {
          return WorkoutVisibilityStatus.subscriptions_only;
        }
      case 'private':
        {
          return WorkoutVisibilityStatus.private;
        }
      case 'public':
      default:
        {
          return WorkoutVisibilityStatus.public;
        }
    }
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'duration': duration,
      'number_of_sets': numberOfSets,
      'name': name,
      'uid': uid,
      'photo_url': photoUrl,
      WorkoutModelKeys.views.key: views,
      'date_created': dateCreated.toIso8601String(),
      'visibility_status': visibilityStatus.name,
      'exercises': exercises.map((ExerciseModel e) => e.toJson()).toList(growable: false),
      'creator_name': creatorName,
      'creator_photo_url': creatorPhotoUrl,
      'creator_uid': creatorUid,
      'runtime_in_milliseconds': runtimeInMilliseconds,
      'description': desc,
      'notes': notes,
      'tags': tags,
      'likes': likes,
      'benefit': benefit
    };
  }
}

enum WorkoutModelKeys {
  views('views');

  final String key;

  const WorkoutModelKeys(this.key);
}
