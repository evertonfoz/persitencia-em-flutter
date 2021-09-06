import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Produto extends Equatable {
  late int? produtoID;
  late String nome;
  late String descricao;
  late double valor;

  Produto({
    this.produtoID,
    required this.nome,
    required this.descricao,
    required this.valor,
  });

  @override
  List<Object> get props => [produtoID!];
}
