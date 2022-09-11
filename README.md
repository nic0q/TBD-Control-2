# Control N°2 - Laboratorio de Taller de Base de Datos
Este repositorio contiene todos los archivos relacionados con el Control N°2 del
laboratorio de Taller de Base de Datos (Base de Datos Avanzadas 13317) desarrollado
por el equipo 5. 

* **IMPORTANTE: Para poder conectarse correctamente a la Base de Datos, se debe utilizar el usuario "postgres" y la contraseña "password"**
## Integrantes del equipo 5
* [Vanina Correa](https://github.com/Vanina11)
* [Nícolas Farfán](https://github.com/nic0q)
* [Vicente Muñoz](https://github.com/LeVixo)
* [Xavier Muñoz](https://github.com/iChavy)
* [John Serrano](https://github.com/PodssilDev)
* [Nicolas Venegas](https://github.com/nicovenegas2)

## Descripción
El control consiste en desarrollar vistas utilizando VUE + Nuxt.JS para poder realizar el CRUD de una Tabla del Laboratorio N°1 del curso. Para ello,
se decidio utilizar la tabla de "Voluntary" <br>

El repositorio incluye tres carpetas principales:  <br>
* [Carpeta Backend](https://github.com/nic0q/BDDA-Control-2/tree/master/Backend): Contiene todos los archivos del Backend del proyecto y las clases de la entidad Voluntary. 
Se distribuyen las clases en los paquetes Services, Repositories y Models
* [Carpeta Database](https://github.com/nic0q/BDDA-Control-2/tree/master/Database): Contiene los archivos dbCreate.sql, el cual contiene los scripts necesarios para crear
la Base de Datos y la tabla Voluntary y el archivo loadData.sql, la cual contiene datos dummy para poblar la tabla Voluntary.
* [Carpeta Frontend](https://github.com/nic0q/BDDA-Control-2/tree/master/Frontend): Contiene todos los archivos del Frontend y las vistas realizas utilizando Vue + Nuxt.JS. 
Principalmente, esta la vista de ShowVoluntary, la cual contiene el READ, UPDATE Y DELETE de Voluntary y la vista de CreateVoluntary, la cual contiene el CREATE de Voluntary.

## Requisitos y herramientas de desarrollo
Para ejecutar correctamente todo el proyecto, además de los archivos del repositorio se requieren las siguientes tecnologías:

* [Postgres SQL](https://www.enterprisedb.com/downloads/postgres-postgresql-downloads) versión 12 o superior. 
* [PgAdmin](https://www.pgadmin.org) versión 4.
* [IntelliJ IDEA Ultimate](https://www.jetbrains.com/es-es/idea/download/#section=windows) versión 2022.2.1, aunque deberia funcionar con cualquier versión.
* [Nuxt + VUE](https://nuxtjs.org) versión 3.

También, para el desarrollo del proyecto se utilizó:
* [Visual Studio Code](https://code.visualstudio.com) versión 1.71
* [GitKraken](https://www.gitkraken.com) versión 8.9.0

## Como ejecutar
* 1). En PgAdmin, seleccionar la opción "Query tool" y copiar la primera parte del script dbCreate.sql para solo crear la Base de Datos. 
* 2). Abrir la opción Query tool nuevamente, pero dentro de VoluntariadoDB (La Base de Datos que se crea en el paso 1) y copiar el resto de dbCreate
* 3). Copiar todo el contenido de loadData.sql y ejecutarlo dentro de Query tool
* 4). Utilizando IntelliJ IDEA Ultimate, asegurarse de que se detecte correctamente Spring Boot y Gradle. Luego, ir al archivo "application.properties" y asegurarse que  el username y password sean los correctos de acuerdo a su configuración de PostGresSQL
* 5). Ejecutar la aplicación haciendo click en la opción "Run" dentro de IntelliJ IDEA
* 6). Dentro de la carpeta Frontend, abrir una terminal (CMD). Ejecutar "npm install"
* 7). Una vez el proceso anterior acabe, ejecutar "npm run dev"
* 8). Ir a http://localhost:3000/showVoluntary para ver la vista principal y poder realizar el CRUD de la tabla Voluntary.
