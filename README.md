# login

Proyecto de pruebea para el login usando patrón bloc

## Getting Started

Este proyecto simula un inicio de sesión conteniendo 2 pantallas, el login y la bienvenida.

Valida que los campos de inicio de sesión no esten vación, que la contraseña se oculte y se muestre, y que el campo de usuario sea un correo electronico

los datos de inicio de sesión para esta prueba son: 
-Usuario:prueba@example.com
-Password: test1234

ubicados en la carpeta data en datos_usuario.dart

# Logica de negocio:
El sistema valida que no exista ningun token y muestra la pantalal de inicio de sesión, si el toeken existe redirecciona a la pantalla de bienvenida y si nó a la de }
inicio de sesió.

El sistema valida que usuario y contraseña sean correctos y redirecciona a la pantalla de bienvenida.

En la pantalla de bienvenida existe un botón de cerrar sesión que nulifica el token y redirecciona al login 
