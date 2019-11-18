import 'package:carros/pages/carro/carro.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CarrosApi {
  static Future<List<Carro>> getCarros() async {
    var url = 'https://carros-springboot.herokuapp.com/api/v1/carros';

    print("GET > $url");
    var response = await http.get(url);

    String json = response.body;
    print(json);

    List list = convert.json.decode(json);
    final carros = List<Carro>();

    for(Map map in list){
      Carro c = Carro.fromJson(map);
      carros.add(c);
    }

    return [];
  }
}
