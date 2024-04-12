

/*1*/

create function fn_conta_livros(@cnpj nvarchar(14))
returns int
as
begin
  declare @total_livros int;
  select @total_livros = COUNT(*) from LIVRO_BIBLIOTECA 
  where cnpj = @cnpj;
  return @total_livros
end;

select dbo.fn_conta_livros ('12345678000123') as total_livros

/*2*/

create function fn_contar_funcionarios()
returns int
as
begin
declare @total_funcionarios int;
select @total_funcionarios = count(FUNCIONARIO.matricula) from FUNCIONARIO
return @total_funcionarios
end;

select dbo. fn_contar_funcionarios() as total_funcionarios

/*3*/

create function fn_contar_palestra(@tipo nvarchar (30))
returns int
as
begin
  declare @total_eventos int
  select @total_eventos = count(*) from EVENTO
  where tipo = 'palestra';
  return @total_eventos
  end;

  select dbo. fn_contar_palestra('palestra') as total_evento_palestra