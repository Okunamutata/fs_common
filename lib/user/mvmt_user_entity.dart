// ignore_for_file: constant_identifier_names

part of 'mvmt_user_lib.dart';

class UserEntity {
  UserEntity(
      {required this.displayName,
      required this.email,
      required this.uid,
      required this.paidSubscribers,
      required this.paidSubscriptions,
      required this.dateJoined,
      required this.favoriteMovements,
      required this.favoriteWorkouts,
      required this.imageUrl,
      required this.workoutHistory,
      required this.hide,
      required this.interests,
      required this.mvmts,
      required this.searchOptions,
      this.userTier = UserTier.free,
      required this.pronoun,
      required this.lastUpdated,
      required this.views,
      required this.about,
      required this.followers,
      required this.following,
        required this.visibilityStatus,
      required this.userStatus,
      required this.workouts});

  final UserVisibilityStatus visibilityStatus;
  final UserStatus userStatus;
  final int views;
  final UserTier userTier;
  final String about;
  final Pronouns pronoun;
  final String displayName;
  final String imageUrl;
  final DateTime dateJoined;
  final DateTime lastUpdated;
  final String email;
  final String uid;
  final List<String> searchOptions;
  final List<String> favoriteMovements;
  final List<String> favoriteWorkouts;
  final List<String> following;
  final List<String> followers;
  final List<String> mvmts;
  final List<String> workouts;
  final Map<String, String> workoutHistory;
  final List<String> interests;
  final List<String> paidSubscribers;
  final List<String> paidSubscriptions;
  final bool hide;
}
