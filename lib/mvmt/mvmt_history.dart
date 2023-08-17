part of 'mvmt_lib.dart';

class MvmtHistoryModel {
  MvmtHistoryModel(
      {required this.weightHistory,
      this.yearMaxWeight = -1,
      this.yearMaxWeightReps = -1,
      required this.year,
      required this.mvmtUid,
      required this.uid,
      required this.userUid});

  ///key = month, value = Map(day, maxWeight)
  Map<int, Map<int, double>> weightHistory;
  int year, yearMaxWeight, yearMaxWeightReps;
  String userUid, mvmtUid, uid;

  factory MvmtHistoryModel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> weightData =
        json[MvmtHistoryModelKeys.weightHistory.key];
    Map<int, Map<int, double>> data = <int, Map<int, double>>{};

    for (String strKey in weightData.keys) {
      int key = int.parse(strKey);

      // log(weightData[strKey].runtimeType.toString());
      // log(jsonDecode(weightData[strKey]).runtimeType.toString());
      //
      // Map<int, double> temp = jsonDecode(weightData[strKey]);
      Map<String, dynamic> monthData = jsonDecode(
          weightData.values.toList()[weightData.keys.toList().indexOf(strKey)]);
      Map<int, double> month = <int, double>{};
      for (String monthDataKey in monthData.keys) {
        month[int.parse(monthDataKey)] = double.parse(monthData[monthDataKey]);
      }
      log(jsonDecode((weightData.values
              .toList()[weightData.keys.toList().indexOf(strKey)]))
          .runtimeType
          .toString());

      // data[key] = weightData[strKey];
      data[key] = month;
    }
    return MvmtHistoryModel(
        yearMaxWeight:
            forcedCast<int>(json[MvmtHistoryModelKeys.yearMaxWeight.key], -1),
        yearMaxWeightReps: forcedCast<int>(
            json[MvmtHistoryModelKeys.yearMaxWeightReps.key], -1),
        year: forcedCast<int>(json[MvmtHistoryModelKeys.year.key], 2023),
        mvmtUid: forcedCast<String>(json[MvmtHistoryModelKeys.mvmtUid.key], ''),
        uid: forcedCast<String>(json[MvmtHistoryModelKeys.uid.key], ''),
        userUid: forcedCast<String>(json[MvmtHistoryModelKeys.userUid.key], ''),
        weightHistory: data);
  }

  Map<String, dynamic> toJson() {
    log('here');
    Map<String, dynamic> weightData = <String, dynamic>{};
    for (int monthKey in weightHistory.keys) {
      String monthStrKey = monthKey.toString();
      Map<int, double> dayData = weightHistory[monthKey]!;
      Map<String, dynamic> dayStrData = <String, dynamic>{};
      for (int dayKey in dayData.keys) {
        dayStrData[dayKey.toString()] = (dayData[dayKey]).toString();
      }
      weightData[monthStrKey] = jsonEncode(dayStrData);

      // const JsonEncoder().convert(weightHistory.values
      //     .toList()[weightHistory.keys.toList().indexOf(monthKey)]);
    }
    return <String, dynamic>{
      MvmtHistoryModelKeys.yearMaxWeightReps.key: yearMaxWeightReps,
      MvmtHistoryModelKeys.yearMaxWeight.key: yearMaxWeight,
      MvmtHistoryModelKeys.userUid.key: userUid,
      MvmtHistoryModelKeys.uid.key: uid,
      MvmtHistoryModelKeys.mvmtUid.key: mvmtUid,
      MvmtHistoryModelKeys.year.key: year,
      MvmtHistoryModelKeys.weightHistory.key: weightData
    };
  }
}

enum MvmtHistoryModelKeys {
  yearMaxWeight('year_max_weight'),
  yearMaxWeightReps('year_max_weight_reps'),
  userUid('user_uid'),
  uid('uid'),
  mvmtUid('mvmt_uid'),
  weightHistory('weight_history'),
  year('year');

  final String key;

  const MvmtHistoryModelKeys(this.key);
}
