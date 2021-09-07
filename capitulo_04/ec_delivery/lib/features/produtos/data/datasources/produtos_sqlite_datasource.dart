import 'package:ec_delivery/features/produtos/data/models/produto_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'constants.dart';

class ProdutosSQLiteDatasource {
  Future<Database> _getDatabase() async {
    await deleteDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
    );
    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onOpen: (db) async {
        print('Openning');
      },
      onCreate: (db, version) async {
        print('Creating');
        await db.execute(CREATE_PRODUTOS_TABLE_SCRIPT);
        await db.rawInsert('''insert into $PRODUTOS_TABLE_NAME(
                $PRODUTOS_COLUMN_NOME, $PRODUTOS_COLUMN_DESCRICAO,
                $PRODUTOS_COLUMN_VALOR) 
              VALUES(
                'Suco de Laranja', '300 ml - Natural', 5
              )
          ''');
      },
      onUpgrade: (db, oldVersion, newVersion) {
        print('$oldVersion/$newVersion');
      },
      version: databaseVersion,
    );
  }

  Future create(ProdutoModel produto) async {
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

  Future<List<ProdutoModel>> getAll() async {
    try {
      final Database db = await _getDatabase();

      final List<Map<String, dynamic>> produtosMap =
          await db.query(PRODUTOS_TABLE_NAME);

      return List.generate(
        produtosMap.length,
        (index) {
          return ProdutoModel.fromMap(
            produtosMap[index],
          );
        },
      );
    } catch (ex) {
      print(ex);
      return List.empty();
    }
  }
}
