import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum WorkoutStickers {
  fiveK,
  beastMode,
  dontStop,
  equipment1,
  equipment2,
  letsGo,
  musicPlayer,
  stayStrong1,
  stayStrong2,
  sweatSmile,
  timeToWorkout,
  workHard1,
  workHard2,
  yoga
}

enum LottieIcons {
  yellow_loader(path: 'assets/lottie/yellow_loader.json'),
  upload_success(path: 'assets/lottie/upload_success.json'),
  male_t_pose(path: 'assets/lottie/t-pose.json'),
  orange_loader(path: 'assets/lottie/orange_loader.json'),
  olympic_runner(path: 'assets/lottie/olympic_runner.json'),
  male_power_clean(path: 'assets/lottie/male_power_clean.json'),
  female_box_squat(path: 'assets/lottie/female_box_squat.json'),
  random(path: 'assets/lottie/D9u33F105C.json'),
  breathing(path: 'assets/lottie/breathing.json'),
  breathing2(path: 'assets/lottie/breathing2.json'),
  createAWorkout(path: 'assets/lottie/create_workout.json'),
  createAMvmt(path: 'assets/lottie/create_mvmt.json'),
  upload(path: 'assets/lottie/upload.json'),
  blue_loader(path: 'assets/lottie/blue_loader.json'),
  error(path: 'assets/lottie/error.json'),
  black_loader(path: 'assets/lottie/black_loader.json');

  final String path;

  const LottieIcons({required this.path});
}

enum Equipment {
  barbell(title: 'Barbell', imageUrl: 'assets/equipment/barbell.png'),
  bench(title: 'Bench', imageUrl: 'assets/equipment/bench.png'),
  bar(title: 'Bar', imageUrl: 'assets/equipment/bar.png'),
  bands(title: 'Bands', imageUrl: 'assets/equipment/bands.png'),
  balance_board(title: 'Balance board', imageUrl: 'assets/equipment/balance_board.png'),
  bench_press_machine(title: 'Bench press machine', imageUrl: 'assets/equipment/chest_press_machine.png'),
  body(title: 'Body', imageUrl: 'assets/education/muscle_diagram.PNG'),
  bosu_ball(title: 'Bosu ball', imageUrl: 'assets/equipment/bosu_ball.png'),
  butterfly_machine(title: 'Butterfly machine', imageUrl: 'assets/equipment/butterfly_machine.png'),
  cable_machine(title: 'Cable machine', imageUrl: 'assets/equipment/cable_machine.png'),
  chest_machine(title: 'Chest machine', imageUrl: 'assets/equipment/chest_press_machine.png'),
  decline_bench(title: 'Decline bench', imageUrl: 'assets/equipment/decline_bench.png'),
  dumbbell(title: 'Dumbbell', imageUrl: 'assets/equipment/dumbbell.png'),
  dumbbells(title: 'Dumbbells', imageUrl: 'assets/equipment/dumbbell.png'),
  ez_bar(title: 'Ez-bar', imageUrl: 'assets/equipment/ez_bar.png'),
  exercise_ball(title: 'Exercise ball', imageUrl: 'assets/equipment/medicine_ball.png'),
  exercise_band(title: 'Exercise band', imageUrl: 'assets/equipment/bands.png'),
  flat_bench(title: 'Flat bench', imageUrl: 'assets/equipment/flat_bench.png'),
  hyperextension_bench(title: 'Hyperextension bench', imageUrl: 'assets/equipment/hyper_extension_bench.png'),
  incline_bench(title: 'Incline bench', imageUrl: 'assets/equipment/incline_bench.png'),
  machine(title: 'Machine', imageUrl: ''),
  medicine_ball(title: 'Medicine ball', imageUrl: 'assets/equipment/medicine_ball.png'),
  parallel_bars(title: 'Parallel bars', imageUrl: 'assets/equipment/parallel_bars.png'),
  stability_ball(title: 'Stability ball', imageUrl: 'assets/equipment/stability_ball.png'),
  smith_machine(title: 'Smith machine', imageUrl: 'assets/equipment/smith_machine.png'),
  swiss_ball(title: 'Swiss ball', imageUrl: 'assets/equipment/medicine_ball.png'),
  t_bar_machine(title: 'T-bar machine', imageUrl: 'assets/equipment/t_bar_machine.png'),
  v_bar(title: 'V-bar', imageUrl: 'assets/equipment/v_bar.png'),
  weight(title: 'Weight', imageUrl: 'assets/equipment/weight_plate.png'),
  weight_plate(title: 'Weight plate', imageUrl: 'assets/equipment/weight_plate.png');

  final String title;

  final String imageUrl;

  const Equipment({required this.title, required this.imageUrl});
}

enum Interests {
  isolation(title: 'Isolation'),
  isometric(title: 'Isometric'),
  cardio(title: 'Cardio'),
  plyometric(title: 'Plyometric'),
  yoga(title: 'Yoga'),
  recovery(title: 'Recovery'),
  abdominals(title: 'Abdominals'),
  back(title: 'Back'),
  biceps(title: 'Biceps'),
  chest(title: 'Chest'),
  compound(title: 'Compound'),
  core(title: 'Core'),
  forearm(title: 'Forearm'),
  lateral_deltoid(title: 'Lateral deltoid'),
  lats(title: 'Lats'),
  lower_abdominals(title: 'Lower abdominals'),
  lower_back(title: 'Lower back'),
  middle_back(title: 'Middle back'),
  neck_extensors_neck_flexors(title: 'Neck extensors, neck flexors'),
  neck_side_flexors(title: 'Neck side flexors'),
  posterior_deltoid(title: 'Posterior deltoid'),
  rear_deltoid(title: 'Rear deltoid'),
  shoulders(title: 'Shoulders'),
  trapezius(title: 'Trapezius'),
  triceps(title: 'Triceps'),
  upper_back(title: 'Upper back'),
  barbell(title: 'Barbell'),
  bench(title: 'Bench'),
  bar(title: 'Bar'),
  bands(title: 'Bands'),
  balance_board(title: 'Balance board'),
  bench_press_machine(title: 'Bench press machine'),
  body(title: 'Body'),
  bosu_ball(title: 'Bosu ball'),
  butterfly_machine(title: 'Butterfly machine'),
  cable_machine(title: 'Cable machine'),
  chest_machine(title: 'Chest machine'),
  decline_bench(title: 'Decline bench'),
  dumbbell(title: 'Dumbbell'),
  dumbbells(title: 'Dumbbells'),
  ez_bar(title: 'Ez-bar'),
  exercise_ball(title: 'Exercise ball'),
  exercise_band(title: 'Exercise band'),
  flat_bench(title: 'Flat bench'),
  hyperextension_bench(title: 'Hyperextension bench'),
  incline_bench(title: 'Incline bench'),
  machine(title: 'Machine'),
  medicine_ball(title: 'Medicine ball'),
  parallel_bars(title: 'Parallel bars'),
  stability_ball(title: 'Stability ball'),
  smith_machine(title: 'Smith machine'),
  swiss_ball(title: 'Swiss ball'),
  t_bar_machine(title: 'T-bar machine'),
  v_bar(title: 'V-bar'),
  weight(title: 'Weight'),
  weight_plate(title: 'Weight plate');

  final String title;

  const Interests({required this.title});
}

enum Category {
  cardio(title: 'Cardio'),
  compound(title: 'Compound'),
  isolation(title: 'Isolation'),
  isometric(title: 'Isometric'),
  plyometric(title: 'Plyometric'),
  yoga(title: 'Yoga'),
  recovery(title: 'Recovery');

  final String title;

  const Category({required this.title});
}

enum Muscles {
  abdominals(
      title: 'Abdominals',
      informationalUrl:
          'https://www.physio-pedia.com/Abdominal_Muscles?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  arms(title: 'Arms', informationalUrl: ''),
  back(title: 'Back', informationalUrl: ''),
  biceps(title: 'Biceps', informationalUrl: 'https://www.physio-pedia.com/Biceps_Brachii#'),
  tibialis_anterior(
    informationalUrl:
        'https://www.physio-pedia.com/Tibialis_Anterior?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal',
    title: 'Tibialis Anterior',
  ),
  infraspinatus(
    informationalUrl:
        'https://www.physio-pedia.com/Infraspinatus?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal',
    title: 'Infraspinatus',
  ),
  chest(
      title: 'Chest',
      informationalUrl:
          'https://www.physio-pedia.com/Pectoralis_major?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  core(
      title: 'Core',
      informationalUrl:
          'https://www.physio-pedia.com/Abdominal_Muscles?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  calves(title: 'Calves', informationalUrl: 'https://www.physio-pedia.com/Gastrocnemius'),
  forearm(title: 'Forearm', informationalUrl: 'https://www.physio-pedia.com/Supinator'),
  lateral_deltoid(
      title: 'Lateral deltoid',
      informationalUrl:
          'https://www.physio-pedia.com/Deltoid?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  lats(
      title: 'Lats',
      informationalUrl:
          'https://www.physio-pedia.com/Latissimus_Dorsi_Muscle?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  lower_abdominals(
      title: 'Lower abdominals',
      informationalUrl:
          'https://www.physio-pedia.com/Abdominal_Muscles?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  lower_back(title: 'Lower back', informationalUrl: 'https://www.physio-pedia.com/Thoracolumbar_Fascia'),
  middle_back(title: 'Middle back', informationalUrl: 'https://www.physio-pedia.com/Erector_Spinae'),
  neck_extensors_neck_flexors(
      title: 'Neck extensors, neck flexors', informationalUrl: 'https://www.physio-pedia.com/Levator_Scapulae'),
  neck_side_flexors(title: 'Neck side flexors', informationalUrl: 'https://www.physio-pedia.com/Levator_Scapulae'),
  posterior_deltoid(
      title: 'Posterior deltoid',
      informationalUrl:
          'https://www.physio-pedia.com/Deltoid?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  quadriceps(
      title: 'Quadriceps',
      informationalUrl:
          'https://www.physio-pedia.com/Quadriceps_Muscle?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  hamstrings(
      title: 'Hamstrings',
      informationalUrl:
          'https://www.physio-pedia.com/Hamstrings?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  obliques(
      title: 'Obliques',
      informationalUrl:
          'https://www.physio-pedia.com/External_Abdominal_Oblique?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  hip_abductors(
      title: 'Hip abductors',
      informationalUrl:
          'https://www.physio-pedia.com/Hip_Abductors?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  rear_deltoid(
      title: 'Rear deltoid',
      informationalUrl:
          'https://www.physio-pedia.com/Deltoid?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  shoulders(
      title: 'Shoulders',
      informationalUrl:
          'https://www.physio-pedia.com/Deltoid?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  trapezius(
      title: 'Trapezius',
      informationalUrl:
          'https://www.physio-pedia.com/Trapezius?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  triceps(
      title: 'Triceps',
      informationalUrl:
          'https://www.physio-pedia.com/Triceps_brachii?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal'),
  glutes(title: 'Glutes', informationalUrl: 'https://www.physio-pedia.com/Gluteus_Maximus'),
  upper_back(
      title: 'Upper back',
      informationalUrl:
          'https://www.physio-pedia.com/Back_Muscles?utm_source=physiopedia&utm_medium=search&utm_campaign=ongoing_internal');

  final String title;
  final String informationalUrl;

  const Muscles({required this.title, required this.informationalUrl});
}

Map<WorkoutStickers, String> kWorkoutStickers = <WorkoutStickers, String>{
  WorkoutStickers.fiveK: 'assets/icons/5k_sticker.png',
  WorkoutStickers.beastMode: 'assets/icons/beast_mode_sticker.png',
  WorkoutStickers.dontStop: 'assets/icons/dont_stop_sticker.png',
  WorkoutStickers.equipment1: 'assets/icons/equipment_1_sticker.png',
  WorkoutStickers.equipment2: 'assets/icons/equipment_2_sticker.png',
  WorkoutStickers.letsGo: 'assets/icons/lets_go_sticker.png',
  WorkoutStickers.musicPlayer: 'assets/icons/music_player_sticker.png',
  WorkoutStickers.stayStrong1: 'assets/icons/stay_strong_sticker.png',
  WorkoutStickers.stayStrong2: 'assets/icons/stay_strong_2_sticker.png',
  WorkoutStickers.sweatSmile: 'assets/icons/sweat_and_smile_sticker.png',
  WorkoutStickers.timeToWorkout: 'assets/icons/time_to_workout_sticker.png',
  WorkoutStickers.workHard1: 'assets/icons/work_hard_sticker.png',
  WorkoutStickers.workHard2: 'assets/icons/work_hard_2_sticker.png',
  WorkoutStickers.yoga: 'assets/icons/yoga_equi_sticker.png'
};

const List<TextInputFormatter> kDefaultFormatters = <TextInputFormatter>[];

/// A Regex which stops emojis from being entered in text. To use pass as a parameter to [FloatMeInputText]
///
/// ```dart
///   inputFormatters:  [ FilteringTextInputFormatter.deny(RegExp(kDisallowEmojiRegex)),],
/// ```
const String kDisallowEmojiRegex =
    r'   /\uD83C\uDFF4\uDB40\uDC67\uDB40\uDC62(?:\uDB40\uDC77\uDB40\uDC6C\uDB40\uDC73|\uDB40\uDC73\uDB40\uDC63\uDB40\uDC74|\uDB40\uDC65\uDB40\uDC6E\uDB40\uDC67)\uDB40\uDC7F|\uD83D\uDC69\u200D\uD83D\uDC69\u200D(?:\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67]))|\uD83D\uDC68(?:\uD83C\uDFFF\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFE])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFE\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB-\uDFFD\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFD\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB\uDFFC\uDFFE\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFC\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFB\uDFFD-\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFB\u200D(?:\uD83E\uDD1D\u200D\uD83D\uDC68(?:\uD83C[\uDFFC-\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\u200D(?:\u2764\uFE0F\u200D(?:\uD83D\uDC8B\u200D)?\uD83D\uDC68|(?:\uD83D[\uDC68\uDC69])\u200D(?:\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67]))|\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67])|(?:\uD83D[\uDC68\uDC69])\u200D(?:\uD83D[\uDC66\uDC67])|[\u2695\u2696\u2708]\uFE0F|\uD83D[\uDC66\uDC67]|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|(?:\uD83C\uDFFF\u200D[\u2695\u2696\u2708]|\uD83C\uDFFE\u200D[\u2695\u2696\u2708]|\uD83C\uDFFD\u200D[\u2695\u2696\u2708]|\uD83C\uDFFC\u200D[\u2695\u2696\u2708]|\uD83C\uDFFB\u200D[\u2695\u2696\u2708])\uFE0F|\uD83C\uDFFF|\uD83C\uDFFE|\uD83C\uDFFD|\uD83C\uDFFC|\uD83C\uDFFB)?|\uD83E\uDDD1(?:(?:\uD83C[\uDFFB-\uDFFF])\u200D(?:\uD83E\uDD1D\u200D\uD83E\uDDD1(?:\uD83C[\uDFFB-\uDFFF])|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\u200D(?:\uD83E\uDD1D\u200D\uD83E\uDDD1|\uD83C[\uDF3E\uDF73\uDF7C\uDF84\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD]))|\uD83D\uDC69(?:\u200D(?:\u2764\uFE0F\u200D(?:\uD83D\uDC8B\u200D(?:\uD83D[\uDC68\uDC69])|\uD83D[\uDC68\uDC69])|\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFF\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFE\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFD\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFC\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD])|\uD83C\uDFFB\u200D(?:\uD83C[\uDF3E\uDF73\uDF7C\uDF93\uDFA4\uDFA8\uDFEB\uDFED]|\uD83D[\uDCBB\uDCBC\uDD27\uDD2C\uDE80\uDE92]|\uD83E[\uDDAF-\uDDB3\uDDBC\uDDBD]))|\uD83D\uDC69\uD83C\uDFFF\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])(?:\uD83C[\uDFFB-\uDFFE])|\uD83D\uDC69\uD83C\uDFFE\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])(?:\uD83C[\uDFFB-\uDFFD\uDFFF])|\uD83D\uDC69\uD83C\uDFFD\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])(?:\uD83C[\uDFFB\uDFFC\uDFFE\uDFFF])|\uD83D\uDC69\uD83C\uDFFC\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])(?:\uD83C[\uDFFB\uDFFD-\uDFFF])|\uD83D\uDC69\uD83C\uDFFB\u200D\uD83E\uDD1D\u200D(?:\uD83D[\uDC68\uDC69])(?:\uD83C[\uDFFC-\uDFFF])|\uD83D\uDC69\u200D\uD83D\uDC66\u200D\uD83D\uDC66|\uD83D\uDC69\u200D\uD83D\uDC69\u200D(?:\uD83D[\uDC66\uDC67])|(?:\uD83D\uDC41\uFE0F\u200D\uD83D\uDDE8|\uD83D\uDC69(?:\uD83C\uDFFF\u200D[\u2695\u2696\u2708]|\uD83C\uDFFE\u200D[\u2695\u2696\u2708]|\uD83C\uDFFD\u200D[\u2695\u2696\u2708]|\uD83C\uDFFC\u200D[\u2695\u2696\u2708]|\uD83C\uDFFB\u200D[\u2695\u2696\u2708]|\u200D[\u2695\u2696\u2708])|\uD83C\uDFF3\uFE0F\u200D\u26A7|\uD83E\uDDD1(?:(?:\uD83C[\uDFFB-\uDFFF])\u200D[\u2695\u2696\u2708]|\u200D[\u2695\u2696\u2708])|\uD83D\uDC3B\u200D\u2744|(?:(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD6-\uDDDD])(?:\uD83C[\uDFFB-\uDFFF])|\uD83D\uDC6F|\uD83E[\uDD3C\uDDDE\uDDDF])\u200D[\u2640\u2642]|(?:\u26F9|\uD83C[\uDFCB\uDFCC]|\uD83D\uDD75)(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])\u200D[\u2640\u2642]|\uD83C\uDFF4\u200D\u2620|(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD6-\uDDDD])\u200D[\u2640\u2642]|[\xA9\xAE\u203C\u2049\u2122\u2139\u2194-\u2199\u21A9\u21AA\u2328\u23CF\u23ED-\u23EF\u23F1\u23F2\u23F8-\u23FA\u24C2\u25AA\u25AB\u25B6\u25C0\u25FB\u25FC\u2600-\u2604\u260E\u2611\u2618\u2620\u2622\u2623\u2626\u262A\u262E\u262F\u2638-\u263A\u2640\u2642\u265F\u2660\u2663\u2665\u2666\u2668\u267B\u267E\u2692\u2694-\u2697\u2699\u269B\u269C\u26A0\u26A7\u26B0\u26B1\u26C8\u26CF\u26D1\u26D3\u26E9\u26F0\u26F1\u26F4\u26F7\u26F8\u2702\u2708\u2709\u270F\u2712\u2714\u2716\u271D\u2721\u2733\u2734\u2744\u2747\u2763\u2764\u27A1\u2934\u2935\u2B05-\u2B07\u3030\u303D\u3297\u3299]|\uD83C[\uDD70\uDD71\uDD7E\uDD7F\uDE02\uDE37\uDF21\uDF24-\uDF2C\uDF36\uDF7D\uDF96\uDF97\uDF99-\uDF9B\uDF9E\uDF9F\uDFCD\uDFCE\uDFD4-\uDFDF\uDFF5\uDFF7]|\uD83D[\uDC3F\uDCFD\uDD49\uDD4A\uDD6F\uDD70\uDD73\uDD76-\uDD79\uDD87\uDD8A-\uDD8D\uDDA5\uDDA8\uDDB1\uDDB2\uDDBC\uDDC2-\uDDC4\uDDD1-\uDDD3\uDDDC-\uDDDE\uDDE1\uDDE3\uDDE8\uDDEF\uDDF3\uDDFA\uDECB\uDECD-\uDECF\uDEE0-\uDEE5\uDEE9\uDEF0\uDEF3])\uFE0F|\uD83D\uDC69\u200D\uD83D\uDC67\u200D(?:\uD83D[\uDC66\uDC67])|\uD83C\uDFF3\uFE0F\u200D\uD83C\uDF08|\uD83D\uDC69\u200D\uD83D\uDC67|\uD83D\uDC69\u200D\uD83D\uDC66|\uD83D\uDC15\u200D\uD83E\uDDBA|\uD83D\uDC69(?:\uD83C\uDFFF|\uD83C\uDFFE|\uD83C\uDFFD|\uD83C\uDFFC|\uD83C\uDFFB)?|\uD83C\uDDFD\uD83C\uDDF0|\uD83C\uDDF6\uD83C\uDDE6|\uD83C\uDDF4\uD83C\uDDF2|\uD83D\uDC08\u200D\u2B1B|\uD83D\uDC41\uFE0F|\uD83C\uDFF3\uFE0F|\uD83E\uDDD1(?:\uD83C[\uDFFB-\uDFFF])?|\uD83C\uDDFF(?:\uD83C[\uDDE6\uDDF2\uDDFC])|\uD83C\uDDFE(?:\uD83C[\uDDEA\uDDF9])|\uD83C\uDDFC(?:\uD83C[\uDDEB\uDDF8])|\uD83C\uDDFB(?:\uD83C[\uDDE6\uDDE8\uDDEA\uDDEC\uDDEE\uDDF3\uDDFA])|\uD83C\uDDFA(?:\uD83C[\uDDE6\uDDEC\uDDF2\uDDF3\uDDF8\uDDFE\uDDFF])|\uD83C\uDDF9(?:\uD83C[\uDDE6\uDDE8\uDDE9\uDDEB-\uDDED\uDDEF-\uDDF4\uDDF7\uDDF9\uDDFB\uDDFC\uDDFF])|\uD83C\uDDF8(?:\uD83C[\uDDE6-\uDDEA\uDDEC-\uDDF4\uDDF7-\uDDF9\uDDFB\uDDFD-\uDDFF])|\uD83C\uDDF7(?:\uD83C[\uDDEA\uDDF4\uDDF8\uDDFA\uDDFC])|\uD83C\uDDF5(?:\uD83C[\uDDE6\uDDEA-\uDDED\uDDF0-\uDDF3\uDDF7-\uDDF9\uDDFC\uDDFE])|\uD83C\uDDF3(?:\uD83C[\uDDE6\uDDE8\uDDEA-\uDDEC\uDDEE\uDDF1\uDDF4\uDDF5\uDDF7\uDDFA\uDDFF])|\uD83C\uDDF2(?:\uD83C[\uDDE6\uDDE8-\uDDED\uDDF0-\uDDFF])|\uD83C\uDDF1(?:\uD83C[\uDDE6-\uDDE8\uDDEE\uDDF0\uDDF7-\uDDFB\uDDFE])|\uD83C\uDDF0(?:\uD83C[\uDDEA\uDDEC-\uDDEE\uDDF2\uDDF3\uDDF5\uDDF7\uDDFC\uDDFE\uDDFF])|\uD83C\uDDEF(?:\uD83C[\uDDEA\uDDF2\uDDF4\uDDF5])|\uD83C\uDDEE(?:\uD83C[\uDDE8-\uDDEA\uDDF1-\uDDF4\uDDF6-\uDDF9])|\uD83C\uDDED(?:\uD83C[\uDDF0\uDDF2\uDDF3\uDDF7\uDDF9\uDDFA])|\uD83C\uDDEC(?:\uD83C[\uDDE6\uDDE7\uDDE9-\uDDEE\uDDF1-\uDDF3\uDDF5-\uDDFA\uDDFC\uDDFE])|\uD83C\uDDEB(?:\uD83C[\uDDEE-\uDDF0\uDDF2\uDDF4\uDDF7])|\uD83C\uDDEA(?:\uD83C[\uDDE6\uDDE8\uDDEA\uDDEC\uDDED\uDDF7-\uDDFA])|\uD83C\uDDE9(?:\uD83C[\uDDEA\uDDEC\uDDEF\uDDF0\uDDF2\uDDF4\uDDFF])|\uD83C\uDDE8(?:\uD83C[\uDDE6\uDDE8\uDDE9\uDDEB-\uDDEE\uDDF0-\uDDF5\uDDF7\uDDFA-\uDDFF])|\uD83C\uDDE7(?:\uD83C[\uDDE6\uDDE7\uDDE9-\uDDEF\uDDF1-\uDDF4\uDDF6-\uDDF9\uDDFB\uDDFC\uDDFE\uDDFF])|\uD83C\uDDE6(?:\uD83C[\uDDE8-\uDDEC\uDDEE\uDDF1\uDDF2\uDDF4\uDDF6-\uDDFA\uDDFC\uDDFD\uDDFF])|[#\*0-9]\uFE0F\u20E3|(?:\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD6-\uDDDD])(?:\uD83C[\uDFFB-\uDFFF])|(?:\u26F9|\uD83C[\uDFCB\uDFCC]|\uD83D\uDD75)(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])|\uD83C\uDFF4|(?:[\u270A\u270B]|\uD83C[\uDF85\uDFC2\uDFC7]|\uD83D[\uDC42\uDC43\uDC46-\uDC50\uDC66\uDC67\uDC6B-\uDC6D\uDC72\uDC74-\uDC76\uDC78\uDC7C\uDC83\uDC85\uDCAA\uDD7A\uDD95\uDD96\uDE4C\uDE4F\uDEC0\uDECC]|\uD83E[\uDD0C\uDD0F\uDD18-\uDD1C\uDD1E\uDD1F\uDD30-\uDD34\uDD36\uDD77\uDDB5\uDDB6\uDDBB\uDDD2-\uDDD5])(?:\uD83C[\uDFFB-\uDFFF])|(?:[\u261D\u270C\u270D]|\uD83D[\uDD74\uDD90])(?:\uFE0F|\uD83C[\uDFFB-\uDFFF])|[\u270A\u270B]|\uD83C[\uDF85\uDFC2\uDFC7]|\uD83D[\uDC08\uDC15\uDC3B\uDC42\uDC43\uDC46-\uDC50\uDC66\uDC67\uDC6B-\uDC6D\uDC72\uDC74-\uDC76\uDC78\uDC7C\uDC83\uDC85\uDCAA\uDD7A\uDD95\uDD96\uDE4C\uDE4F\uDEC0\uDECC]|\uD83E[\uDD0C\uDD0F\uDD18-\uDD1C\uDD1E\uDD1F\uDD30-\uDD34\uDD36\uDD77\uDDB5\uDDB6\uDDBB\uDDD2-\uDDD5]|\uD83C[\uDFC3\uDFC4\uDFCA]|\uD83D[\uDC6E\uDC70\uDC71\uDC73\uDC77\uDC81\uDC82\uDC86\uDC87\uDE45-\uDE47\uDE4B\uDE4D\uDE4E\uDEA3\uDEB4-\uDEB6]|\uD83E[\uDD26\uDD35\uDD37-\uDD39\uDD3D\uDD3E\uDDB8\uDDB9\uDDCD-\uDDCF\uDDD6-\uDDDD]|\uD83D\uDC6F|\uD83E[\uDD3C\uDDDE\uDDDF]|[\u231A\u231B\u23E9-\u23EC\u23F0\u23F3\u25FD\u25FE\u2614\u2615\u2648-\u2653\u267F\u2693\u26A1\u26AA\u26AB\u26BD\u26BE\u26C4\u26C5\u26CE\u26D4\u26EA\u26F2\u26F3\u26F5\u26FA\u26FD\u2705\u2728\u274C\u274E\u2753-\u2755\u2757\u2795-\u2797\u27B0\u27BF\u2B1B\u2B1C\u2B50\u2B55]|\uD83C[\uDC04\uDCCF\uDD8E\uDD91-\uDD9A\uDE01\uDE1A\uDE2F\uDE32-\uDE36\uDE38-\uDE3A\uDE50\uDE51\uDF00-\uDF20\uDF2D-\uDF35\uDF37-\uDF7C\uDF7E-\uDF84\uDF86-\uDF93\uDFA0-\uDFC1\uDFC5\uDFC6\uDFC8\uDFC9\uDFCF-\uDFD3\uDFE0-\uDFF0\uDFF8-\uDFFF]|\uD83D[\uDC00-\uDC07\uDC09-\uDC14\uDC16-\uDC3A\uDC3C-\uDC3E\uDC40\uDC44\uDC45\uDC51-\uDC65\uDC6A\uDC79-\uDC7B\uDC7D-\uDC80\uDC84\uDC88-\uDCA9\uDCAB-\uDCFC\uDCFF-\uDD3D\uDD4B-\uDD4E\uDD50-\uDD67\uDDA4\uDDFB-\uDE44\uDE48-\uDE4A\uDE80-\uDEA2\uDEA4-\uDEB3\uDEB7-\uDEBF\uDEC1-\uDEC5\uDED0-\uDED2\uDED5-\uDED7\uDEEB\uDEEC\uDEF4-\uDEFC\uDFE0-\uDFEB]|\uD83E[\uDD0D\uDD0E\uDD10-\uDD17\uDD1D\uDD20-\uDD25\uDD27-\uDD2F\uDD3A\uDD3F-\uDD45\uDD47-\uDD76\uDD78\uDD7A-\uDDB4\uDDB7\uDDBA\uDDBC-\uDDCB\uDDD0\uDDE0-\uDDFF\uDE70-\uDE74\uDE78-\uDE7A\uDE80-\uDE86\uDE90-\uDEA8\uDEB0-\uDEB6\uDEC0-\uDEC2\uDED0-\uDED6]|(?:[\u231A\u231B\u23E9-\u23EC\u23F0\u23F3\u25FD\u25FE\u2614\u2615\u2648-\u2653\u267F\u2693\u26A1\u26AA\u26AB\u26BD\u26BE\u26C4\u26C5\u26CE\u26D4\u26EA\u26F2\u26F3\u26F5\u26FA\u26FD\u2705\u270A\u270B\u2728\u274C\u274E\u2753-\u2755\u2757\u2795-\u2797\u27B0\u27BF\u2B1B\u2B1C\u2B50\u2B55]|\uD83C[\uDC04\uDCCF\uDD8E\uDD91-\uDD9A\uDDE6-\uDDFF\uDE01\uDE1A\uDE2F\uDE32-\uDE36\uDE38-\uDE3A\uDE50\uDE51\uDF00-\uDF20\uDF2D-\uDF35\uDF37-\uDF7C\uDF7E-\uDF93\uDFA0-\uDFCA\uDFCF-\uDFD3\uDFE0-\uDFF0\uDFF4\uDFF8-\uDFFF]|\uD83D[\uDC00-\uDC3E\uDC40\uDC42-\uDCFC\uDCFF-\uDD3D\uDD4B-\uDD4E\uDD50-\uDD67\uDD7A\uDD95\uDD96\uDDA4\uDDFB-\uDE4F\uDE80-\uDEC5\uDECC\uDED0-\uDED2\uDED5-\uDED7\uDEEB\uDEEC\uDEF4-\uDEFC\uDFE0-\uDFEB]|\uD83E[\uDD0C-\uDD3A\uDD3C-\uDD45\uDD47-\uDD78\uDD7A-\uDDCB\uDDCD-\uDDFF\uDE70-\uDE74\uDE78-\uDE7A\uDE80-\uDE86\uDE90-\uDEA8\uDEB0-\uDEB6\uDEC0-\uDEC2\uDED0-\uDED6])|(?:[#\*0-9\xA9\xAE\u203C\u2049\u2122\u2139\u2194-\u2199\u21A9\u21AA\u231A\u231B\u2328\u23CF\u23E9-\u23F3\u23F8-\u23FA\u24C2\u25AA\u25AB\u25B6\u25C0\u25FB-\u25FE\u2600-\u2604\u260E\u2611\u2614\u2615\u2618\u261D\u2620\u2622\u2623\u2626\u262A\u262E\u262F\u2638-\u263A\u2640\u2642\u2648-\u2653\u265F\u2660\u2663\u2665\u2666\u2668\u267B\u267E\u267F\u2692-\u2697\u2699\u269B\u269C\u26A0\u26A1\u26A7\u26AA\u26AB\u26B0\u26B1\u26BD\u26BE\u26C4\u26C5\u26C8\u26CE\u26CF\u26D1\u26D3\u26D4\u26E9\u26EA\u26F0-\u26F5\u26F7-\u26FA\u26FD\u2702\u2705\u2708-\u270D\u270F\u2712\u2714\u2716\u271D\u2721\u2728\u2733\u2734\u2744\u2747\u274C\u274E\u2753-\u2755\u2757\u2763\u2764\u2795-\u2797\u27A1\u27B0\u27BF\u2934\u2935\u2B05-\u2B07\u2B1B\u2B1C\u2B50\u2B55\u3030\u303D\u3297\u3299]|\uD83C[\uDC04\uDCCF\uDD70\uDD71\uDD7E\uDD7F\uDD8E\uDD91-\uDD9A\uDDE6-\uDDFF\uDE01\uDE02\uDE1A\uDE2F\uDE32-\uDE3A\uDE50\uDE51\uDF00-\uDF21\uDF24-\uDF93\uDF96\uDF97\uDF99-\uDF9B\uDF9E-\uDFF0\uDFF3-\uDFF5\uDFF7-\uDFFF]|\uD83D[\uDC00-\uDCFD\uDCFF-\uDD3D\uDD49-\uDD4E\uDD50-\uDD67\uDD6F\uDD70\uDD73-\uDD7A\uDD87\uDD8A-\uDD8D\uDD90\uDD95\uDD96\uDDA4\uDDA5\uDDA8\uDDB1\uDDB2\uDDBC\uDDC2-\uDDC4\uDDD1-\uDDD3\uDDDC-\uDDDE\uDDE1\uDDE3\uDDE8\uDDEF\uDDF3\uDDFA-\uDE4F\uDE80-\uDEC5\uDECB-\uDED2\uDED5-\uDED7\uDEE0-\uDEE5\uDEE9\uDEEB\uDEEC\uDEF0\uDEF3-\uDEFC\uDFE0-\uDFEB]|\uD83E[\uDD0C-\uDD3A\uDD3C-\uDD45\uDD47-\uDD78\uDD7A-\uDDCB\uDDCD-\uDDFF\uDE70-\uDE74\uDE78-\uDE7A\uDE80-\uDE86\uDE90-\uDEA8\uDEB0-\uDEB6\uDEC0-\uDEC2\uDED0-\uDED6])\uFE0F|(?:[\u261D\u26F9\u270A-\u270D]|\uD83C[\uDF85\uDFC2-\uDFC4\uDFC7\uDFCA-\uDFCC]|\uD83D[\uDC42\uDC43\uDC46-\uDC50\uDC66-\uDC78\uDC7C\uDC81-\uDC83\uDC85-\uDC87\uDC8F\uDC91\uDCAA\uDD74\uDD75\uDD7A\uDD90\uDD95\uDD96\uDE45-\uDE47\uDE4B-\uDE4F\uDEA3\uDEB4-\uDEB6\uDEC0\uDECC]|\uD83E[\uDD0C\uDD0F\uDD18-\uDD1F\uDD26\uDD30-\uDD39\uDD3C-\uDD3E\uDD77\uDDB5\uDDB6\uDDB8\uDDB9\uDDBB\uDDCD-\uDDCF\uDDD1-\uDDDD])/';

const String kCalculatorLink = 'https://barbell.seewes.com';

const int kDefaultBar = 45;

Map<double, bool> kDefaultWeightPlates = <double, bool>{
  100.0: false,
  65: false,
  55: false,
  50: false,
  45: true,
  35: true,
  30: false,
  25: true,
  20: false,
  15: false,
  12.5: false,
  10: true,
  7.5: false,
  5: false,
  2.5: true,
  1.5: false,
  1: false,
  0.75: false,
  0.5: false,
  0.25: false
};

Map<double, Color> kDefaultWeightPlatesColors = <double, Color>{
  100.0: Colors.pink,
  65: Colors.green,
  55: Colors.blueAccent,
  50: Colors.orangeAccent,
  45: Colors.red,
  35: Colors.lightBlueAccent,
  30: Colors.green,
  25: Colors.orange,
  20: Colors.yellow,
  15: Colors.black54,
  12.5: Colors.redAccent,
  10: Colors.lightGreen,
  7.5: Colors.lightBlue,
  5: Colors.orangeAccent,
  2.5: Colors.cyan,
  1.5: Colors.green,
  1: Colors.red,
  0.75: Colors.black,
  0.5: Colors.lightBlue,
  0.25: Colors.grey
};
const List<String> kMonths = <String>[
  '',
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];

/// {@category Core}

///region User
const String kDefaultUserImage = 'https://firebasestorage.googleapis.com/v0/b/mvmt-ec98a.'
    'appspot.com/o/icons%2Fuser_icons%2Fparty_sticker.png?alt=media'
    '&token=ee73a843-99a6-4874-95ce-30b9dd311caa';

///endregion

enum RepetitionType {
  timed(title: 'Timed', key: 'timed'),
  numbered(title: 'Numbered', key: 'numbered'),
  till_failure(title: 'Until Failure', key: 'till_failure');

  final String key;
  final String title;

  const RepetitionType({required this.key, required this.title});
}

enum ResistanceType {
  precise(title: 'Precise', key: 'precise'),
  estimate(title: 'Estimate', key: 'estimate');

  final String key;
  final String title;

  const ResistanceType({required this.key, required this.title});
}

enum WeightUnit {
  lb(title: 'lb', key: 'lb'),
  kg(title: 'kg', key: 'kg');

  final String key;
  final String title;

  const WeightUnit({required this.key, required this.title});
}

enum MaxPercentage {
  ten(title: '10 %', key: 'ten'),
  twenty(title: '20 %', key: 'twenty'),
  thirty(title: '30 %', key: 'thirty'),
  ;

  final String key;
  final String title;

  const MaxPercentage({required this.key, required this.title});
}
