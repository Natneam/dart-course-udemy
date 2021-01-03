import 'dart:io';

import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';

main(List<String> args) async {
  var pool = new ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '', //censored
      db: '' // censored
      );
  var connection = await MySqlConnection.connect(pool);
  var sqlQuery = connection.prepare(
      'insert into employee (id, firstName, lastName) values (?,?,?);');
  // 23, John, Hopkins
  insert(sqlQuery, 23, 'John', 'Hopkins');

  connection.close();
  exit(0);
}

void insert(query, id, firstName, lastName) async {
  var results = await query.execute([id, firstName, lastName]);
  print(results.id);
}
