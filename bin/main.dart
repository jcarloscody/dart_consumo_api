import 'dart:convert';

void main() {
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
