# TRABAJO PRÁCTICO N°1
## Asignatura: Proyecto Informático

### Ejercicio 1
#### Creación de tabla Notebook y Consultas SQL
Escribir las sentencias SQL necesarias para crear una tabla `Notebook` en una base de datos `Computadoras`. La tabla debe contener información de marca, modelo, precio y fecha de fabricación, además de un id autoincremental establecido como clave primaria.

Luego insertar algunos registros en la tabla (mediante SQL), e indicar las consultas correspondientes para obtener:
a. La información completa de todas las notebooks.
b. La marca y modelo de todas las notebooks.
c. La información completa de todas las notebooks cuyo precio es superior a un valor dado.
d. El precio de todas las notebooks cuya fecha de fabricación corresponde a un intervalo dado.
e. La información de una notebook a partir de su id.

### Ejercicio 2
#### Formato JSON para Notebooks y Álbumes Musicales
a. Definir un formato JSON adecuado para la información de las Notebooks modeladas en el ejercicio anterior.
b. Definir un formato JSON adecuado para modelar información de álbumes musicales. Considerar que un álbum puede tener 1 o más temas y 1 o más autores.

### Ejercicio 3
#### Implementación de Frontend para Platzi Fake Store API
Platzi Fake Store API es una API RESTful para prototipado de sitios web tipo ecommerce. Uno de los recursos disponibles para pruebas corresponde a información de usuarios ficticios. Implementar un frontend para consultar la lista de todos los clientes y visualizarlos en un formato adecuado. Incluir las funcionalidades necesarias para dar de alta a un nuevo usuario.

### Ejercicio 4
#### Inicialización de Repositorio Git y Creación de Ramas
Inicializar un repositorio git local y crear un archivo index.html con la estructura básica de un documento HTML. Agregar este archivo al Staging Environment y luego efectuar un primer commit. A continuación, generar dos ramas diferentes:
- `adding-header`: para incluir una cabecera con un logo y título.
- `adding-nav`: para incluir un menú de navegación principal con 3 opciones. Luego de completar la tarea definida en cada rama, realizar un merge en la rama principal con la versión final de ambas modificaciones.

### Ejercicio 5
#### Configuración de Entorno Virtual y Creación de API con Flask
Inicializar un entorno virtual, activarlo y realizar la instalación de flask. Luego crear un archivo app.py donde se instancie un objeto de la clase Flask y se definan las rutas necesarias para un CRUD de un recurso específico (ej, las notebooks del primer ejercicio). No implementar la conexión a la base de datos, sólo modelar las rutas, métodos, parámetros y tipos de respuestas correspondientes en cada caso.
