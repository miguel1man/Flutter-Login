## ¿Cómo probar la app?
- `flutter pub get` para instalar las librerías.
- `flutter run -d chrome` para iniciar ver el proyecto en el navegador.

## Inicio de sesión con Firebase
La funcionalidad más compleja es utilizar la autenticación de Google para iniciar sesión con un simple clic. Así que comencé clonando un repo que ya tenía implementada esa funcionalidad: https://github.com/RivaanRanawat/flutter-firebase-auth y luego creé un proyecto en https://console.firebase.google.com/

Reemplacé los accesos a Firebase en `lib/firebase_options.dart`

Comandos: `dart pub global activate flutterfire_cli` y `npm install -g firebase-tool`

Archivo: `firebase_options.dart`

## Pantalla de inicio
La pantalla inicial del repo original muestra varios modos de iniciar sesión. Para simplificar la experiencia del usuario, actualicé la pantalla inicial a "inicio de sesión con usuario y contraseña". 

En el archivo `lib/main.dart` actualicé la línea 73 `return const LoginScreen();` y cambié `LoginScreen` por `EmailPasswordLogin`.

Luego agregué un botón para iniciar sesión con Google:
```
CustomButton(
    onTap: () {
        context.read<FirebaseAuthMethods>().signInWithGoogle(context);
    },
    text: 'Inicio de sesión con Google',
),
```

