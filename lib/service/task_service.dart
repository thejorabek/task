import 'package:dio/dio.dart';

class TaskService {
  static getAllData() async {
    Response res = await Dio().get('https://flutter-task.free.mockoapp.net/data');
    print(res.data);
    return res.data;
  }
}
