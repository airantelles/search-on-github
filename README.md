### Search on Github - Airan Loth Telles

Aplicação em Ruby on Rails para pesquisar e listar os top 5 repositórios de 5 linguagens escolhidas pelo usuário.

## Instruções para utilizar a aplicação no ambiente local

#### .env
Deve ser criado um arquivo .env seguindo o exemplo abaixo:
```
DATABASE_NAME=
DATABASE_USER=
DATABASE_PASSWORD=
DATABASE_HOST=
DATABASE_PORT=
GITHUB_PRIVATE_KEY=
```
GITHUB_PRIVATE_KEY é o token de autenticação gerado pelo github, em Settings -> Developer Settings -> Personal access tokens -> Generate new token.

#### Docker

###### Buildar o projeto
```
docker-compose build
```
##### Subir o ambiente do Docker Compose

```
docker-compose up
```

##### Configurar e rodar as migrações do banco de dados, juntamente ao seed
```
docker-compose exec app bundle exec rake db:setup db:migrate db:seed
```

##### Endereço de acesso local

http://localhost:3000/
