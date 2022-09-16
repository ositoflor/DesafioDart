// ignore_for_file: file_names

import 'package:finalprojeto/Endereco.dart';

abstract class Socio {
  String _nome;
  Endereco _endereco;

  get endereco => _endereco;
  get nome => _nome;

  set setNome(String nome) => _nome = nome;
  set setEnreceo(String enreco) => _endereco = endereco;

  Socio(this._nome, this._endereco);
}
