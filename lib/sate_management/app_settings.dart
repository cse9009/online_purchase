import 'package:flutter/foundation.dart';
import 'package:online_purchase/sate_management/preferences_settings.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

class AppSettings extends ChangeNotifier {
  late StreamingSharedPreferencesSettings streamingSharedPreferencesSettings;
  AppSettings({StreamingSharedPreferences? preferences}) {
    if (preferences != null) {
      setStreamingSharedPreferences(preferences: preferences);
    }
  }
  void setStreamingSharedPreferences(
      {required StreamingSharedPreferences preferences}) {
    streamingSharedPreferencesSettings =
        StreamingSharedPreferencesSettings(preferences);
    notifyListeners();
  }
}
