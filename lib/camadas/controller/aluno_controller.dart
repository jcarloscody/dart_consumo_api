import '../repository/alunos_repository.dart';

class AlunoController {
  var alunoRepository = AlunosRepository();

  Future<void> findAll() async {
    final alunos = await alunoRepository.findAll();
    alunos.forEach((element) {
      print(element);
    });
  }
}
