import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  // Atributos
  // Constante de Instância
  final String url;

  // Construtor
  NetworkHelper(this.url);

  // Métodos
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}