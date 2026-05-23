import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class ApiService {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<UserModel>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse('$_baseUrl/users')).timeout(
        const Duration(seconds: 10),
      );

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        
        // Convert API JSON to Dart Objects and return the list directly
        return body
            .map((dynamic item) => UserModel.fromJson(item))
            .toList();
      } else {
        throw Exception('Failed to load employees: ${response.statusCode}');
      }
    } on SocketException {
      throw Exception('No Internet connection. Please check your network.');
    } on http.ClientException {
      throw Exception('Network error occurred while fetching data.');
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
