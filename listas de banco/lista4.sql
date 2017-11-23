create database if not exists lista4;
use lista4;

create table dados_multimidia (
código integer primary key,
nome varchar(30),
tipo varchar (20),
dados longblob
);

show variables like 'secure_file_priv';

INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('1', 'nwagrupo','jpg', 'load_file("C:\wamp64\tmp\imagi1.jpg)');

INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('2', 'nwawanted','jpg', 'load_file("C:\wamp64\tmp\imagi2.jpg)');
INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('3', 'nwamusic','jpg', 'load_file("C:\wamp64\tmp\imagi3.jpg)');	
INSERT INTO dados_multimidia (código, nome,tipo,dados) values ('4', 'nwaquattro','jpg', 'load_file("C:\wamp64\tmp\imagi4.jpg)');

select dados INTO dumpfile 'C:\\wamp64\\tmp\\imagi669.jpg' FROM dados_multimidia WHERE código = 1;