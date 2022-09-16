<h1> Desafio Dart</h1>

<p>Desafio dart para o curso da Proz</p>

<p>Foi solicitado a criação de um sistema de registros de empresas. Toda empresa nesse sistema deve ter um sócio associado a ela, que pode ser uma Pessoa Física ou uma Pessoa Jurídica.

Sobre as entidades:

Uma Empresa no sistema tem os seguintes dados: ID, Razão Social, Nome Fantasia, CNPJ, Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP), Telefone, Horário do Cadastro e Sócio.
Uma Pessoa Física tem os seguintes dados: Nome, CPF e Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP).
Uma Pessoa Jurídica tem os seguintes dados: Razão Social, Nome Fantasia, CNPJ, Endereço (Logradouro, Número, Complemento, Bairro, Estado e CEP).
O sistema ao ser executado deve oferecer as seguintes opções:</p>

<ul>
<li>Cadastrar uma nova empresa;</li>
<li>Buscar Empresa cadastrada por CNPJ;</li>
<li>Buscar Empresa por CPF/CNPJ do Sócio;</li>
<li>Listar Empresas cadastradas em ordem alfabética (baseado na Razão Social);</li>
<li>Excluir uma empresa (por ID);</li>
<li>Sair.</li>
</ul>

<h3>Requisitos:</h3>
<ul>
<li>Toda pessoa seja física ou jurídica, devem saber validar seu documento (CPF/CNPJ);</li>
<li>O programa deve ser criado considerando os recursos disponíveis da Orientação à Objetos e boas práticas;</li>
<li>O programa deve ter no mínimo uma herança;</li>
<li>CPF e CNPJ são do tipo String, mas o input do usuário será apenas números;</li>
<li>Telefone é do tipo String, mas o input do usuário será apenas números, ex.: 81987654321;</li>
<li>CEP é do tipo String, mas o input do usuário será apenas números;</li>
<li>O ID deve ser único, para cada Empresa cadastrada;</li>
<li>O horário de cadastro deve ser obtido automaticamente pelo sistema;</li>
<li>A impressão do conteúdo de uma empresa deve atender no mínimo a seguinte formatação:</li>
</ul>
