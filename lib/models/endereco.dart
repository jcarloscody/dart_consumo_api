class Endereco {
  String cidade;
  String estado;

  Endereco({required this.cidade, required this.estado});

  factory Endereco.fromJson(Map<String, dynamic> json) {
    return Endereco(
      cidade: json['cidade'],
      estado: json['estado'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "cidade": cidade,
      "estado": estado,
    };
  }
}
