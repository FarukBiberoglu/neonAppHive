import 'package:hive_flutter/adapters.dart';
import 'package:untitled/model/user.dart';

class AppStorage {
  static Future<void> appStorageInitialize() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserAdapter());
    await Hive.openBox('local_box');
  }

  static final Box localBox = Hive.box('local_box');
}