# ¿Cómo probar la app?
- `flutter pub get` para instalar las librerías.
- `flutter run -d chrome` para iniciar ver el proyecto en el navegador.

## ¿Cómo se realizó esta app?
- El inicio de sesión de Google es la funcionalidad más compleja. Así que comencé clonando un repo que ya tenía implementada esa funcionalidad: https://github.com/RivaanRanawat/flutter-firebase-auth

### Pantalla de inicio
- La pantalla inicial muestra varios modos de iniciar sesión. Para simplificar la experiencia del usuario, actualicé la pantalla inicial a un "inicio de sesión con usuario y contraseña". En el archivo `lib/main.dart` actualicé la línea 73 `return const LoginScreen();` y cambié `LoginScreen` por `EmailPasswordLogin`.
