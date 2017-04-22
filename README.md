# Portfolio team [BETA]

## Configuracion

Para correr el projecto sin problemas necesitaras primero que nada configurar el `.envrc` seteando las variables necesarias para el proyecto que hasta el momento son estas que mostrare en el ejemplo abajo:

```
# PG
export PGUSER=xxxxxx
export PGPASSWORD=xxxxx

# Admin user
export EMAIL=xxxxx
export PASSWORD=xxxxx
```
Luego de configurar el `.envrc` colocamos las siguientes lineas en una consola [linux]:

```bash
bundle install
rake db:create; rake db:migrate; rake db:seed
```
Una vez realizado este procedimiento con exito, podremos correr el proyecto localmente; Y para entrar con nuestra cuenta admin que seria la que colocamos en nuestro `.envrc` solo tendremos que colocar esta ruta `http://localhost:3000/users/sign_in` e igresar sus  datos.
