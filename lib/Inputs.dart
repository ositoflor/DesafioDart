import 'dart:convert';
import 'dart:io';

import 'package:finalprojeto/Conta.dart';
import 'package:finalprojeto/Endereco.dart';
import 'package:finalprojeto/PessoaFisica.dart';
import 'package:finalprojeto/PessoaJurica.dart';
import 'package:finalprojeto/Socio.dart';
import 'package:finalprojeto/Validar.dart';

class Inputs {
  static String inputNames(String text) {
    stdout.write(text);
    String content = stdin.readLineSync(encoding: utf8)!;
    if (content.length >= 2) {
      return content;
    } else {
      print(
          "É preciso ter no mínimo 3 caracteres! Pressione ENTER para tentar novamente! ");
      stdin.readLineSync();
      inputNames(text);
    }
    return content;
  }

  static String getNumero(String text) {
    stdout.write(text);
    String numero = stdin.readLineSync()!;
    return numero;
  }

  static retornaSocio() {
    print("===== Cadastrar Sócio =====");
    print("Digite 1 para sócio Pessoa fisica");
    print("Digite 2 para sócio Pessoa Juridica");
    stdout.write("Escolha uma opção: ");
    String option = stdin.readLineSync()!;
    if (option == "1") {
      return PessoaFisica(
        Validar.validarCpf("Informe o CPF: "),
        inputNames("Informe o nome do sócio: "),
        Endereco(
          inputNames("Informe o logradouro: "),
          getNumero("Informe o número do endereço: "),
          inputNames("Informe o bairro: "),
          inputNames("Informe a cidade: "),
          inputNames("Informe o estado: "),
          Validar.validarCep("Informe o CEP: "),
        ),
      );
    } else if (option == "2") {
      return PessoaJuridica(
        Validar.validarCnpj("Informe o CNPJ: "),
        inputNames("Informe a razão social: "),
        inputNames("Informe o nome fantasia: "),
        Endereco(
          inputNames("Informe o logradouro: "),
          getNumero("Informe o número do endereço: "),
          inputNames("Informe o bairro: "),
          inputNames("Informe a cidade: "),
          inputNames("Informe o estado: "),
          Validar.validarCep("Informe o CEP: "),
        ),
      );
    } else {
      print("Opção invalida!! Tente novamente");
      retornaSocio();
    }
  }

  static void clear() {
    if (Platform.isWindows) {
      print(Process.runSync("cls", [], runInShell: true).stdout);
    } else {
      print(Process.runSync("clear", [], runInShell: true).stdout);
    }
  }
}
