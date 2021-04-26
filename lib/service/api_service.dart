import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:my_app/models/login_model.dart';

class APIService {

  Future<dynamic> login(LoginRequestModel loginRequestModel) async {
    var url = Uri.parse('https://example.com/whatsit/create');

    final response = await http.post(url, body: loginRequestModel.toJson());
    if(response.statusCode == 200){
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      
    }
  }

}