import 'package:shared_preferences/shared_preferences.dart';


class SharedPreference {
  static SharedPreferences ?sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();

    for(int i=1;i<=9;i++){

      saveData(key: "0$i", value: 0);
    }
  }

  static Future<bool> saveData({required String key, required dynamic value})
  async {
    if (value is String){return await sharedPreferences!.setString(key, value);}
    if(value is bool){return await sharedPreferences!.setBool(key, value);}
    if(value is int ){return await sharedPreferences!.setInt(key, value);}
    if(value is double ){return await sharedPreferences!.setDouble(key, value);}
    else {
      return false;
    }
  }


  static dynamic getData({required String key})
  {
    return sharedPreferences!.get(key);
  }


  static Future<bool> removeData({required String key})
  async{
    return await sharedPreferences!.remove(key);
  }

  static Future<dynamic> checkKeyExists(String key) async {
    if (sharedPreferences!.containsKey(key)) {
        return sharedPreferences!.get(key);
    } else {
      return 0;
    }
  }


}