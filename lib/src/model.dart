import 'api_cep_search_repository.dart';

class SearchCep {
  final int status;
  final bool ok;
  final String code;
  final String state;
  final String district;
  final String city;
  final String statusText;
  final String address;

  SearchCep(
      {this.status,
      this.ok,
      this.code,
      this.state,
      this.city,
      this.district,
      this.address,
      this.statusText});

  factory SearchCep.fromJson(Map<String, dynamic> json) {
    return SearchCep(
        status: json['status'],
        ok: json['ok'],
        code: json['code'],
        state: json['state'],
        city: json['city'],
        district: json['district'],
        address: json['address'],
        statusText: json['statusText']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['ok'] = this.ok;
    data['code'] = this.code;
    data['state'] = this.state;
    data['city'] = this.city;
    data['district'] = this.district;
    data['address'] = this.address;
    data['statusText'] = this.statusText;
    return data;
  }

  static Future<SearchCep> getInstance(String cep) async {
    return SearchCepRpository().getCepData(cep);
  }
}
