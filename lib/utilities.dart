T forcedCast<T>(dynamic x, T fallback) => x is T ? x : fallback;

class Utils{
  static List<String> formatSeedPhoto(List<String> seedImages, String name) {
    List<String> result = <String>[];

    for (String url in seedImages) {
      if (url.contains('assets')) {
        result.add(url);
        continue;
      }
      result.add('assets/${url.replaceFirst('exercises', 'exercises_images').replaceFirst('/$name/', '/')}');
    }
    return result;
  }

  static bool? isEmpty(dynamic value) {
    if (value is String) {
      return value.toString().trim().isEmpty;
    }
    if (value is Iterable || value is Map) {
      return value.isEmpty as bool?;
    }
    return false;
  }
}