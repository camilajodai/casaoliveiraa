-- selecionar o banco de dados
use casaoliveira;

-- exibir todos os bancos de dados
show databases;

-- exibir todas as tabelas de um banco de dados
show tables;

-- exibir a estrutura de uma tabela
describe usuario;

-- vamos exibir os dados presentes na tabela usuario
-- utilzaremos o comando select
select * from usuario;

-- comando para cadastrar o primeiro usuario
insert into usuario(nomeusuario,senha,foto) values ("edilson",sha1("silva!"),"fadokaio.jpg");

-- comando para atualizar os dados da tabela usuario
-- vamos atualizar a senha para um novo valor criptografado, usando MD5 ou SHA
-- pequeno teste
select md5("abc123") from dual;

select sha1("abc123") from dual;

UPDATE usuario set senha=sha1("abc123") where idusuario=1;
-- descrever a tabela contato
describe contato;

insert into contato(telefoneresidencial,telefonecelular,email) values ("11-9988-0620","11-94378-2030","jaoandrade@local.com.br");
select * from contato;

-- cadastrar o endereco do admin
describe endereco;

insert into endereco(tipologradouro,
					logradouro,
                    numero,
                    complemento,
                    bairro,
                    cep,
                    cidade,
                    estado)
values ("Rua","Ayrton Senna","104","Casa 1","Vila Roseira 2","09824-040","São Paulo","SP");
select * from endereco;

-- cargo
describe cargo;

insert into cargo(titulocargo,salario,departamento) values ("Açougueiro",3000.0,"Açougue");
select * from cargo;

-- funcionario
describe funcionario;

insert into funcionario(nomefuncionario,cpf,idcargo,expediente,idusuario,idendereco,idcontato)
values ("João Andrade","40009047801",2,"Segunda a sexta. 9h as 17h",2,2,2);
select * from funcionario;



