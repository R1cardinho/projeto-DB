CREATE SCHEMA IF NOT EXISTS `id19106227_biblioteca_escolar` DEFAULT CHARACTER SET utf8 ;



USE `id19106227_biblioteca_escolar` ;



CREATE TABLE IF NOT EXISTS `id19106227_biblioteca_escolar`.`biblioteca` (
`id_biblioteca` INT NOT NULL,
`nome_da_biblioteca` VARCHAR(45) NOT NULL,
`telefone` VARCHAR(20) NOT NULL,
`escola_pertencente` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_biblioteca`))
ENGINE = InnoDB;



insert into biblioteca
(id_biblioteca, nome_da_biblioteca, telefone, escola_pertencente)
values
('077', 'CruzeTEC', '31441207', 'Prof. José Sant’Ana de Castro');
select * from biblioteca;




CREATE TABLE IF NOT EXISTS `id19106227_biblioteca_escolar`.`bibliotecario` (
`id_bibliotecario` INT NOT NULL auto_increment,
`nome` VARCHAR(45) NOT NULL,
`email` VARCHAR(45) NOT NULL,
`biblioteca_id_biblioteca` INT NULL,
PRIMARY KEY (`id_bibliotecario`),
CONSTRAINT `fk_bibliotecario_biblioteca1`
FOREIGN KEY (`biblioteca_id_biblioteca`)
REFERENCES `id19106227_biblioteca_escolar`.`biblioteca` (`id_biblioteca`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;



insert into bibliotecario
(nome, email, biblioteca_id_biblioteca)
values
('Jorge da Silva', 'jorgesilva@gmail.com', '077'),
('Maria Madalena', 'madaleninha53@gmail.com', '077');
select * from bibliotecario;



CREATE TABLE IF NOT EXISTS `id19106227_biblioteca_escolar`.`cadastro_us` (
`id_cadadstro` INT NOT NULL auto_increment,
`nome` VARCHAR(45) NOT NULL,
`rm` VARCHAR(5) NOT NULL,
`telefone` VARCHAR(20) NOT NULL,
`turma` VARCHAR(45) NOT NULL,
`biblioteca_id_biblioteca` INT NULL,
PRIMARY KEY (`id_cadadstro`),
CONSTRAINT `fk_cadastro_us_biblioteca1`
FOREIGN KEY (`biblioteca_id_biblioteca`)
REFERENCES `id19106227_biblioteca_escolar`.`biblioteca` (`id_biblioteca`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;



insert into cadastro_us
(nome, rm, telefone, turma, biblioteca_id_biblioteca)
values
('Juliane Bonde', '20896', '12998563321', '2 Desenvolvimento De Sistemas', '077'),
('Daniel Augusto', '20765', '12998564121', '1 Edificações', '077'),
('Breno Londres','20654', '12988265487', '3 Mecânica', '077'),
('Jussara Silva', '20548', '12997569923', '1 Desenvolvimento de Sistemas', '077'),
('Maria de Lurdes', '20237', '12998654778', '2 Logística', '077'),
('Gabriela Guedez', '20021', '12998256697', '3 Desenvolvimento De Sistemas', '077'),
('Bianca Ribeiro', '20864', '12998265541', '2 Nutrição', '077'),
('Giovana SantAnna', '20887', '12998322107', '1 Desenvolvimento De Sistemas', '077'),
('Lucas Felipe', '20899', '12998002156', '2 Mecânica', '077'),
('Maycon Douglas', '20654', '12998788521', '1 Edificações', '077'),
('Ricardo Santos', '20841', '12998568974', '2 Marketing', '077'),
('João Victor', '20899', '12998890026', '1 Desenvolvimento De Sistemas', '077'),
('Arthur Henrique', '20852', '12998778109', '2 Logística', '077'),
('Guilherme Marques', '20883', '12998552169', '3 Mecânica', '077'),
('Sofia Inácio', '20875', '12998566804', '3 Desenvolvimento De Sistemas', '077'),
('Mariana Morais', '20999', '12937278653', '1 Logística', '077'),
('Igor Gabriel', '20335', '12997401285', '3 Desenvolvimento De Sistemas', '077'),
('Felipe Vieira', '21564', '12992146058', '2 Marketing', '077'),
('Kauany Mendes', '20760', '12993703384', '1 Edificações', '077'),
('Bianca Guedes', '25632', '12997536115', '2 Desenvolvimento De Sistemas', '077'),
('Joyce rodrigues', '20681', '12994083521', '1 Nutrição', '077'),
('Henrique Videira', '20539', '129811102554', '2 Ciências Biológicas Agrárias', '077'),
('Julia Batista', '20898', '12981620104', '2 Ciências Biológicas Agrárias', '077'),
('Miguel Sollano', '20496', '12966307345', '3 Logística', '077'),
('Jeremias Correia', '20845', '12998563326', '3 Desenvolvimento De Sistemas', '077'),
('Eduardo Nogueira', '21846', '12998563923', '1 Desenvolvimento De Sistemas', '077'),
('Erick Cabral', '20456', '12995553321', '2 Mecânica', '077'),
('Kaio Vitor', '20336', '12992586541', '2 Desenvolvimento De Sistemas', '077'),
('Mário Flores', '20886', '12998569521', '1 Edificações', '077'),
('João Vitor', '20496', '12982563321', '1 Nutrição', '077');
select * from cadastro_us;




CREATE TABLE IF NOT EXISTS `id19106227_biblioteca_escolar`.`usuario` (
`id_usuario` INT NOT NULL auto_increment,
`nome` VARCHAR(45) NOT NULL,
`rm` VARCHAR(5) NOT NULL,
`cadastro_us_id_cadadstro` INT NULL,
`biblioteca_id_biblioteca` INT NULL,
PRIMARY KEY (`id_usuario`),
CONSTRAINT `fk_usuario_cadastro_us`
FOREIGN KEY (`cadastro_us_id_cadadstro`)
REFERENCES `id19106227_biblioteca_escolar`.`cadastro_us` (`id_cadadstro`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT `fk_usuario_biblioteca1`
FOREIGN KEY (`biblioteca_id_biblioteca`)
REFERENCES `id19106227_biblioteca_escolar`.`biblioteca` (`id_biblioteca`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;



insert into usuario
(nome, rm)
values
('Juliane Bonde', '20896'),
('Daniel Augusto', '20765'),
('Breno Londres','20654'),
('Jussara Silva', '20548'),
('Maria de Lurdes', '20237'),
('Gabriela Guedez', '20021'),
('Bianca Ribeiro', '20864'),
('Giovana SantAnna', '20887'),
('Lucas Felipe', '20899'),
('Maycon Douglas', '20654'),
('Ricardo Santos', '20841'),
('João Victor', '20899'),
('Arthur Henrique', '20852'),
('Guilherme Marques', '20883'),
('Sofia Inácio', '20875'),
('Mariana Morais', '20999'),
('Igor Gabriel', '20335'),
('Felipe Vieira', '21564'),
('Kauany Mendes', '20760'),
('Bianca Guedes', '25632'),
('Joyce rodrigues', '20681'),
('Henrique Videira', '20539'),
('Julia Batista', '20898'),
('Miguel Sollano', '20496'),
('Jeremias Correia', '20845'),
('Eduardo Nogueira', '21846'),
('Erick Cabral', '20456'),
('Kaio Vitor', '20336'),
('Mário Flores', '20886'),
('João Vitor', '20496');



select * from usuario;




CREATE TABLE IF NOT EXISTS `id19106227_biblioteca_escolar`.`livros` (
`id_livro` INT NOT NULL auto_increment,
`nome` VARCHAR(45) NOT NULL,
`genero` VARCHAR(175) NOT NULL,
`autor` VARCHAR(45) NOT NULL,
`data_lançamento` VARCHAR(45) NOT NULL,
`disponibilidade` VARCHAR(15) NOT NULL,
`biblioteca_id_biblioteca` INT NULL,
PRIMARY KEY (`id_livro`),
CONSTRAINT `fk_livros_biblioteca1`
FOREIGN KEY (`biblioteca_id_biblioteca`)
REFERENCES `id19106227_biblioteca_escolar`.`biblioteca` (`id_biblioteca`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;



insert into livros
(nome, genero, autor, data_lançamento, disponibilidade, biblioteca_id_biblioteca)
values
('É assim que acaba', 'Romance de amor, Ficção, Romance contemporâneo', 'Colleen Hoover', '08/02/2016', 'alugado', '077'),
('O pequeno princípe', 'Literatura infantil, Fábula, Novela, Ficção especulativa', 'Antoine de Saint-Exupéry', '04/06/1943', 'alugado', '077'),
('A seleção', ' Romance, Ficção juvenil, Literatura fantástica, Ficção distópica', 'Kiera Cass', '04/14/2012', 'alugado', '077'),
('A elite', 'Romance, Ficção juvenil, Literatura fantástica', 'Kiera Cass', '04/23/2013', 'disponível', '077'),
('A escolha', 'Ficção', 'Kiera Cass', '05/06/2014', 'alugado', '077'),
('A herdeira', 'Romance, Literatura fantástica, Ficção distópica', 'Kiera Cass', '05/05/2015', 'alugado', '077'),
('A coroa', 'Ficção', 'Kiera Cass', '04/26/2016', 'disponível', '077'),
('Como sobreviver à realeza', 'Ficção', 'Rachel Hawkins', '05/01/2018', 'disponível', '077'),
('Sua alteza real', 'Romance, Romance de amor, Ficção', 'Rachel Hawkins', '10/19/2020', 'disponível', '077'),
('Mil beijos de garoto', 'Romance de amor, Ficção', 'Tillie Colie', '03/15/2016', 'disponível', '077'),
('As mil partes de meu coração', 'Romance contemporâneo, Romance psicológico, Ficção Doméstica', 'Colleen Hoover', '10/03/2017', 'disponível', '077'),
('Os Sete Maridos de Evelyn Hugo', 'Romance, Romance de amor, Ficção histórica, Romance psicológico', 'Taylor Jenkins Reid', '06/13/2017', 'alugado', '077'),
('Todas as suas (im)perfeições', ' Romance de amor, Romance contemporâneo, Romance psicológico, Ficção Doméstica', 'Colleen Hoover', '07/17/2018', 'disponível', '077'),
('O lado feio do amor', 'Ficção, Romance de amor', 'Colleen Hoover', '08/14/2015', 'alugado', '077'),
('Em busca de Cinderela e em busca da perfeição', 'Ficção de novo adulto', 'Colleen Hoover', '04/04/2022', 'disponível', '077'),
('Suzy e as águas -vivas', 'Ficção e Romance ', 'Ali Benjamin', '09/22/2015', 'alugado', '077'),
('A princesa salva a si mesma neste livro', 'Poesia', 'Amanda Lovelace', '04/23/2016', 'disponível', '077'),
('De volta aos quinze', 'Drama adolescente', 'Bruna Vieira', '08/23/2013', 'alugado', '077'),
('A menina que colecionava borboletas', 'Crônica', 'Bruna Vieira', '01/24/2014', 'disponível', '077'),
('Garota em pedaços', 'Ficção e Romance', 'Kathleen Glasgow', '08/22/2016', 'alugado', '077'),
('Coisas que guardei pra mim', 'Poesia', 'Samara A. Buchweitz', '05/11/2021', 'disponível', '077'),
('Moletom', ' Ficção juvenilr', 'Julio Azevedo', '12/20/2017', 'alugado', '077'),
('A Rainha Vermelha', 'Romance, Ficção juvenil, Literatura fantástica, Alta fantasia', 'Victoria Aveyard', '06/9/2015', 'disponível', '077'),
('Um de Nós Mente', 'Ficção e Suspense', 'Karen M. McManus', '02/12/2018', 'alugado', '077'),
('A Menina que Roubava Livros', 'Romance, Ficção juvenil, Ficção histórica', 'Markus Zusak', '02/15/2007', 'disponível', '077'),
('Deixei meu coração em modo avião', 'Crônicas, Não-ficção, Romance', 'Fabíola Simõesr', '07/06/2020', 'alugado', '077'),
('A cinco passos de você', 'Ficção e Romance de amor', 'Mikki Daughtry e Tobias Iaconis', '11/20/2018', 'disponível', '077'),
('A vida não é uma linha reta', 'Crônicas/ Não-ficção', 'Fabi Santina', '11/30/2021', 'alugado', '077'),
('Em Algum Lugar nas Estrelas', 'Literatura infantil e Ficção de aventura', 'Clare Vanderpool', '01/08/2013', 'disponível', '077'),
('Um lugar só nosso', 'Romance para jovens e adolescentes', 'Maurene Goo', '03/03/2020', 'alugado', '077');
select * from livros;




CREATE TABLE IF NOT EXISTS `id19106227_biblioteca_escolar`.`emprestimo` (
`id_emprestimo` INT NOT NULL auto_increment,
`nome_livro` VARCHAR(45) NOT NULL,
`nome_usuário` VARCHAR(45) NOT NULL,
`data_empréstimo` VARCHAR(45) NOT NULL,
`data_devolução` VARCHAR(45) NOT NULL,
`usuario_id_usuario` INT NULL,
`livros_id_livro` INT NULL,
PRIMARY KEY (`id_emprestimo`),
CONSTRAINT `fk_emprestimo_usuario1`
FOREIGN KEY (`usuario_id_usuario`)
REFERENCES `id19106227_biblioteca_escolar`.`usuario` (`id_usuario`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT `fk_emprestimo_livros1`
FOREIGN KEY (`livros_id_livro`)
REFERENCES `id19106227_biblioteca_escolar`.`livros` (`id_livro`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;



insert into emprestimo
(nome_livro, nome_usuário, data_empréstimo, data_devolução)
values
('É assim que acaba', 'Juliana Bonde', '05/01/2022', '05/15/2022'),
('Suzy e as águas-vivas', 'Jeremias Correia', '05/01/2022', '05/15/2022'),
('O pequeno princípe', 'Maycon Douglas', '05/015/2022', '05/30/2022'),
('A seleção', 'Giovana SantAnna', '05/05/2022', '05/20/2022'),
('O pequeno princípe', 'Erick Cabral', '05/30/2022', '05/14/2022'),
('Um de nós mente', 'Mariana Morais', '05/02/2022', '05/17/2022'),
('De volta aos quinze', 'Felipe Vieira', '05/10/2022', '05/25/2022'),
('Um lugar só nosso', 'Julia Batista', '05/12/2022', '05/27/2022'),
('O lado feio do amor', 'Kaio Vitor', '05/08/2022', '05/23/2022'),
('A herdeira', 'João Victor', '06/01/2022', '06/15/2022'),
('Garota em pedaços', 'Mário Flores', '06/10/2022', '06/25/2022'),
('Os sete maridos de Evelyn Hugo', 'Kauany Mendes', '06/02/2022', '06/17/2022'),
('A escolha', 'Bianca Guedes', '06/04/2022', '06/19/2022'),
('As mil partes de meu coração', 'Eduardo Nogueira', '06/15/2022', '06/30/2022'),
('Deixei meu coração em modo avião', 'Igor Gabriel', '06/07/2022', '06/22/2022');



select * from emprestimo;




CREATE TABLE IF NOT EXISTS `id19106227_biblioteca_escolar`.`renovacao` (
`id_renovação` INT NOT NULL auto_increment,
`nome_livro` VARCHAR(45) NOT NULL,
`nome_usuário` VARCHAR(45) NOT NULL,
`data_renovação` VARCHAR(45) NOT NULL,
`emprestimo_id_emprestimo` INT NULL,
PRIMARY KEY (`id_renovação`),
CONSTRAINT `fk_renovacao_emprestimo1`
FOREIGN KEY (`emprestimo_id_emprestimo`)
REFERENCES `id19106227_biblioteca_escolar`.`emprestimo` (`id_emprestimo`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;



insert into renovacao
(nome_livro, nome_usuário, data_renovação)
values
('É assim que acaba', 'Juliana Bonde','05/30/2022'),
('Suzy e as águas-vivas', 'Jeremias Correia','05/30/2022'),
('O pequeno princípe', 'Maycon Douglas','06/14/2022'),
('A seleção', 'Giovana SantAnna','06/04/2022'),
('O pequeno princípe', 'Erick Cabral','05/29/2022'),
('Um de nós mente', 'Mariana Morais','05/31/2022'),
('De volta aos quinze', 'Felipe Vieira','06/10/2022'),
('Um lugar só nosso', 'Julia Batista', '06/11/2022'),
('O lado feio do amor', 'Kaio Vitor','06/08/2022'),
('A herdeira', 'João Victor','07/30/2022');



select * from renovacao;