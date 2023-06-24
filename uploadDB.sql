CREATE DATABASE IF NOT exists dockerDB;

use dockerDB;

CREATE TABLE IF NOT EXISTS livros (
    id VARCHAR(36) PRIMARY KEY,
    nome VARCHAR(180) NOT NULL,
    sinopse TEXT NOT NULL,
    isbn VARCHAR(13) NOT NULL UNIQUE,
    autores JSON NOT NULL,
    url_imagem TEXT
);


INSERT INTO livros (id, nome, sinopse, isbn, autores, url_imagem) VALUES
('1', 'PostgreSQL: Banco de dados para aplicações web modernas', 'Tecnologias de banco de dados dão suporte diário...', '9788555192555', '["Vinícius Carvalho"]', 'https://cdn.shopify.com/s/files/1/0155/7645/products/PostgreSQL_ebook_large.jpg?v=1631652465'),

('2', 'Data Structures and Algorithms in Java', 'Data Structures and Algorithms in Java, Second Edition...', '9780672324536', '["Robert Lafore"]', 'https://m.media-amazon.com/images/I/41W+LyRF6NL._SX378_BO1,204,203,200_.jpg'),

('3', 'Arquitetura de soluções IoT: Desenvolva com Internet das Coisas para o mundo real', 'Tudo ao nosso redor está em processo de transformação...', '9788555193217', '["Fernando Ferreira", "Renato Manzan", "Wellington Duraes"]', 'https://cdn.shopify.com/s/files/1/0155/7645/products/p_885765c2-d786-43ae-a589-b37570237537_large.jpg?v=1665717063'),

('4', 'O ladrão de raios: Capa nova: 1', 'Primeiro volume da saga Percy Jackson...', '9788580575392', '["Rick Riordan"]', 'https://m.media-amazon.com/images/I/51yvcUb5tFL._SX323_BO1,204,203,200_.jpg'),

('5', 'As crônicas de Nárnia - O leão, a feiticeira e o guarda-roupa', 'Dizem que Aslam está a caminho...', '9788578270889', '["C.S. Lewis"]', 'https://m.media-amazon.com/images/I/51RpWTEgDvL._SX322_BO1,204,203,200_.jpg'),

('6', 'The Hobbit: The Classic Bestselling Fantasy Novel', 'This definitive paperback edition features nine...', '9780261103344', '["J. R. R. Tolkien"]', 'https://m.media-amazon.com/images/I/7103GCFdGDL.jpg');

SELECT * FROM livros;
