import 'package:finalprojeto/Socio.dart';

class PessoaFisica extends Socio {
  String _doc;

  get doc => _doc;

  set setCpf(String cpf) => _doc = cpf;
  PessoaFisica(this._doc, super.nome, super.endereco);

  @override
  String toString() {
    return "Sócio: \n CPF: $doc \n Nome Completo: ${super.endereco} \n Endereço: ${super.endereco.logradouro}, ${super.endereco.numero}, ${super.endereco.bairro}, ${super.endereco.cidade}/${super.endereco.estado}, ${super.endereco.cep}";
  }
}
