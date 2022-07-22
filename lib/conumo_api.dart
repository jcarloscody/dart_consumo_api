import 'dart:convert';

void main(List<String> args) {
  final cidadeJson = '''
{
  "id": 1,
  "nome": "Santo André"
}
''';

  final cidadeMap = json.decode(cidadeJson);
}
