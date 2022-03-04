import 'package:dio/dio.dart';
import 'model.dart';

class SearchCepRpository {
  Future<SearchCep> getCepData(String cep) async {
    var response = await Dio().get("https://ws.apicep.com/cep/${cep}.json");

    return SearchCep.fromJson(response.data);
  }
}
