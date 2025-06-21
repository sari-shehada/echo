import 'package:shared_preferences_service/shared_preferences_service.dart';

class LandingNavigationFeature {
  LandingNavigationFeature._({required bool hasLanded})
    : _hasLanded = hasLanded;

  final bool _hasLanded;

  //Getters
  bool get shouldNavigateToLanding => !_hasLanded;

  //Static params
  static late LandingNavigationFeature instance;
  static bool _isInitialized = false;

  //Static Methods
  static void init() {
    if (_isInitialized) return;
    _isInitialized = true;
    instance = LandingNavigationFeature._(hasLanded: _getHasLanded());
  }

  static bool _getHasLanded() {
    return SharedPreferencesService.instance.getValue<bool>(
          key: _kSharedPreferencesKey,
        ) ??
        false;
  }

  static void setFinishedLanding() async {
    await SharedPreferencesService.instance.setValue(
      key: _kSharedPreferencesKey,
      value: true,
    );
  }
}

const Enum _kSharedPreferencesKey = _LandingNavigationFeatureEnum.hasLanded;

enum _LandingNavigationFeatureEnum { hasLanded }
