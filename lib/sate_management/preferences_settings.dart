import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

/// A class that holds [Preference] objects for the common values that you want
/// to store in your app. This is *not* necessarily needed, but it makes your
/// code more neat and fool-proof.
class StreamingSharedPreferencesSettings {
  StreamingSharedPreferencesSettings(StreamingSharedPreferences preferences)
      : token = preferences.getString('token', defaultValue: ''),
        fullName = preferences.getString('full_name', defaultValue: '');

  final Preference<String> token;
  final Preference<String> fullName;
}
