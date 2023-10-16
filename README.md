# Tarea-C-Validacion-Backend
 Hernández Sanchez Oscar Jose

## Pasos para Compilar

- Debemos movernos a la carpeta apache-tomcat-9.0.82 y actualizamos nuestras variables de ambiente:
    - export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64 (o depende la versión que se tenga)
    - export CATALINA_HOME=$(pwd)

- Una vez configuradas las variables de ambiente debemos movernos a /apache-tomcat-9.0.82/bin y     levantar el servidor de tomcat con el comando $./catalina.sh run

- Ya que esta levantado el servidor debemos movernos a http://localhost:8080/myApp/pagina/index.html y veremos la página principal de nuestro sitio.

- Para editar nuestro formulario podemos usar la barra nav del sitio a inventario y después a edirtar inventario o movernos a http://localhost:8080/myApp/pagina/formularios/formulario-inv.jsp

- El código fuente del servlet se encuentra en la carpeta src llamado ValidacionFormulario.java y su ValidacionFormulario.class está en WEB-INF/classes en caso de requiera recompilarse debemos situarnos en la carpeta myApp y compilamos con: javac -cp ".:servlet-api.jar" -d "WEB-INF/classes" src/ValidacionFormulario.java





