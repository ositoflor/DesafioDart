import 'package:finalprojeto/Endereco.dart';
import 'package:finalprojeto/Socio.dart';
import 'package:uuid/uuid.dart';

class Empresa {
  final _id = Uuid().v4();
  String _cnpj;
  String razaoSocial;
  String nomeFantasia;
  String _telefone;
  final _dataCadastro = DateTime.now();
  Endereco _endereco;
  Socio _socio;

  get endereco => _endereco;
  get id => _id;
  get data => _dataCadastro;
  get cnpj => _cnpj;
  get telefone => _telefone;
  get enredeco => _endereco;
  get socio => _socio;

  set setCnpj(String cnpj) => _cnpj = cnpj;
  set setTelefone(String telefone) => _telefone = telefone;
  set setEndereco(Endereco enderco) => _endereco = enderco;
  set setSocio(Socio socio) => _socio = socio;

  Empresa(this._cnpj, this.razaoSocial, this._telefone, this.nomeFantasia,
      this._endereco, this._socio);
}
