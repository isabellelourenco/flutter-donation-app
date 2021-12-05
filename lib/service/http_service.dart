import 'dart:convert';

import 'package:flutter_donation_app/models/ong.dart';
import 'package:http/http.dart';

class HttpService {
  Future<List<Ong>> fetchOngs() async {
    print("fetching ongs . . .");
    final response =
        await get(Uri.parse("http://192.168.0.101:8080/api/ong/list"));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      print("Dados recebidos com sucesso: $body");
      List<Ong> ongs = body.map((dynamic item) => Ong.fromJson(item)).toList();
      print("Lista retornada: $ongs");
      return ongs;
    } else {
      print("Erro ao acessar a API");
      throw "Unable to retrieve ongs.";
    }
  }

  Future<Ong> saveOng(Ong ong) async {
    print("saving ongs . . .");
    print(jsonEncode(ong));
    final response = await post(
        Uri.parse("http://192.168.0.101:8080/api/ong/register"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(ong));

    if (response.statusCode == 200) {
      dynamic body = jsonDecode(response.body);
      print("Dados recebidos com sucesso: $body");
      return Ong.fromJson(body);
    } else {
      print("Erro ao acessar a API");
      throw "Unable to retrieve ongs.";
    }
  }

  Future<Ong> findOngByEmail(String email) async {
    print("fetching ong by email . . .");

    final response =
        await get(Uri.parse("http://192.168.0.101:8080/api/ong/" + email));
    print(response.body.toString());
    if (response.statusCode == 200) {
      dynamic body = jsonDecode(response.body);
      print("Dados recebidos com sucesso: $body");
      return Ong.fromJson(body);
    } else {
      print("Erro ao acessar a API");
      throw "Unable to retrieve ongs.";
    }
  }

  Future<Ong> updateOng(Ong ong, String id) async {
    print("saving ongs . . .");
    final response = await put(
        Uri.parse("http://192.168.0.101:8080/api/ong/update/" + id),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(ong));

    if (response.statusCode == 200) {
      dynamic body = jsonDecode(response.body);
      print("Dados recebidos com sucesso: $body");
      return Ong.fromJson(body);
    } else {
      print("Erro ao acessar a API");
      throw "Unable to retrieve ongs.";
    }
  }
}
