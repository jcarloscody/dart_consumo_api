// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Telefone {
  int ddd;
  int telefone;

  Telefone({required this.ddd, required this.telefone});

  factory Telefone.fromMap(Map<String, dynamic> map) => Telefone(
        ddd: map['ddd'],
        telefone: map['telefone'],
      );

//decode - json para objeto dynamic.
  factory Telefone.fromJson(String jsonn) =>
      Telefone.fromMap(json.decode(jsonn));

  Map<String, dynamic> toMap() => {
        "ddd": ddd,
        "telefone": telefone,
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'Telefone(ddd: $ddd, telefone: $telefone)';
}
