import 'package:ec_delivery/features/produtos/data/models/produto_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'produto_store.g.dart';

/// flutter packages pub run build_runner build
/// flutter packages pub run build_runner build --delete-conflicting-outputs
/// flutter packages pub run build_runner watch --delete-conflicting-outputs

class ProdutoStore = _ProdutoStore with _$ProdutoStore;

abstract class _ProdutoStore with Store {
  @observable
  int? _produtoID;

  @observable
  String? _nome;

  @observable
  String? _descricao;

  @observable
  double? _valor;

  @computed
  int? get produtoID => _produtoID;

  @computed
  String get nome => _nome ?? '';

  @computed
  String get descricao => _descricao ?? '';

  @computed
  double get valor => _valor ?? 0;

  @computed
  bool get formOK => (nome.isNotEmpty && descricao.isNotEmpty && valor > 0);

  @action
  atualizarProdutoID(int? produtoID) {
    _produtoID = produtoID;
  }

  @action
  atualizarNome(String nome) {
    _nome = nome;
  }

  @action
  atualizarDescricao(String descricao) {
    _descricao = descricao;
  }

  @action
  atualizarValor(String valor) {
    _valor = double.tryParse(valor);
  }

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController valorController = TextEditingController();

  resetForm() {
    nomeController.text = '';
    descricaoController.text = '';
    valorController.text = '';

    atualizarProdutoID(null);
    atualizarNome('');
    atualizarDescricao('');
    atualizarValor('');
  }

  inicializarForm(ProdutoModel produto) {
    nomeController.text = produto.nome;
    descricaoController.text = produto.descricao;
    valorController.text = produto.valor.toString();

    atualizarProdutoID(produto.produtoID);
    atualizarNome(produto.nome);
    atualizarDescricao(produto.descricao);
    atualizarValor(produto.valor.toString());
  }
}
