## Name : Lokesh Shukla

## Roll Number : 23EACCA033

## Experiment Title : File Storage Application

## Aim : To store data locally in device storage.

## Procedure

- Install Flutter SDK
  - Download and install the Flutter SDK from the official website and set up environment variables.
  - Verify installation using:
    ```bash
    flutter doctor
    ```

- Install Android Studio
  - Install Android Studio and configure it with Flutter and Dart plugins.

- Create a New Flutter Project
  - Open Android Studio
  - Click on New Flutter Project
  - Select Flutter Application
  - Enter project name and location
  - Click Finish

- Add Path Provider Dependency
  - Open `pubspec.yaml`
  - Add the following dependency:
    ```yaml
    path_provider: ^latest_version
    ```
  - Run:
    ```bash
    flutter pub get
    ```

- Write the Source Code
  - Open the `main.dart` file and replace the existing code with the given program.
  - The program uses file storage to:
    - Get device document directory path
    - Create and write data into a text file
    - Read data from the file and display it on screen

- Connect Device/Emulator
  - Use Android emulator or physical device

- Run the Application
  - Click Run button or use:
    ```bash
    flutter run
    ```

- Observe the Output
  - On clicking "Write Data":
    - Text is saved into a local file
  - On clicking "Read Data":
    - Saved text is retrieved and displayed on screen

## Output: A Flutter application that writes data to a local file and reads it back for display.

- <img width="1918" height="1031" alt="image" src="https://github.com/user-attachments/assets/d06854cd-5399-4efd-9a5b-417642882e82" />

## Conclusion : The experiment was successfully completed by implementing local file storage in Flutter using the path_provider package and performing basic file read and write operations.
