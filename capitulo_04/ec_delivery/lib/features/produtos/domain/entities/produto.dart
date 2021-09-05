import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Produto extends Equatable {
  late int? produtoID;
  final String nome;
  final String descricao;
  final double valor;

  Produto({
    this.produtoID,
    required this.nome,
    required this.descricao,
    required this.valor,
  });

  @override
  List<Object> get props => [produtoID!];

  Produto.fromMap(Map<String, Object?> map) {
    return Produto(produtoID: , nome: nome, descricao: descricao, valor: valor)
    produtoID : map['produtoID'],
    nome :map['nome'],
    descricao : map['descricao'],
    valor : map[valor],
  }
}
