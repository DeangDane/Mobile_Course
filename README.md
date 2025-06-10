# assignment_07

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Short Description
This project involved developing a mobile application called Class Manager using Flutter and SQLite. It was extended from a previous version called ClassCheck, enhancing it with full CRUD functionality (Create, Read, Update, Delete) for student records, as well as attendance toggling.

Tools Used:

Flutter framework with Dart

sqflite and path_provider packages for local database storage

Visual Studio Code as the development environment

Android Emulator for testing the app

Development Process:
The app followed a clean and modular architecture. The project was organized into different layers:

Models: Defined the Student class to represent student data.

Services: Handled all database operations in db_helper.dart.

Utils: Contained input validation logic in validators.dart.

Screens: Implemented the main UI in home_page.dart with form dialogs for adding and editing student records.

Custom validation was added to ensure input fields like name, email, and phone were correctly formatted before saving. Each student entry also stores the registration date automatically and allows toggling of attendance status.

Challenges Encountered:

Managing proper state updates after CRUD operations and syncing the UI accordingly.

Implementing SQLite logic to auto-generate IDs and timestamps.

Validating inputs while keeping the code clean and reusable, requiring separation of logic into helper files.

Despite these challenges, the app successfully performs all required functions, storing student data locally and updating the interface in real-time.

## 📱 Screenshots

<p float="left">
  <img src="https://github.com/user-attachments/assets/f7849d35-349a-4fa5-a950-1520b76c8a19" width="300" />
  <img src="https://github.com/user-attachments/assets/9cb9cd70-f092-4e57-8a79-c07e8bbcd132" width="300" />
</p>
