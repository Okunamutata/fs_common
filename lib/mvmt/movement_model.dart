// ignore_for_file: constant_identifier_names

part of 'mvmt_lib.dart';

class MovementModel extends MovementEntity {
  MovementModel({
    required super.instructions,
    required super.name,
    required super.uid,
    required super.category,
    required super.dateCreated,
    required super.images,
    required super.benefit,
    required super.title,
    required super.creatorName,
    required super.creatorUrl,
    required super.creatorUid,
    required super.tags,
    required super.skillLevel,
    required super.muscles,
    required super.seedImages,
    required super.unlisted,
    required super.equipment,
    MvmtVisibilityStatus visibilityStatus = MvmtVisibilityStatus.public,
    super.proVideoUrl,
    int? views,
  }) : super(views: views ?? -1, visibilityStatus: visibilityStatus);

  factory MovementModel.fromJson(Map<String, dynamic> json) {
    List<String> seedImages = <String>[];
    for (dynamic seed in json['seed_images'] ?? <String>[]) {
      seedImages.add(seed as String);
    }

    List<String> images = <String>[];
    for (dynamic img in json['images'] ?? <String>[]) {
      images.add(img as String);
    }
    String name = json['name'] ?? '';
    String title = json['title'] ?? '';
    if (title.isEmpty) {
      List<String> parts = name.split('-');
      for (String str in parts) {
        String curr = str.capitalizeFirst();
        title += '$curr ';
      }
    }
    return MovementModel(
      title: title,
      proVideoUrl: json['pro_video_url'] ?? '',
      visibilityStatus: parseVisibility( forcedCast<String>(json['visibility_status'], '')),

      views: forcedCast<int>(json[MovementModelKeys.views.key], -1),
      // 'https://firebasestorage.googleapis.com/v0/b/mvmt-ec98a.appspot.com/o/pro_videos%2Ftest%2Fbody_weight_squat.MOV?alt=media&token=33c7ab1a-a8b7-43d0-9576-27673dcd9672',
      unlisted: forcedCast(json['unlisted'], false),
      name: name,
      creatorName: json['creator_name'] ?? '',
      creatorUrl: json['creator_url'] ?? '',
      images: images,
      creatorUid: json['creator_uid'] ?? '',
      dateCreated: forcedCast(
          DateTime.tryParse(json['date_created'] ?? ''), DateTime(2022, 07)),
      uid: json['uid'] ?? 'none',
      benefit: forcedCast(json['benefit'], ''),
      tags: json['tags'].cast<String>() ?? <String>[],
      skillLevel: forcedCast(json['skill_level'], 1),
      muscles: forcedCast(json['muscles'].cast<String>(), <String>[]),
      category: forcedCast(json['category'], ''),
      equipment: forcedCast(json['equipment'].cast<String>(), <String>[]),
      seedImages: Utils.formatSeedPhoto(seedImages, json['name'] ?? ''),
      instructions: json['instructions'].cast<String>() ?? <String>[],
    );
  }

  static MvmtVisibilityStatus parseVisibility(String visibility) {
    switch (visibility) {
      case 'admin_block':
        {
          return MvmtVisibilityStatus.admin_block;
        }

      case 'admin_review':
        {
          return MvmtVisibilityStatus.admin_review;
        }
      case 'private':
        {
          return MvmtVisibilityStatus.private;
        }
      case 'public':
      default:
        {
          return MvmtVisibilityStatus.public;
        }
    }
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      MovementModelKeys.name.key: name, //the '-' separated version of the name, less human readable
      MovementModelKeys.title.key: title, // the human readable 'pretty' name
      MovementModelKeys.uid.key: uid,
      MovementModelKeys.visibilityStatus.key: visibilityStatus.name,
      MovementModelKeys.benefit.key: benefit,
      MovementModelKeys.creatorUrl.key: creatorUrl,
      MovementModelKeys.creatorUid.key: creatorUid,
      MovementModelKeys.creatorName.key: creatorName,
      MovementModelKeys.unlisted.key: unlisted,
      MovementModelKeys.seedImage.key: seedImages,
      MovementModelKeys.proVideoUrl.key: proVideoUrl,
      MovementModelKeys.views.key: views,
      MovementModelKeys.muscles.key: muscles,
      MovementModelKeys.equipment.key: equipment,
      MovementModelKeys.skill_level.key: skillLevel,
      MovementModelKeys.images.key: images,
      MovementModelKeys.instructions.key: instructions,
      MovementModelKeys.tags.key: tags,
      MovementModelKeys.category.key: category,
      MovementModelKeys.dateCreated.key: dateCreated.toIso8601String()
    };
  }
}

enum MovementModelKeys {
  images(key: 'images'),
  unlisted(key: 'unlisted'),
  creatorName(key: 'creator_name'),
  creatorUid(key: 'creator_uid'),
  creatorUrl(key:'creator_url' ),
  seedImage(key: 'seed_images'),
  visibilityStatus(key: 'visibility_status'),
  benefit(key: 'benefit'),
  dateCreated(key: 'date_created'),
  category(key: 'category'),
  equipment(key: 'equipment'),
  instructions(key: 'instructions'),
  muscles(key: 'muscles'),
  views(key: 'views'),
  name(key: 'name'),
  skill_level(key: 'skill_level'),
  tags(key: 'tags'),
  title(key: 'title'),
  proVideoUrl(key: 'pro_video_url'),
  uid(key: 'uid');

  final String key;

  const MovementModelKeys({required this.key});
}

enum MvmtVisibilityStatus { public, private, admin_block, admin_review }
