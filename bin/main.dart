import 'dart:convert';

import 'package:consumo/camadas/controller/aluno_controller.dart';

void main() {
  AlunoController().findAll();
}

void main2() {
  String enderecoJson = '''
{
  "cidade": "Timbaúba",
  "estado": "PE"
}
''';

  final cidadeMap = json.decode(enderecoJson) as Map<String,
      dynamic>; //retorna um dynamic pq nãosabe o que vem por aí, por isso o casting

  print(cidadeMap);

  final cidadeJson = json.encode(cidadeMap);
  print(cidadeJson);
}
