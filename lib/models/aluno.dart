import 'dart:convert';

import 'package:consumo/models/endereco.dart';
import 'package:consumo/models/telefone.dart';

class Aluno {
  String id;
  String nome;
  int idade;
  List<String> nomeCursos;
  List<Endereco> endereco;
  Telefone telefone;

  Aluno({
    required this.id,
    required this.nome,
    required this.endereco,
    required this.idade,
    required this.nomeCursos,
    required this.telefone,
  });

  factory Aluno.fromMap(Map<String, dynamic> map) => Aluno(
        id: map['id'] ?? '',
        nome: map['nome'] ?? '',
        endereco: map['address']
            .map<Endereco>((mapa) => Endereco.fromMap(mapa))
            .toList(),
        idade: map['idade'] ?? '',
        nomeCursos: map['nomeCursos'] ?? '',
        telefone: Telefone.fromMap(map['telefone'] ?? ''),
      );

  factory Aluno.fromJson(String jsonn) => Aluno.fromMap(json.decode(jsonn));

  Map<String, dynamic> toMap() => {
        "id": id,
        "nome": nome,
        "endereco": endereco.map((endereco) => endereco.toMap()).toList(),
        "idade": idade,
        "nomeCursos": nomeCursos,
        "telefone": telefone.toMap(),
      };

  String toJson() => json.encode(toMap());
}
