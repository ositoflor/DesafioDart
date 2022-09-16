import 'dart:io';

import 'package:finalprojeto/Validar.dart';

class Funcoes {
  static void forEacheEmpresa(empresas) {
    empresas.forEach((empresa) {
      print("ID: ${empresa.id}");
      print("CNPJ: ${empresa.cnpj} Data Cadastro: ${empresa.data}");
      print("Razão Social: ${empresa.razaoSocial}");
      print("Nome Fantasia: ${empresa.nomeFantasia}");
      print("Telefone: ${empresa.telefone}");
      print(empresa.endereco);
      print(empresa.socio);
      print("\n");
    });
  }

  static void listarTodas(List empresas) {
    if (empresas.length >= 1) {
      print("========== Lista das Empresas ==========");
      empresas.sort(((a, b) => a.razaoSocial.compareTo(b.razaoSocial)));
      forEacheEmpresa(empresas);
      stdout.write(
          "====== Pressione ENTER para retornar ao menu principal! =====");
      stdin.readLineSync();
    } else {
      stdout.write(
          "====== Não tem empresas cadastradas no sistema! Pressione ENTER para retornar ao menu principal ======");
      stdin.readLineSync();
    }
  }

  static void listarEmpresaCnpj(List empresas) {
    print("========== Pesquisar Empresa ==========");
    String cnpj =
        Validar.validarCnpj("Informe o CNPJ da empresa que deseja pesquisar: ");
    print("\n");

    var req = empresas.where((element) => element.cnpj == cnpj);
    if (req.length >= 1) {
      print("========== Empresa Encontada ==========");
      forEacheEmpresa(req);
      print("===================================== \n");
      stdout.write("Pressione ENTER para voltar ao menu principal!!");
      stdin.readLineSync();
    } else {
      print(
          "Não foi encontrada Empresa com o CNPJ informado, pressione ENTER e tente novamente!!");
      stdin.readLineSync();
      listarEmpresaCnpj(empresas);
    }
  }

  static void excluirEmpresa(List empresas) {
    print("========== Exluir Empreas ==========");
    stdout.write("Informe o ID da empresa que deseja excluir: ");
    String id = stdin.readLineSync()!;
    var req = empresas.where((element) => element.id == id);
    if (req.length >= 1) {
      print("========== Empresa Excluida com sucesso!! ==========");
      empresas.remove(req.first);
      print("\n");
      stdout.write("Pressione ENTER para voltar ao menu principal!!");
      stdin.readLineSync();
    } else {
      print(
          "Não foi encontrada Empresa com o ID informado, pressione ENTER e tente novamente!!");
      stdin.readLineSync();
      excluirEmpresa(empresas);
    }
  }

  static void listarEmpresaSocio(List empresas) {
    print("====== Pesquisar Empresa com CNPJ/CPF do sócio ======");
    print("Digite 1 para pesquisar por CPF");
    print("Digite 2 para pesquisar por CNPJ");
    stdout.write("Escolha uma opção: ");
    String option = stdin.readLineSync()!;
    print("\n");
    if (option == "1") {
      String cpf = Validar.validarCpf("Informe o CPF do sócio: ");
      print("\n");
      print("========== Empresa Encontada ==========");
      var req = empresas.where((element) => element.socio.doc == cpf);
      forEacheEmpresa(req);
      stdout.write("Pressione ENTER para voltar ao menu principal!!");
      stdin.readLineSync();
    } else if (option == "2") {
      String cnpj = Validar.validarCnpj("Informe o CNPJ do sócio: ");
      print("\n");
      print("========== Empresa Encontada ==========");
      var req = empresas.where((element) => element.socio.doc == cnpj);
      forEacheEmpresa(req);
      stdout.write("Pressione ENTER para voltar ao menu principal!!");
      stdin.readLineSync();
    } else {
      print("Opção invalida!! Tente novamente");
      listarEmpresaSocio(empresas);
    }
  }
}
