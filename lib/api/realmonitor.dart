import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:realmonitor_test/model/api/request.dart';
import 'package:realmonitor_test/model/api/response.dart';
import 'package:riverpod/riverpod.dart';

final apiProvider = Provider((ref) => RealmonitorApi());

class RealmonitorApi {
  Future<Response> getPoliList() async {
    final client = http.Client();
    final request = Request.fromJson(jsonDecode(_request));
    final response = await client.post(
      Uri.parse(_url),
      headers: {"Content-type": "application/json"},
      body: jsonEncode(request.toJson()),
    );
    return responseFromJson(response.body);
  }
}

const _url = //
    "https://frontend.realmonitor.hu/api/v3/poli/list/hu?token=${const String.fromEnvironment("TOKEN")}";

const _request = //
    '{ "from": 0, "size": 20, "sort": [ { "price": { "order": "asc" } } ], "exclude": [], "search": [ { "status": "FOR_SALE", "estate": [ "HOUSE" ], "places": [ { "id": "ChIJHyHKCNwKakcRICYeDCnEAAQ" }, { "id": "ChIJ74hlFG4eakcRkGIeDCnEAAQ" } ], "tags": { "include": [ "normal" ] }, "hasImages": true, "priceDrop": {}, "unitPrice": {}, "size": { "min": 70 }, "description": "-peca", "floor": {}, "room": {}, "lotSize": { "min": 600 }, "heating": { "energySource": [] }, "price": { "min": 50000000 } } ] }';
