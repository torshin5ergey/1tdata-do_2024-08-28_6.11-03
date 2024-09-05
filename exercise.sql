-- Создание БД test и main
CREATE DATABASE test;
CREATE DATABASE main;

-- Создание роли с правами на чтение в БД main
CREATE ROLE main_reader;
GRANT SELECT ON main TO main_reader;

-- Создание роли с правами на запись в БД main
CREATE ROLE main_writer;
GRANT INSERT ON main TO main_writer;

-- Создание пользователя test_writer с ролью main_writer
CREATE USER test_writer IDENTIFIED WITH plaintext_password BY 'password' DEFAULT ROLE main_writer;

-- Переключение на пользователя test_writer
ALTER USER test_writer;
# Создание таблицы main_table
CREATE TABLE main_table (
	  id Int32 PRIMARY KEY,
	  name String
);
-- Вставка строк в таблицу main_table
INSERT INTO main_table (id, name) VALUES (1, 'foo'), (2, 'bar');

