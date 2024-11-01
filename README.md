# Widgets-Flutter

Repositorio de componentes, patrones de diseño y manejadores de estado en Flutter, creado para facilitar el desarrollo y establecer buenas prácticas en aplicaciones móviles. Este proyecto está orientado tanto para desarrolladores que inician con Flutter como para aquellos que buscan una referencia completa en un solo lugar.

## Tabla de Contenidos
- [Descripción General](#descripción-general)
- [Requisitos Previos e Instalación](#requisitos-previos-e-instalación)
- [Instalación](#instalación)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Componentes](#componentes)
- [Patrones de Diseño](#patrones-de-diseño)
- [Manejadores de Estado](#manejadores-de-estado)
- [Contribuciones](#contribuciones)
- [Licencia](#licencia)

---

## Descripción General
Este repositorio centraliza ejemplos de componentes reutilizables, patrones de diseño, y manejadores de estado en Flutter. Su propósito es proporcionar implementaciones listas para usar y adaptadas a distintos escenarios en el desarrollo móvil.


## Requisitos Previos e Instalación

Para trabajar con este repositorio, necesitarás instalar las siguientes herramientas:

### 1. Flutter SDK

#### Windows
1. Descarga el [Flutter SDK](https://docs.flutter.dev/get-started/install/windows)
2. Extrae el archivo zip en una ubicación deseada (ej: `C:\src\flutter`)
3. Actualiza las variables de entorno:
   - Añade `C:\src\flutter\bin` a la variable PATH
   - Verifica la instalación ejecutando:
     ```bash
     flutter --version
     ```

#### Linux
1. Descarga el [Flutter SDK](https://docs.flutter.dev/get-started/install/linux)
2. Extrae el archivo:
   ```bash
   cd ~/development
   tar xf ~/Downloads/flutter_linux_3.x.x-stable.tar.xz
   ```
3. Añade Flutter a tu PATH:
   ```bash
   export PATH="$PATH:`pwd`/flutter/bin"
   ```

### 2. Android Studio

1. Descarga e instala [Android Studio](https://developer.android.com/studio)
2. Instala los plugins necesarios:
   - Flutter plugin
   - Dart plugin
3. Configura un emulador Android:
   - Tools → Android → AVD Manager
   - Create Virtual Device
   - Selecciona un dispositivo y una imagen del sistema
   - Finaliza la creación

### 3. Visual Studio Code

1. Descarga e instala [VS Code](https://code.visualstudio.com/)
2. Instala las extensiones requeridas:
   - Flutter
   - Dart
   - Flutter Widget Snippets
   - Awesome Flutter Snippets
   - Flutter Color
   - pubspec Assist

#### Configuración Recomendada para VS Code

```json
{
  "editor.formatOnSave": true,
  "editor.formatOnType": true,
  "editor.rulers": [80],
  "editor.selectionHighlight": false,
  "editor.suggest.snippetsPreventQuickSuggestions": false,
  "editor.suggestSelection": "first",
  "editor.tabCompletion": "onlySnippets",
  "editor.wordBasedSuggestions": "off",
  "files.autoSave": "afterDelay",
  "dart.previewFlutterUiGuides": true,
  "dart.openDevTools": "flutter",
  "dart.debugExternalPackageLibraries": false,
  "dart.debugSdkLibraries": false
}
```

### 4. Git

1. Instala Git desde [git-scm.com](https://git-scm.com/)
2. Configura tu información de Git:
   ```bash
   git config --global user.name "Tu Nombre"
   git config --global user.email "tu@email.com"
   ```

## 🔧 Configuración del Proyecto

1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu-usuario/nombre-del-repo.git
   ```

2. Ingresa al directorio:
   ```bash
   cd nombre-del-repo
   ```

3. Obtén las dependencias:
   ```bash
   flutter pub get
   ```

4. Ejecuta el proyecto:
   ```bash
   flutter run
   ```

## 📱 Verificación del Entorno

Ejecuta el siguiente comando para verificar que todo esté correctamente instalado:
```bash
flutter doctor
```

Asegúrate de resolver cualquier problema que se muestre en el resultado.

