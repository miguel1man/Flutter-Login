## ¿Cómo probar la app?
- `flutter pub get` para instalar las librerías.
- `flutter run -d chrome` para iniciar ver el proyecto en el navegador.

## Inicio de sesión con Firebase
La funcionalidad más compleja es utilizar la autenticación de Google para iniciar sesión con un simple clic. Así que comencé clonando un repo que ya tenía implementada esa funcionalidad: https://github.com/RivaanRanawat/flutter-firebase-auth

![s1](https://user-images.githubusercontent.com/78570710/213742156-8d730bff-e944-4fc7-ab87-921691b58840.jpg)

Creé un proyecto en https://console.firebase.google.com/ y reemplacé los accesos a Firebase en `lib/firebase_options.dart`

![image](https://user-images.githubusercontent.com/78570710/213742435-98a4c394-dac8-45d3-a9db-43886e725078.png)

![image](https://user-images.githubusercontent.com/78570710/213742623-c7c4d575-8c01-4c4e-9e9b-ce7be0b3bd64.png)

## Pantalla de inicio
La pantalla inicial del repo original muestra varios modos de iniciar sesión. Para simplificar la experiencia del usuario, actualicé la pantalla inicial a "inicio de sesión con usuario y contraseña". 

En el archivo `lib/main.dart` actualicé la línea 73 `return const LoginScreen();` y cambié `LoginScreen` por `EmailPasswordLogin`.

![s2](https://user-images.githubusercontent.com/78570710/213742669-5af69525-b64f-4419-af4d-11850cfda861.jpg)


Luego agregué un botón para iniciar sesión con Google:

```dart
CustomButton(
    onTap: () {
        context.read<FirebaseAuthMethods>().signInWithGoogle(context);
    },
    text: 'Inicio de sesión con Google',
),
```
![s4](https://user-images.githubusercontent.com/78570710/213742844-6315cde1-5a59-435d-a30d-b63a8ab58619.jpg)

## Estilo de botones
El botón `lib/widgets/custom_button.dart` tiene por defecto un ancho que ocupa toda la pantalla.

```dart
style: ElevatedButton.styleFrom(
    minimumSize: const Size(double.infinity, 40),
)
```

Así que lo cambié al mismo ancho del botón anterior para mantener un estilo consistente. Además cambié el color de fondo y un ancho de borde.

```dart
style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(5),
    ),
    backgroundColor: Colors.white,
    minimumSize: Size(MediaQuery.of(context).size.width / 2, 40),
),
```

## Capitalización del texto

Según la documentación https://api.flutter.dev/flutter/dart-core/String/toLowerCase.html ,para forzar las letras minúsculas es necesario agregar el método `.toLowerCase()` en el archivo `lib/screens/signup_email_password_screen.dart`

## Creación de usuarios

Se crearon 2 usuarios:

- correo: user_one@miguelhuaman.com
- Password: 123456

y 

- user_two@miguelhuaman.com
- 987654

![s3](https://user-images.githubusercontent.com/78570710/213742695-12b80816-abb0-4422-84c4-877d3ab4de5f.jpg)

## AppBar

En el archivo `lib/screens/home_screen.dart` se agregó el AppBar con el correo del usuario:

```dart
return Scaffold(
    appBar: AppBar(
        title: Text(user.email!),
        ),
    body: Column(
        //Continuar con el código
```

![s5](https://user-images.githubusercontent.com/78570710/213742878-2be27b23-b3ce-49ab-977c-57edf42cfd59.jpg)

