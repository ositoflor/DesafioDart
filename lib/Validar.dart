import 'dart:io';

class Validar {
  static String validarCpf(String text) {
    RegExp validaCpf = RegExp("[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}");
    stdout.write(text);
    String cpf = stdin.readLineSync()!;
    if (validaCpf.hasMatch(cpf)) {
      return cpf;
    } else if (validaCpf.hasMatch(formatCpf(cpf))) {
      formatCpf(cpf);
    } else {
      stdout.write("CPF Invalido!! Precione enter para tentar novamente!");
      stdin.readLineSync();
      validarCpf(text);
    }
    return formatCpf(cpf);
  }

  static String formatCpf(String cpf) {
    if (cpf.length != 11) {
      return "";
    } else {
      String cnpjFormat =
          "${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(6, 9)}-${cpf.substring(9)}";
      return cnpjFormat;
    }
  }

  static String validarCnpj(String text) {
    RegExp validaCnpj = RegExp("[0-9]{2}.[0-9]{3}.[0-9]{3}/[0-9]{4}-[0-9]{2}");
    stdout.write(text);
    String cnpj = stdin.readLineSync()!;
    if (validaCnpj.hasMatch(cnpj)) {
      return cnpj;
    } else if (validaCnpj.hasMatch(formatCnpj(cnpj))) {
      formatCnpj(cnpj);
    } else {
      stdout.write("CNPJ Invalido!! Precione enter para tentar novamente!");
      stdin.readLineSync();
      validarCnpj(text);
    }
    return formatCnpj(cnpj);
  }

  static String formatCnpj(String cnpj) {
    if (cnpj.length != 14) {
      return "";
    } else {
      String cnpjFormat =
          "${cnpj.substring(0, 2)}.${cnpj.substring(2, 5)}.${cnpj.substring(5, 8)}/${cnpj.substring(8, 12)}-${cnpj.substring(12)}";
      return cnpjFormat;
    }
  }

  static String validarContato(String text) {
    stdout.write(text);
    String numero = stdin.readLineSync()!;

    if (numero.length == 11) {
      return "(${numero.substring(0, 2)}) ${numero.substring(2, 3)} ${numero.substring(3, 7)}-${numero.substring(7)}";
    } else if (numero.length == 10) {
      return "(${numero.substring(0, 2)}) ${numero.substring(2, 6)}-${numero.substring(6)}";
    } else {
      print("Contato invalido!! Pressione ENTER para tentar novamente!");
      stdin.readLineSync();
      validarContato(text);
    }
    return numero;
  }

  static String validarCep(String text) {
    stdout.write(text);
    String cep = stdin.readLineSync()!;

    if (cep.length == 8) {
      return "${cep.substring(0, 2)}.${cep.substring(2, 5)}-${cep.substring(5)}";
    } else {
      print("CEP invalido!! Pressione ENTER para tentar novamente!");
      stdin.readLineSync();
      validarCep(text);
    }
    return cep;
  }
}
