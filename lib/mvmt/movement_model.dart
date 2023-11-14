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
    super.proVideoUrl,
    int? views,
  }) : super(views: views ?? -1);

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
      tags: forcedCast<List<String>>(json['tags'], <String>[]),
      skillLevel: forcedCast(json['skill_level'], 1),
      muscles: forcedCast(json['muscles'], <String>[]),
      category: forcedCast(json['category'], ''),
      equipment: forcedCast(json['equipment'], <String>[]),
      seedImages: Utils.formatSeedPhoto(seedImages, json['name'] ?? ''),
      instructions: forcedCast<List<String>>(json['instructions'], <String>[]),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name, //the '-' separated version of the name, less human readable
      'title': title, // the human readable 'pretty' name
      'uid': uid,
      'benefit': benefit,
      'creator_url': creatorUrl,
      'creator_uid': creatorUid,
      'creator_name': creatorName,
      'unlisted': unlisted,
      'seed_images': seedImages,
      'pro_video_url': proVideoUrl,
      MovementModelKeys.views.key: views,
      'muscles': muscles,
      'equipment': equipment,
      'skill_level': skillLevel,
      'images': images,
      'instructions': instructions,
      'tags': tags,
      'category': category,
      'date_created': dateCreated.toIso8601String()
    };
  }
}

enum MovementModelKeys {
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
