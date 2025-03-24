//Atividade01 para entrega - Aluna Beatriz Querubim Batista - Prontuario: BP3016374

/*1. Escreva um programa em Dart para criar uma classe Laptop com as 
propriedades [id, nome, ram] e crie 3 objetos dela, imprimindo todos os 
detalhes.*/
class Laptop {
  static int _contador = 0;
  int _Id;
  String _Nome;
  String _Ram;

  Laptop(this.id, this.nome, this.ram);

  Laptop(this.Nome, this.Ram) : id = ++_contador;

  void mostrarDetalhes() {
    print("ID: ${this.Id}, Nome: ${this.Nome}, RAM: ${this.Ram}");
  }
}

void main() {
  Laptop lt_1 = Laptop("Dell XPS", "16GB");
  Laptop lt_2 = Laptop("MacBook Pro", "32GB");
  Laptop lt_3 = Laptop("Lenovo ThinkPad", "8GB");

  lt_1.mostrarDetalhes();
  lt_2.mostrarDetalhes();
  lt_3.mostrarDetalhes();
}


/*
 2. Escreva um programa em Dart para criar uma classe House com as 
propriedades [id, nome, preço]. Crie um construtor para ela e crie 3 
objetos. Adicione-os a uma lista e imprima todos os detalhes.
*/
class House {
  static int _contador = 0;
  int id;
  String nome;
  double preco;

    House(this.nome, this.preco) : id = ++_contador;


  void mostrarDetalhes() {
    print("ID: ${id}, Nome: ${nome}, Preço: R\$: ${preco}");
  }
}

void main() {
  List<House> casas = [
    House(1, "Casa Simples - 3 comodos", 250000.00),
    House(2, "Casa Térrea - 5 comodos", 300000.00),
    House(3, "Chácara no Interior", 550000.00),
  ];

  for (var casa in casas) {
    casa.mostrarDetalhes();
  }
}

/*
 4. Escreva um programa em Dart para criar uma classe Animal com as 
propriedades [id, nome, cor]. Crie outra classe chamada Cat e a estenda de 
Animal. Adicione uma nova propriedade chamada som (do tipo String). Crie 
um objeto de Cat e imprima todos os detalhes.
*/
class Animal {
  int id;
  String nome;
  String cor;

  Animal(this.id, this.nome, this.cor);
}

class Cat extends Animal {
  String som;

  Cat(int id, String nome, String cor, this.som) : super(id, nome, cor);

  void mostrarDetalhes() {
    print("ID: ${id}, Nome: ${nome}, Cor: ${cor}, Som: ${som}");
  }
}

void main() {
  Cat gato = Cat(1, "Sininho", "Parda", "Miauu");

  gato.mostrarDetalhes();
}

/*
 5. Escreva um programa em Dart para criar uma classe Camera com 
propriedades privadas [id, marca, cor, preço]. Crie métodos getter e setter
 para acessar e modificar os valores. Além disso, crie 3 objetos dela e 
imprima todos os detalhes.
*/

class Camera {
  int _id;
  String _marca;
  String _cor;
  double _preco;

  Camera(this._id, this._marca, this._cor, this._preco);

  // Getters
  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;

  // Setters
  set id(int novoId) => _id = novoId;
  set marca(String novaMarca) => _marca = novaMarca;
  set cor(String novaCor) => _cor = novaCor;
  set preco(double novoPreco) => _preco = novoPreco;

  void mostrarDetalhes() {
    print("ID: ${_id}, Marca: ${_marca}, Cor: ${_cor}, Preço: R\$ ${_preco}");
  }
}

void main() {
  Camera cm1 = Camera(1, "Canon", "Preta", 3500.00);
  Camera cm2 = Camera(2, "Nikon", "Prata", 5000.00);
  Camera cm3 = Camera(3, "Sony", "Branca", 7500.00);

  cm1.mostrarDetalhes();
  cm2.mostrarDetalhes();
  cm3.mostrarDetalhes();
}
