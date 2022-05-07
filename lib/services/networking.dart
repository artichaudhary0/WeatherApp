import 'dart:convert';
import 'package:http/http.dart';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  Future getData() async {
    Response response = await get(Uri.parse(url));

    String data = response.body;
    return jsonDecode(data);
  }
}
