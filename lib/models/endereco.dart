// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Endereco {
  String cidade;
  String estado;

  Endereco({required this.cidade, required this.estado});

  factory Endereco.fromJson(String jsonn) {
    return Endereco.fromMap(json.decode(jsonn));
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      cidade: map['cidade'] ?? "",
      estado: map['cidade'] ?? "",
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "cidade": cidade,
      "estado": estado,
    };
  }

  String toJson() {
    return json.encode(toMap());
  }

  @override
  String toString() => 'Endereco(cidade: $cidade, estado: $estado)';
}
