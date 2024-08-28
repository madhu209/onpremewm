// ignore: depend_on_referenced_packages
import 'package:http/http.dart';
import 'dart:convert';

class RequestController {
  Future<dynamic> fetchResponse(
      String baseUrl,
      String endpoint,
      HTTPMethod method,
      Map<String, String>? headers,
      Object requestBody,
      Map<String, dynamic>? queryParameters,
      {bool isJsonEncode = false}) async {
    try {
      late Response response;
      var url = baseUrl + endpoint;
      print(url); // ignore: avoid_print
      print(headers); // ignore: avoid_print
      print(requestBody); // ignore: avoid_print
      print(queryParameters); // ignore: avoid_print
      if (method == HTTPMethod.get) {
        response =
            await get(Uri.parse(url).replace(queryParameters: queryParameters));
      } else if (method == HTTPMethod.post) {
        response = await post(Uri.parse(url),
            body: isJsonEncode == true ? json.encode(requestBody) : requestBody,
            headers: headers);
      }
      print("response"); // ignore: avoid_print
      print(response.body.toString()); // ignore: avoid_print
      var data = jsonDecode(response.body.toString());
      print(data); // ignore: avoid_print
      if (response.statusCode == 200) {
        return data;
      } else {
        // ignore: avoid_print
        print("try error in network controller ${data["Message"]}");
        throw Exception(data["Message"]);
      }
    } catch (e) {
      print("catch error in network controller $e"); // ignore: avoid_print
      print(e.toString()); // ignore: avoid_print
      throw Exception("Unreachable");
    }
  }
}

class NetworkController {
  late String email;
  late String password;

  // Map<String, String> get headers => {"Authorization": ""};

  Map<String, String> headers(String email, String password) {
    String credentials = "$email:$password";
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return {
      "Authorization": "Basic ${stringToBase64.encode(credentials)}",
      "Content-Type": "application/json"
    }; //stringToBase64.encode(credentials);
  }

  // Map<String, String> get headers => {
  //       "Authorization": "Basic $encodeCredentials()",
  //       "Content-Type": "application/json"
  //     };
}

enum HTTPMethod { get, post, put, delete }
