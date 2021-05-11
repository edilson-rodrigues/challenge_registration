import 'package:shared_preferences/shared_preferences.dart';
import 'local_storage_service_interface.dart';

class SharedLocalStorageServices implements ILocalStorage {
  // delete data local storage
  @override
  Future delete(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.remove(key);
  }

  // get data local storage
  @override
  Future get(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.get(key);
  }

  // add data local storage
  @override
  Future put(String key, dynamic value) async {
    var shared = await SharedPreferences.getInstance();
    if (value is bool) {
      await shared.setBool(key, value);
    } else if (value is String) {
      await shared.setString(key, value);
    } else if (value is int) {
      await shared.setInt(key, value);
    } else if (value is double) {
      await shared.setDouble(key, value);
    } else if (value is List<String>) {
      await shared.setStringList(key, value);
    }
  }
}
