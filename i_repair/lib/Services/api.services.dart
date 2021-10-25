import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:i_repair/Models/Field/field.dart';
import 'package:i_repair/Models/Major/major.dart';
import 'package:i_repair/Models/Profile/userProfile.dart';
import 'package:i_repair/Models/Service/service.dart';
import 'package:i_repair/Models/User/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

final endpoint = dotenv.get('MOBILE_APP_API_URL');

class APIServices {
  static Future<CurrentUser> createUser(List<String> token) async {
    String qParam = '?token=';
    token.forEach((part) {
      qParam += part;
    });
    final response = await http.post(
      Uri.parse("$endpoint/api/v1.0/authenticate-customers$qParam"),
    );
    if (response.statusCode == 200) {
      print("API authenticate-customer success");
      return userFromJson(response.body);
    } else {
      throw Exception(
          'Failed to load user and ${response.statusCode} and ${response.reasonPhrase}');
    }
  }

  static Future<UserProfile> getUserProfile(String id) async {
    String token = await getToken();
    final response = await http
        .get(Uri.parse("$endpoint/api/v1.0/customers/${id.trim()}"), headers: {
      "Authorization": 'Bearer $token',
      "content-type": "application/json"
    });
    if (response.statusCode == 200) {
      print("API customer success");
      return userProfileFromJson(response.body);
    } else {
      throw Exception(
          'Failed to load user profile and ${response.statusCode} and ${response.reasonPhrase}');
    }
  }

  static Future<List<Major>> fetchMajors() async {
    String token = await getToken();
    final response = await http
        .get(Uri.parse("$endpoint/api/v1.0/majors?status=1"), headers: {
      "Authorization": 'Bearer $token',
      "content-type": "application/json"
    });
    if (response.statusCode == 200) {
      print("API fetchMajorsAPI() success");
      return majorFromJson(response.body);
    } else {
      throw Exception('Failed to load major');
    }
  }

  static Future<List<Field>> fetchFields() async {
    String token = await getToken();
    final response = await http
        .get(Uri.parse("$endpoint/api/v1.0/major-fields?status=1"), headers: {
      "Authorization": 'Bearer $token',
      "content-type": "application/json"
    });
    if (response.statusCode == 200) {
      await Future.delayed(Duration(seconds: 1));
      print("API fetchFieldsAPI() success");
      return fieldFromJson(response.body);
    } else {
      throw Exception('Failed to load field');
    }
  }

  static Future<List<Field>> fetchFieldsByMajors(List<Major> majors) async {
    String token = await getToken();
    String qParamString = '?';
    majors.forEach((element) => {qParamString += 'listMajorId=${element.id}&'});
    qParamString += qParamString.substring(0, qParamString.lastIndexOf('&'));
    final response = await http.get(
        Uri.parse("$endpoint/api/v1.0/major-fields$qParamString"),
        headers: {
          "Authorization": 'Bearer $token',
          "content-type": "application/json"
        });
    if (response.statusCode == 200) {
      print("API fetchFieldsByMajorsAPI() success");
      return fieldFromJson(response.body);
    } else {
      throw Exception('Failed to load field');
    }
  }

  static Future<List<Service>> fetchServicesByFieldAndLocation(
      Field field, double lat, double lng) async {
    String token = await getToken();
    String qParamString = "?FieldId=${field.id}&lat=$lat&lng=$lng";
    final response = await http.get(
      Uri.parse("$endpoint/api/v1.0/services/$qParamString"),
      headers: {
        "Authorization": 'Bearer $token',
        "content-type": "application/json"
      },
    );
    if (response.statusCode == 200) {
      print("API fetchServicesByFieldAPI() success");
      return serviceFromJson(response.body);
    } else {
      throw Exception('Failed to load service');
    }
  }

  static Future<UserProfile> updateProfileUser(UserProfile user) async {
    String token = await getToken();
    print(user.toJson());
    final body = jsonEncode({
      "id": "${user.id}",
      "avatar": "${user.avatar}",
      "phoneNumber": "${(user.phoneNumber)}",
      "email": "${user.email}",
      "username": null,
      "createDate": "2021-10-15T01:59:29.015Z",
      "fullName": "${user.fullName}",
      "uid": "${user.uid}"
    });
    final response = await http.put(
      Uri.parse("$endpoint/api/v1.0/customers"),
      headers: {
        "Authorization": 'Bearer $token',
        "content-type": "application/json"
      },
      body: body,
    );
    if (response.statusCode == 200) {
      print("API updateProfileAPI() success");
      return userProfileFromJson(response.body);
    } else {
      throw Exception(
          'Failed to put user and ${response.statusCode} and ${response.reasonPhrase}');
    }
  }

  static Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final currentUserString = prefs.getString('currentUser') ?? null;
    return userFromJson(currentUserString!).token;
  }
}
