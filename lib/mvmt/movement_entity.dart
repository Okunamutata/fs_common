part of 'mvmt_lib.dart' ;

class MovementEntity {
  MovementEntity({
    required this.instructions,
    required this.category,
    required this.dateCreated,
    this.uid = '',
    this.tags = const <String>[],
    required this.name,
    required this.benefit,
    required this.skillLevel,
    required this.views,
    this.creatorName = '',
    this.creatorUid = '',
    this.seedImages = const <String>[],
    required this.muscles,
    required this.equipment,
    required this.title,
    this.creatorUrl = '',
    this.unlisted = false,
    this.proVideoUrl = '',
    required this.images,
    required this.visibilityStatus,
  });

  final MvmtVisibilityStatus visibilityStatus;

  final int views;
  final bool unlisted;
  final DateTime dateCreated;
  final String title;
  final String name;
  final String benefit;
  final int skillLevel;
  final String category;
  final List<String> instructions;
  final List<String> equipment;
  final List<String> muscles;
  final String creatorName;
  final String creatorUid;
  final String creatorUrl;
  final String proVideoUrl;
  final String uid;
  final List<String> images;
  final List<String> seedImages;
  final List<String> tags;
}
