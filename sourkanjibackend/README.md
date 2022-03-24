# Sour Kanji Backend

Para executar a aplicação precisa apenas alterar o arquivo de application.properties de acordo com os valores comentados no arquivo.

É necessário criar o diretorio para o volume mapeado de backup do banco caso desejar utilizar um banco populado.
```
mkdir -p ~/database/mysql/sourkanjibackend
```
 
Para executar a aplicação e o banco no container execute o comando `make start_all`, se quiser apenas subir o banco de dados utilize o comando `make start_database`.
