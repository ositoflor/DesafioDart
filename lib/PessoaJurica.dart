import 'package:finalprojeto/Socio.dart';

class PessoaJuridica extends Socio {
  String _doc;
  String _nomeFantasia;

  get doc => _doc;
  get nomeFantasia => _nomeFantasia;

  set setCnpj(String cnpj) => _doc = cnpj;
  set setNomefantasia(String nomeFantasia) => _nomeFantasia = nomeFantasia;

  PessoaJuridica(this._doc, super._nome, this._nomeFantasia, super.endereco);

  @override
  String toString() {
    return "Sócio: \n CNPJ: $doc \n Razão Social: ${super.nome} \n Nome Fantasia: $_nomeFantasia \n Endereço: ${super.endereco.logradouro}, ${super.endereco.numero}, ${super.endereco.bairro}, ${super.endereco.cidade}/${super.endereco.estado}, ${super.endereco.cep}";
  }
}
