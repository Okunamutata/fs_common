// ignore_for_file: constant_identifier_names

part of 'mvmt_user_lib.dart';

class UserHandler {
  static UserTier parseUserTier(Map<String, dynamic> json) {
    final String data = json[MvmtUserKeys.userTier.key] ?? '';
    switch (data) {
      case 'free':
        return UserTier.free;

      case 'premium':
        return UserTier.premium;

      default:
        return UserTier.free;
    }
  }

  static UserStatus parseUserStatus(Map<String, dynamic> json) {
    final String data = json[MvmtUserKeys.userStatus.key] ?? '';
    switch (data) {
      case 'active':
        return UserStatus.active;

      case 'investigate':
        return UserStatus.investigate;

      case 'banned':
        return UserStatus.banned;

      default:
        return UserStatus.investigate;
    }
  }

  static Pronouns parsePronoun(Map<String, dynamic> json) {
    final String data = json['pronoun'] ?? '';
    switch (data) {
      case 'other':
        return Pronouns.other;
      case 'he_him':
        return Pronouns.he_him;

      case 'she_her':
        return Pronouns.she_her;

      case 'they_them':
        return Pronouns.they_them;

      default:
        return Pronouns.unknown;
    }
  }
}

enum Pronouns {
  other('other', 'other'),
  he_him('he/him', 'he_him'),
  she_her('she/her', 'she_her'),
  they_them('they/them', 'they_them'),
  unknown('unknown', 'unknown');

  final String pronoun;
  final String key;

  const Pronouns(this.pronoun, this.key);
}
