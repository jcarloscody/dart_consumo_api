# Dart Consumo de API's

[hi](https://gizmodo.uol.com.br/hifen-nasa/)

### Dependências 
- [`Dartion`](https://pub.dev/packages/dartion)
  - o que é? criado pela fluterando, é um mini webserver, onde ele utilizar um restFull, baseado em json.
  - **comandos**: 
    - dart pub global activate dartion
    - dartion upgrade
    - dartion serve
      - cria um folder "backend" e roda o comando
- [`Http`](https://pub.dev/packages/http)



### JSON
- `O que é?` Javascript Object Notation. Tem esta nomenclatura porque um objeto dentro de javascript é um JSON. No início foi criado para o js, mas se propagou para outras linguagens.
- Formato de `representação de dados.`
- Mais `simples` que XML.
- Utiliza o formato de `"Chave" e Valor`. Observe que a chave deve ter aspas duplas. Não é permitido o uso de aspas simples.
- O JSON é uma `String` dentro do Dart.
- Muito utilizado par a `COMUNICAÇÃO` entre sistemas.
- Respresentado por `{}` ou `[{}].`
  - `{}` Objeto
  - `[{}]` Array de objeto
- 
- json.decode(String)
  - String.runtimeType
  - retorna um objeto dynamic
    - se {} => será Map<String, dynamic>
    - se [] => será List
- `Tipos de dados` aceitos:
  - Strings
  - Números
  - Arrays []
  - Objeto {"key":value}
  - Dados nulos null
- [`Exemplo com um objeto`](https://github.com/jcarloscody/dart_consumo_api/blob/master/lib/json/aluno.json), [`Exemplo com vários objetos`](https://github.com/jcarloscody/dart_consumo_api/blob/master/lib/json/alunos.json) 
- [`Conversão de Json`](https://github.com/jcarloscody/dart_consumo_api/blob/master/bin/main.dart) json.decode(), json.encode()
- [`Construtores e Métodos `](https://github.com/jcarloscody/dart_consumo_api/tree/master/lib/models) 
  - toMap(): método transforma objeto para Map<String, dynamic>
  - fromMap(): constructor para transformar Map->objeto
  - toJson(): método que transforma map -> String
  - fromJson(): construct que transforma String->Objeto




### Repository Pattern 
- é a ideia de quebrar o projeto em frações com a seguinte estrutura:
  - `repository`: é uma camada que fica responsável pelo acesso aos dados. A finalidade é buscar os dados e converter estes dados em modelos.
  - `service`: ou camada de use case. Ficará a regra de negócio da aplicação, ou seja, pode ser por exemplo fazer verificações antes de concluir uma transação financeira. 
  - `controller`: é uma camada para o front-end, camada de entrada.
