import 'dart:convert';
import 'package:http/http.dart';

class NetworkService {
  final token =
      "qtGQ3qQvlDEXobhyc3E69XjOizht6F07s5fCSKrslIyQ4Rk0DxYPOc4gA07R7Vg6iKM0otpObyftGTgXZJ1AR0GApf6VwwvlxzHkoH8Id2iKVbhV_8R_9iQ_y8IyvdQt7AtM--seiCs8cSUr7vs6peFZ4APnn9AqepgVQCYsXQTkoILPYln8IFBPNU-WQcOe6JYr4LoBJF4OIEpvaMiLyx8Rsfb8vnx96cLYZai6SdqHiylvlLz8oSmINc4LA-rnWmnqkOSC6D_k_4mAGytTABh_ZneHF_QVT6-pE-q_Ig8KzOHRr6zkX-fcEAS6Vub93t5apY2lyPx5lGAg5fEY0qT613WW4oOZ0bmlkpalA2kUhcCxqfq4k1qaNxnkNV0t9HKlGm0yL0NvLDnWNIVIDbY-vWXdvfSOQU61l3RyYeBGMuk8vNrkkmypq_yiIFaJSMJhiSXsSoDWUyUTOv8Qv7oAg-A9IOQHmtKINvJKuXiIcIwb-Zf-ieg7sz4i8f5HZlaN0czpRHxyCMLhF3LI3Q";
  final baseUrl = "https://web.sea-solutions.com/RhinoApi/api/CompanyContacts";

  Future<List<dynamic>> fetchContact() async {
    try {
      final response =
          await get(Uri.parse(baseUrl + "/GetContactList"), headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      var data = (jsonDecode(response.body) as Map<String, dynamic>)["data"];
      print(data);
      return data as List;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
