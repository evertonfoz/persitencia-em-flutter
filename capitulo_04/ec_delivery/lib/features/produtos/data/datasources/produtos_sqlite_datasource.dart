import 'package:ec_delivery/features/produtos/domain/entities/produto.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'constants.dart';

class ProdutosSQLiteDatasource {
  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) {
        return db.execute(CREATE_PRODUTOS_TABLE_SCRIPT);
      },
      version: databaseVersion,
    );
  }

  Future create(Produto produto) async {
    try {
      final Database db = await _getDatabase();

      produto.produtoID =
          await db.rawInsert('''insert into $PRODUTOS_TABLE_NAME(
                $PRODUTOS_COLUMN_NOME, $PRODUTOS_COLUMN_DESCRICAO,
                $PRODUTOS_COLUMN_VALOR) 
              VALUES(
                '${produto.nome}', '${produto.descricao}', 
                ${produto.valor}
              )
          ''');
    } catch (ex) {
      return;
    }
  }

  Future<List<Produto>> getAll() async {
    try {
      final Database db = await _getDatabase();

      final List<Map<String, dynamic>> produtosMap =
          await db.query(PRODUTOS_TABLE_NAME);

      produto.produtoID =
          await db.rawInsert('''insert into $PRODUTOS_TABLE_NAME(
                $PRODUTOS_COLUMN_NOME, $PRODUTOS_COLUMN_DESCRICAO,
                $PRODUTOS_COLUMN_VALOR) 
              VALUES(
                '${produto.nome}', '${produto.descricao}', 
                ${produto.valor}
              )
          ''');
    } catch (ex) {
      return;
    }
  }
  // Future<List<ContactModel>> getContacts() async {
  //   try {
  //     final Database db = await _getDatabase();
  //     final List<Map<String, dynamic>> maps = await db.query(TABLE_NAME);

  //     return List.generate(
  //       maps.length,
  //       (i) {
  //         return ContactModel.fromMap(maps[i]);
  //       },
  //     );
  //   } catch (ex) {
  //     print(ex);
  //     return new List<ContactModel>();
  //   }
  // }
}
