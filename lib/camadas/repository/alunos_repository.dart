import 'dart:convert';

import 'package:http/http.dart';

import '../../models/aluno.dart';

class AlunosRepository {
  Future<List<Aluno>> findAll() async {
    var redult = await get(Uri.parse("http://localhost:3031/aluno"));
    var r = jsonDecode(redult.body);
    print(r);
    List<Aluno> l = r.map<Aluno>((aluno) => Aluno.fromMap(aluno)).toList();

    print(l);

    return l;
  }
}
