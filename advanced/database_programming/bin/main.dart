import 'dart:async';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils/buffer.dart';

main(List<String> args) async {
  var pool = new ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '', // censored
      db: 'reworkHr');
  var connection = await MySqlConnection.connect(pool);
  print('Connected!!');
  var query = await connection
      .prepare('Insert into employee(id, firstName, lastName) values (?,?,?)');
  await insert(query, 34, 'abcd', 'efg');
  await insert(query, 37, 'fhskj', 'jfjsk');
  await insert(query, 38, 'hfsjk', 'hdsh');
}

void insert(var query, int id, String firstName, String lastName) async {
  var result = await query.execute([id, firstName, lastName]);
  print(result.id);
}
