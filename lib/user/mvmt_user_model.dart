// ignore_for_file: constant_identifier_names

part of 'mvmt_user_lib.dart';

class MvmtUserModel extends UserEntity {
  MvmtUserModel(
      {required super.displayName,
      required super.email,
      required super.uid,
      int? views,
      required super.paidSubscriptions,
      required super.paidSubscribers,
      required super.dateJoined,
      List<String>? favoriteMovements,
      List<String>? favoriteWorkouts,
      required super.userTier,
      required super.lastUpdated,
      required super.imageUrl,
      UserStatus userStatus = UserStatus.active,
      List<String>? interests,
      List<String>? mvmts,
      required super.about,
      required super.searchOptions,
      required super.hide,
      required super.pronoun,
      UserVisibilityStatus visibilityStatus = UserVisibilityStatus.public,
      List<String>? followers,
      List<String>? following,
      Map<String, String>? workoutHistory,
      List<String>? workouts})
      : super(
            visibilityStatus: visibilityStatus,
            userStatus: userStatus,
            views: views ?? -1,
            workoutHistory: workoutHistory ?? <String, String>{},
            mvmts: mvmts ?? <String>[],
            workouts: workouts ?? <String>[],
            interests: interests ?? <String>[],
            favoriteMovements: favoriteMovements ?? <String>[],
            followers: followers ?? <String>[],
            following: following ?? <String>[],
            favoriteWorkouts: favoriteWorkouts ?? <String>[]);

  factory MvmtUserModel.fromJson(Map<String, dynamic> json) {
    return MvmtUserModel(
        displayName: json['display_name'] ?? '',
        email: json['email'] ?? '',
        paidSubscribers: forcedCast<List<String>>(
            json[MvmtUserKeys.paid_subscribers.key], <String>[]),
        paidSubscriptions: forcedCast<List<String>>(
            json[MvmtUserKeys.paid_subscriptions.key], <String>[]),
        uid: json['uid'] ?? '',
        about: json['about'] ?? '',
        visibilityStatus: UserHandler.parseVisibility(json),
        userTier: UserHandler.parseUserTier(json),
        pronoun: UserHandler.parsePronoun(json),
        workoutHistory: forcedCast<Map<String, String>>(
            json['workout_history'], <String, String>{}),
        dateJoined: forcedCast<DateTime>(
            DateTime.tryParse(json['date_joined']), DateTime.now()),
        lastUpdated: forcedCast<DateTime>(
            DateTime.tryParse(json[MvmtUserKeys.lastUpdated.key]),
            DateTime.now()),
        imageUrl: json['image_url'] ?? '',
        favoriteWorkouts:
            forcedCast<List<String>>(json['favorite_workouts'], <String>[]),
        favoriteMovements: (json['favorite_movements'] as List<dynamic>)
            .map((dynamic str) => str as String)
            .toList(),
        views: forcedCast(json[MvmtUserKeys.views.key], -1),
        interests: (json['interests'] as List<dynamic>)
            .map((dynamic str) => str as String)
            .toList(),
        mvmts: (json['mvmts'] as List<dynamic>)
            .map((dynamic str) => str as String)
            .toList(),
        searchOptions:
            forcedCast(json[MvmtUserKeys.search_options.key], <String>[]),
        following: (json[MvmtUserKeys.following.key] as List<dynamic>)
            .map((dynamic str) => str as String)
            .toList(),
        followers: (json[MvmtUserKeys.followers.key] as List<dynamic>)
            .map((dynamic str) => str as String)
            .toList(),
        workouts: (json['workouts'] as List<dynamic>)
            .map((dynamic str) => str as String)
            .toList(),
        hide: forcedCast(json[MvmtUserKeys.hide.key], false),
        userStatus: UserHandler.parseUserStatus(json));
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'display_name': displayName,
        'email': email,
        'uid': uid,
        MvmtUserKeys.userVisibility.key: visibilityStatus.name,
        MvmtUserKeys.views.key: views,
        MvmtUserKeys.search_options.key: searchOptions,
        MvmtUserKeys.hide.key: hide,
        MvmtUserKeys.paid_subscribers.key: paidSubscribers,
        MvmtUserKeys.paid_subscriptions.key: paidSubscriptions,
        MvmtUserKeys.userTier.key: userTier.name,
        MvmtUserKeys.userStatus.key: userStatus.name,
        'about': about,
        'pronoun': pronoun.key,
        'date_joined': dateJoined.toIso8601String(),
        MvmtUserKeys.lastUpdated.key: lastUpdated.toIso8601String(),
        'image_url': imageUrl,
        'favorite_workouts': favoriteWorkouts,
        'favorite_movements': favoriteMovements,
        'interests': interests,
        'workout_history': workoutHistory,
        'mvmts': mvmts,
        MvmtUserKeys.following.key: following,
        MvmtUserKeys.followers.key: followers,
        'workouts': workouts,
      };
}

enum MvmtUserKeys {
  userStatus('user_status'),
  workouts('workouts'),
  paid_subscribers('paid_subscribers'),
  paid_subscriptions('paid_subscriptions'),
  followers('followers'),
  following('following'),
  mvmts('mvmts'),
  search_options('search_options'),
  hide('hide'),
  lastUpdated('last_updated'),
  views('views'),
  userTier('user_tier'),
  userVisibility('user_visibility'),
  workout_history('workout_history'),
  interests('interests'),
  favorite_movements('favorite_movements'),
  favorite_workouts('favorite_workouts'),
  image_url('image_url'),
  date_joined('date_joined'),
  uid('uid'),
  email('email'),
  about('about'),
  pronoun('pronoun'),
  display_name('display_name');

  final String key;

  const MvmtUserKeys(this.key);
}

enum UserTier { premium, free }

enum UserStatus { active, banned, investigate }

enum UserVisibilityStatus { public, private, admin_block, admin_review }
