# Sour Kanji Backend

A primeira vez que for utilizar o container é recomendado que siga o processo de rodar a aplicação e o banco de dados juntos executando os passos para o procecedimento descrito a baixo.

É necessário criar o diretorio para o volume mapeado de backup do banco caso desejar utilizar um banco populado.

```
mkdir -p ~/database/mysql/sourkanjibackend
```

## Rodando localmente

Para execurtamos localmente a aplicação devemos alterar o arquivo

```\Sour-Kanji\sourkanjibackend\src\main\resources\application.properties```

alterando a linha para

```spring.datasource.url=jdbc:mysql://localhost:3306/db_sour?createDatabaseIfNotExist=true&serverTimezone=UTC&useSSl=false```.

## Banco de dados no container

Para utilizar apenas o banco de dados no container devemos realizar os passos anteriores no rodando localmente e executar o comando ```make start_database``` e para pararmos o banco de dados devemos utilizar ```make stop_database```

## Aplicação e banco de dados no container
Para executar a aplicação e o banco no container devemos alterar o arquivo

```\Sour-Kanji\sourkanjibackend\src\main\resources\application.properties```

alterando a linha para

```spring.datasource.url=jdbc:mysql://mysql_server:3306/db_sour?createDatabaseIfNotExist=true&serverTimezone=UTC&useSSl=false```, 

desse modo, podemos executar o comando `make start_all`.
