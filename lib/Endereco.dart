// ignore_for_file: file_names

class Endereco {
  String _logradouro;
  String _numero;
  String _bairro;
  String _cidade;
  String _estado;
  String? _complemento;
  String _cep;

  get logradouro => _logradouro;
  get numero => _numero;
  get bairro => _bairro;
  get cidade => _cidade;
  get estado => _estado;
  get cep => _cep;
  get complemento => _complemento;

  set setLogradouro(String logradouro) => _logradouro = logradouro;
  set setNumero(String numero) => _numero = numero;
  set setBairro(String bairro) => _bairro = bairro;
  set setCidade(String cidade) => _cidade = cidade;
  set setEstado(String estado) => _estado = estado;
  set setcep(String cep) => _cep = cep;
  set setComplemento(String complemento) => _complemento = complemento;

  Endereco(this._logradouro, this._numero, this._bairro, this._cidade,
      this._estado, this._cep,
      [this._complemento]);

  @override
  String toString() {
    return "Endereço: $logradouro, $numero, $bairro, $cidade/$estado, $cep";
  }
}
