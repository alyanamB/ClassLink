import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ssfilterMajor = prefs.getString('ff_ssfilterMajor') ?? _ssfilterMajor;
    });
    _safeInit(() {
      _ssfilterCourseNum =
          prefs.getString('ff_ssfilterCourseNum') ?? _ssfilterCourseNum;
    });
    _safeInit(() {
      _ssfilterTime = prefs.getString('ff_ssfilterTime') ?? _ssfilterTime;
    });
    _safeInit(() {
      _showOnboarding = prefs.getBool('ff_showOnboarding') ?? _showOnboarding;
    });
    _safeInit(() {
      _homeVisitCount = prefs.getInt('ff_homeVisitCount') ?? _homeVisitCount;
    });
    _safeInit(() {
      _tFilterMajor = prefs.getString('ff_tFilterMajor') ?? _tFilterMajor;
    });
    _safeInit(() {
      _tFilterCourseNum =
          prefs.getString('ff_tFilterCourseNum') ?? _tFilterCourseNum;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _ssfilterMajor = '';
  String get ssfilterMajor => _ssfilterMajor;
  set ssfilterMajor(String value) {
    _ssfilterMajor = value;
    prefs.setString('ff_ssfilterMajor', value);
  }

  String _ssfilterCourseNum = '';
  String get ssfilterCourseNum => _ssfilterCourseNum;
  set ssfilterCourseNum(String value) {
    _ssfilterCourseNum = value;
    prefs.setString('ff_ssfilterCourseNum', value);
  }

  String _ssfilterTime = '';
  String get ssfilterTime => _ssfilterTime;
  set ssfilterTime(String value) {
    _ssfilterTime = value;
    prefs.setString('ff_ssfilterTime', value);
  }

  String _ssCourseAppState = '';
  String get ssCourseAppState => _ssCourseAppState;
  set ssCourseAppState(String value) {
    _ssCourseAppState = value;
  }

  bool _showOnboarding = false;
  bool get showOnboarding => _showOnboarding;
  set showOnboarding(bool value) {
    _showOnboarding = value;
    prefs.setBool('ff_showOnboarding', value);
  }

  double _npsScore = 0.0;
  double get npsScore => _npsScore;
  set npsScore(double value) {
    _npsScore = value;
  }

  /// To count how many times the homepage is viewed by individual user
  int _homeVisitCount = 0;
  int get homeVisitCount => _homeVisitCount;
  set homeVisitCount(int value) {
    _homeVisitCount = value;
    prefs.setInt('ff_homeVisitCount', value);
  }

  String _tFilterMajor = '';
  String get tFilterMajor => _tFilterMajor;
  set tFilterMajor(String value) {
    _tFilterMajor = value;
    prefs.setString('ff_tFilterMajor', value);
  }

  String _tFilterCourseNum = '';
  String get tFilterCourseNum => _tFilterCourseNum;
  set tFilterCourseNum(String value) {
    _tFilterCourseNum = value;
    prefs.setString('ff_tFilterCourseNum', value);
  }

  String _frmnFilterMAJOR = '';
  String get frmnFilterMAJOR => _frmnFilterMAJOR;
  set frmnFilterMAJOR(String value) {
    _frmnFilterMAJOR = value;
  }

  String _frmnFilterCOURSE = '';
  String get frmnFilterCOURSE => _frmnFilterCOURSE;
  set frmnFilterCOURSE(String value) {
    _frmnFilterCOURSE = value;
  }

  List<AvailabilityStruct> _availability = [];
  List<AvailabilityStruct> get availability => _availability;
  set availability(List<AvailabilityStruct> value) {
    _availability = value;
  }

  void addToAvailability(AvailabilityStruct value) {
    availability.add(value);
  }

  void removeFromAvailability(AvailabilityStruct value) {
    availability.remove(value);
  }

  void removeAtIndexFromAvailability(int index) {
    availability.removeAt(index);
  }

  void updateAvailabilityAtIndex(
    int index,
    AvailabilityStruct Function(AvailabilityStruct) updateFn,
  ) {
    availability[index] = updateFn(_availability[index]);
  }

  void insertAtIndexInAvailability(int index, AvailabilityStruct value) {
    availability.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
