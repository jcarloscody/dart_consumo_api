// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'endereco.dart';
import 'telefone.dart';

class Aluno {
  String id;
  String nome;
  int idade;
  List<String> linguagensUsadas;
  List<Endereco> endereco;
  Telefone telefone;

  Aluno({
    required this.id,
    required this.nome,
    required this.endereco,
    required this.idade,
    required this.linguagensUsadas,
    required this.telefone,
  });

  factory Aluno.fromMap(Map<String, dynamic> map) => Aluno(
        id: map['id'] ?? '',
        nome: map['nome'] ?? '',
        endereco: map['address']
            .map<Endereco>((mapa) => Endereco.fromMap(mapa))
            .toList(),
        idade: map['idade'] ?? '',
        linguagensUsadas: map['linguagensUsadas']
            .cast<String>(), //List<String>.from(map['linguagensUsadas'])
        telefone: Telefone.fromMap(map['telefone'] ?? ''),
      );

  factory Aluno.fromJson(String jsonn) => Aluno.fromMap(json.decode(jsonn));

  Map<String, dynamic> toMap() => {
        "id": id,
        "nome": nome,
        "endereco": endereco.map((endereco) => endereco.toMap()).toList(),
        "idade": idade,
        "linguagensUsadas": linguagensUsadas,
        "telefone": telefone.toMap(),
      };

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome, idade: $idade, linguagensUsadas: $linguagensUsadas, endereco: $endereco, telefone: $telefone)';
  }
}
