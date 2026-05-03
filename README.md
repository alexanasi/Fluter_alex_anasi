# Ciudadela Smart

Aplicación desarrollada en Flutter para la gestión básica de una urbanización o ciudadela.

## Descripción

La app permite consultar el estado de la alícuota mensual de un residente y visualizar espacios comunes disponibles para realizar una reserva simulada. El proyecto usa únicamente datos estáticos declarados en Dart mediante listas y mapas.

## Funcionalidades

- Menú principal con navegación entre pantallas.
- Consulta del estado de alícuota mensual.
- Historial básico de pagos.
- Visualización de espacios comunes disponibles y reservados.
- Selección simulada de espacios comunes mediante diálogo de confirmación.
- Diseño responsive para móvil y escritorio.

## Estructura principal

```txt
lib/
 ├── main.dart
 ├── data/
 │   └── datos_ciudadela.dart
 ├── screens/
 │   ├── home_screen.dart
 │   ├── alicuota_screen.dart
 │   └── espacios_screen.dart
 └── widgets/
     ├── info_card.dart
     └── menu_card.dart
```

## Capturas de pantalla

Agrega aquí las capturas antes de subir al aula virtual.

### Home

![Home](capturas/home.png)

### Estado de alícuota

![Alícuota](capturas/alicuota.png)

### Espacios comunes

![Espacios comunes](capturas/espacios.png)

## Ejecución

```bash
flutter pub get
flutter run
```

## Autor

Alex Anasi
