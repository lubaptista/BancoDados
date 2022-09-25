# Imagem oficial ubuntu nomeada de pacote
FROM ubuntu AS pacote

# Fazendo o update e a intalação do sistema git dentro da imagem que esta sendo criada (-y = yes)
RUN apt-get -y update
RUN apt-get -y install git

# Chamando o repositorio selecionado dentro do github (Ao clona o git ele ja criara uma pasta (nesse caso nomeada de 'BancoDados' por causa do nome do repositorio do github) dentro da imagem e enviara os arquivos do git para ela)
RUN git clone https://github.com/lubaptista/BancoDados.git



# Derivando da imagem oficial do MySQL
FROM mysql/mysql-server

# Nome da imagem e Versao
LABEL Name=DockerMySQL

# Senha para entrar no MySQL
ARG ROOT_PASSWORD=sql123
ENV MYSQL_ROOT_PASSWORD=${ROOT_PASSWORD}

# DataBase que sera criada junto a imagem
ARG SETUP_DATABASE=Trabalho_X
ENV MYSQL_DATABASE=${SETUP_DATABASE}

# Utilizando pacote copia-se da pasta 'BancoDados' a pasta 'db' para dentro da imagem
COPY --from=pacote BancoDados/db /docker-entrypoint-initdb.d/.

# Usuário
ARG SETUP_REMOTE_USERNAME=user
ARG SETUP_REMOVE_PASSWORD=sql123

# Comando para criar as senha imposta nas variaveis de ambiente acima
RUN echo "CREATE USER '${SETUP_REMOTE_USERNAME}'@'%' IDENTIFIED BY '${SETUP_REMOVE_PASSWORD}';GRANT ALL PRIVILEGES ON *.* TO '${SETUP_REMOTE_USERNAME}'@'%' WITH GRANT OPTION;" > /docker-entrypoint-initdb.d/_grant_remote.sql

# Expondo a porta que será utilizada pela imagem 
EXPOSE 3306

# É utilizado para executar apenas na criação do container (Inicializa-lo)
CMD ["mysqld"]