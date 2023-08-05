import 'package:fs_common/constants.dart';

class TrainingUtils{
  static WeightUnit parseWeightUnit(String unit) {
    if (unit == WeightUnit.lb.key) {
      return WeightUnit.lb;
    }
    return WeightUnit.kg;
  }

  static RepetitionType parseRepetitionType(String unit) {
    if (unit == RepetitionType.till_failure.key) {
      return RepetitionType.till_failure;
    } else if (unit == RepetitionType.timed.key) {
      return RepetitionType.timed;
    } else {
      return RepetitionType.numbered;
    }
  }

  static Duration parseDuration(String? s) {
    if (s == null) {
      return const Duration();
    }
    int hours = 0;
    int minutes = 0;
    int micros;
    List<String> parts = s.split(':');
    if (parts.length > 2) {
      hours = int.parse(parts[parts.length - 3]);
    }
    if (parts.length > 1) {
      minutes = int.parse(parts[parts.length - 2]);
    }
    micros = (double.parse(parts[parts.length - 1]) * 1000000).round();
    return Duration(hours: hours, minutes: minutes, microseconds: micros);
  }


  static ResistanceType parseResistanceType(String unit) {
    if (unit == ResistanceType.estimate.key) {
      return ResistanceType.estimate;
    }
    return ResistanceType.precise;
  }
}