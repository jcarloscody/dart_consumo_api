import 'package:consumo/models/endereco.dart';
import 'package:consumo/models/telefone.dart';

class Aluno {
  String id;
  String nome;
  int idade;
  List<String> nomeCursos;
  Endereco endereco;
  Telefone telefone;

  Aluno({
    required this.id,
    required this.nome,
    required this.endereco,
    required this.idade,
    required this.nomeCursos,
    required this.telefone,
  });
}
