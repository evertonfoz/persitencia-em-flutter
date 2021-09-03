import 'package:mobx/mobx.dart';

part 'produto_store.g.dart';

/// flutter packages pub run build_runner build
/// flutter packages pub run build_runner build --delete-conflicting-outputs
/// flutter packages pub run build_runner watch --delete-conflicting-outputs

class ProdutoStore = _ProdutoStore with _$ProdutoStore;

abstract class _ProdutoStore with Store {
  @observable
  String? _nome;

  @observable
  String? _descricao;

  @observable
  double? _valor;

  @computed
  String get nome => _nome ?? '';

  @computed
  String get descricao => _descricao ?? '';

  @computed
  double get valor => _valor ?? 0;

  @action
  atualizarNome(String nome) {
    _nome = nome;
  }

  @action
  atualizarDescricao(String descricao) {
    _descricao = descricao;
  }

  @action
  atualizarValor(double valor) {
    _valor = valor;
  }
}
