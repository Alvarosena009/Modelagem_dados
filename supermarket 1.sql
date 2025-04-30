CREATE DATABASE db_supermercado;

USE db_supermercado;

show databases;

Create Table tbl_produto (
     ID INT NOT NULL PRIMARY KEY auto_increment,
     nome VARCHAR(45) NOT NULL,
     descricao text, 
     valor_compra FLOAT NOT NULL,
     valor_venda FLOAT,
     qtde INT NOT NULL,
     
     unique index (id)
     );
     
Create table tbl_cor (
        ID int not null primary key auto_increment,
		nome_cor varchar(45) not null,
        unique index (id)
);

Create Table tbl_produto_cor (
		ID int not null primary key auto_increment,
        Id_produto int not null,
        id_cor int not null,
        
        constraint FK_PRODUTO_PRODUTO_COR
        foreign key (id_produto)
        references tbl_produto (id),
        
        constraint FK_Cor_Produto_Cor
        foreign key (id_cor)
        references tbl_cor (id),
        
        unique index (id)
);        
    
    