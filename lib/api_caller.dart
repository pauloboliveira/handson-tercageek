import 'dart:convert';

import 'package:http/http.dart';

class ApiCaller {



  Future getProduto(String idSkuLojista) async {
  Uri uri = Uri.parse('$idSkuLojista');

    Response response = await get(uri);

    if(response.statusCode == 200) {
      var produtoInfo = jsonDecode(response.body);

      return produtoInfo;
    } else {
      print(response.statusCode);
    }

  }
}