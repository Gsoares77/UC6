use sistema_biblioteca;

/* 1: retornar todos os livros de sociologia
*/

select titulo from  livro
join SOCIOLOGIA on
SOCIOLOGIA.numero_registro = livro.numero_registro;

/* 2: listar os nomes dos funcionarios que são bibliotecarios
*/

select * from BIBLIOTECARIO
join FUNCIONARIO on
BIBLIOTECARIO.nome = bibliotecario.nome;

/* 4:  Mostrar o número total de livros em cada biblioteca. 
*/

select * from LIVRO where ano_publicacao < 2000;

/* 5: Listar os eventos do tipo 'Workshop' que ocorreram após 2020. 
*/
 



 /* 6: Exibir os nomes dos usuários que fizeram empréstimos de livros em janeiro de 2023. 
 */

 select * 