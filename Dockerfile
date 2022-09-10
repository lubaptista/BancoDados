# Derivando da imagem oficial do MySQL
FROM mysql/mysql-server

# Nome da imagem e Versao
LABEL Name=dockermysql Version=0.0.1


ARG ROOT_PASSWORD=sql123
ENV MYSQL_ROOT_PASSWORD=${ROOT_PASSWORD}


# DataBase que sera criada junto a imagem
ARG SETUP_DATABASE=Trabalho_X
ENV MYSQL_DATABASE=${SETUP_DATABASE}


ARG SETUP_REMOTE_USERNAME=user
ARG SETUP_REMOVE_PASSWORD=sql123


# Adicionando os scripts SQL para serem executados na criação do banco
COPY ./db/ /docker-entrypoint-initdb.d/


RUN echo "CREATE USER '${SETUP_REMOTE_USERNAME}'@'%' IDENTIFIED BY '${SETUP_REMOVE_PASSWORD}';GRANT ALL PRIVILEGES ON *.* TO '${SETUP_REMOTE_USERNAME}'@'%' WITH GRANT OPTION;" > /docker-entrypoint-initdb.d/_grant_remote.sql


# Expor a Porta 
EXPOSE 3306


# Inicializa-lo
CMD ["mysqld"]