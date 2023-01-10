import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:oauth2/oauth2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationService {
  static Credentials? credentials;
  static String? userSub;

  Future<String?> getTokenAccess() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token_access');
  }

  Future<String?> getTokenID() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token_id');
  }

  void setToken(String key, var value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  void removeToken(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  void setCredentials(Credentials credential) {
    credentials = credential;
    final decodedIdToken = JwtDecoder.decode(credentials!.idToken!);
    userSub = decodedIdToken['sub'];
  }

  void removeCredentials() {
    credentials = null;
  }

  bool isLoggedIn() {
    if (credentials != null) {
      if (credentials!.isExpired) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
}
