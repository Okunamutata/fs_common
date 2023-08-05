
part of 'workout_lib.dart';

class SetModel {
  SetModel(
      {required this.unit,
      required this.weight,
      required this.name,
      required this.isDoubleSided,
      required this.isBodyWeight,
      required this.isRest,
      this.upperWeightBound = 0.0,
      this.lowerWeightBound = 0.0,
      this.effortLevel = 0,
      this.duration,
      this.useRange = false,
      this.resistanceType = ResistanceType.precise,
      required this.repCount,
      required this.repetitionType});

  final WeightUnit unit;
  final bool isBodyWeight;

  final bool isRest;
  final String name;

  final double weight;

  final int repCount;

  final RepetitionType repetitionType;

  final bool isDoubleSided;

  final Duration? duration;

  final ResistanceType resistanceType;

  final double upperWeightBound;
  final double lowerWeightBound;
  final int effortLevel;
  final bool useRange;
  factory SetModel.fromJson(Map<String, dynamic> json) {
    return SetModel(
        unit: TrainingUtils.parseWeightUnit((json['unit'] ?? '')),
        isRest: (json['is_rest'] ?? false),
        weight: (forcedCast(json['weight'], 32.0)).toDouble(),
        repCount: (json['rep_count'] ?? 0),
        repetitionType: TrainingUtils.parseRepetitionType((json['repetition_type'])),
        isBodyWeight: (json['is_body_weight'] ?? false),
        isDoubleSided: (json['is_double_sided'] ?? false),
        duration: TrainingUtils.parseDuration(json['duration'] ?? ''),
        useRange: forcedCast<bool>(json['use_range'], false),
        lowerWeightBound: forcedCast<double>(json['lower_weight_bound'], 0.0),
        upperWeightBound: forcedCast<double>(json['upper_weight_bound'], 0.0),
        effortLevel: forcedCast<int>(json['effort_level'], 0),
        resistanceType: TrainingUtils.parseResistanceType(forcedCast<String>((json['resistance_type']), 'precise')),
        name: (json['name'] ?? ''));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'lower_weight_bound': lowerWeightBound,
      'upper_weight_bound': upperWeightBound,
      'effort_level': effortLevel,
      'unit': unit.key,
      'is_rest': isRest,
      'weight': weight,
      'name': name,
      'use_range': useRange,
      'rep_count': repCount,
      'repetition_type': repetitionType.key,
      'is_body_weight': isBodyWeight,
      'is_double_sided': isDoubleSided,
      'resistance_type': resistanceType.key,
      'duration': duration != null ? duration.toString() : '0:00:00.000000',
    };
  }
}
