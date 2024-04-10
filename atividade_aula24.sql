/*1: criar procedure para inserir registro de funcionario do tipo educador*/

   create procedure sp_inserir_funcionario_educador
   @matricula nvarchar(6),
   @nome nvarchar(50)
   as
   begin
   insert into FUNCIONARIO(matricula, nome)
   values(@matricula,@nome)

   insert into EDUCADOR(matricula,nome)
   values (@matricula,@nome)
   end;

exec sp_inserir_funcionario_educador @matricula = '09762' , @nome = 'NEYMAR JUNIOR'

/*2: Criar uma procedure para listar os livros de uma categoria específica, recebendo o
nome da categoria como parâmetro.*/

create procedure sp_listar_livro_especifico
   @titulo nvarchar(50)
as
begin
select * from LIVRO where titulo like @titulo
end;

exec sp_listar_livro_especifico @titulo = '%desenvolvimento%'

/*3: Criar uma procedure para obter os nomes dos funcionários de um determinado
cargo, recebendo o cargo como parâmetro.*/create procedure sp_nome_funcionario_cargo @cargo nvarchar (20)  as  begin  select * from FUNCIONARIO  join @cargo on FUNCIONARIO = @cargo  end  exec sp_nome_funcionario @cargo like = '%gerente%'/* 4: Criar uma procedure para exibir os títulos dos livros publicados antes de um ano
específico, recebendo o ano como parâmetro.*/create procedure sp_titulo_livro@ano nvarchar(30)asbeginselect titulo from LIVRO where year (ano_publicacao) < ano_publicacao;end;exec sp_titulo_livro @ano = ano_publicacao  2000/* 5:Criar uma procedure para contar o número total de livros em uma biblioteca
específica, recebendo o CNPJ da biblioteca como parâmetro.*/
 create procedure sp_contar_total_livros
    @cnpj nvarchar(14)
    as
	begin
	select * from LIVRO 
	join BIBLIOTECA on BIBLIOTECA.cnpj = @cnpj
	where cnpj = '01234567000112'
	end
	exec sp_contar_total_livros @cnpj = 'numero total de livros 5'

	
    /* 6:Criar uma procedure para listar os eventos de um tipo específico que aconteceram
após um ano determinado, recebendo o tipo de evento e o ano como parâmetros.*/

CREATE PROCEDURE sp_ListarEventosPorTipoEAno
    @tipo nvarchar(30),
    @data int
AS
BEGIN
    SELECT * FROM EVENTO
    WHERE tipo = @tipo AND YEAR(data) >= '2023/02/15' ;
END;
exec sp_ListarEventosPorTipoEAno @tipo 'palestra'



	select * from EVENTO
    
 
  