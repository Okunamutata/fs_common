part of 'workout_lib.dart';
class SetEntity {
  SetEntity(
      {required this.name,
      this.creatorPhotoUrl = '',
      required this.reps,
      required this.movements,
      this.routineUid = '',
      required this.timeInSec,
      this.creatorUid = '',
      this.creatorName = '',
      this.photoUrl = ''});

  final String name;
  final int reps;
  final List<MovementEntity> movements;
  final String routineUid;
  final int timeInSec;
  final String creatorUid;
  final String creatorName;
  final String creatorPhotoUrl;
  final String photoUrl;
}
