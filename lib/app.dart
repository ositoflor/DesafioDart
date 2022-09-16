import 'dart:io';

import 'package:finalprojeto/Conta.dart';
import 'package:finalprojeto/Endereco.dart';
import 'package:finalprojeto/Inputs.dart';
import 'package:finalprojeto/Validar.dart';
import 'package:finalprojeto/funcoes.dart';

void app() {
  bool condicao = true;
  List<Empresa> empresas = [];

  while (condicao) {
    print("==========Cadastro de Empresa=========");
    print("1 - Cadastrar uma nova empresa");
    print("2 - Buscar Empresa cadastrada por CNPJ");
    print("3 - Buscar Empresa por CPF/CNPJ do Sócio");
    print("4 - Listar Empresas cadastradas");
    print("5 - Excluir uma empresa (por ID)");
    print("6 - Sair");
    print("======================================");
    stdout.write("Digite uma opção: ");
    String option = stdin.readLineSync()!;
    print("\n");

    switch (option) {
      case "1":
        print("==========Cadastro==========");
        empresas.add(Empresa(
            Validar.validarCnpj("Digite o CNPJ da empresa: "),
            Inputs.inputNames("Informe a razão social: "),
            Validar.validarContato("Digite o telefone da empresa: "),
            Inputs.inputNames("Informe o Nome fantasia: "),
            Endereco(
              Inputs.inputNames("Informe o logradouro: "),
              Inputs.getNumero("Informe o número do endereço: "),
              Inputs.inputNames("Informe o bairro: "),
              Inputs.inputNames("Informe a cidade: "),
              Inputs.inputNames("Informe o estado: "),
              Validar.validarCep("Informe o CEP: "),
            ),
            Inputs.retornaSocio()));
        stdout.write(
            "===== Cadastro realizado com sucesso para retornar o menu precione Enter! ===== \n");
        stdin.readLineSync();
        Inputs.clear();
        break;
      case "2":
        Funcoes.listarEmpresaCnpj(empresas);
        Inputs.clear();
        break;
      case "3":
        Funcoes.listarEmpresaSocio(empresas);
        Inputs.clear();
        break;
      case "4":
        Funcoes.listarTodas(empresas);
        Inputs.clear();
        break;
      case "5":
        Funcoes.excluirEmpresa(empresas);
        Inputs.clear();
        break;
      case "6":
        stdout.write("Encerrando programa!");
        condicao = false;
        Inputs.clear();
        break;
      default:
        print("Opção inválida");
        stdout.write("Precione enter para continuar...");
        stdin.readLineSync();
        print("\n");
        Inputs.clear();
        break;
    }
  }
}
