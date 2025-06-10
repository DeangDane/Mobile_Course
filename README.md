# assignment_06

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
In this assignment, I developed a multi-language Flutter login screen with dark mode support and persistent user preferences using shared_preferences. The app allows users to toggle between English, French, and Khmer languages, and switch between light and dark themes. The selected settings are saved and reloaded on app restart.

🔧 Tools & Technologies Used:
Flutter (SDK)

Dart (language)

shared_preferences package

Figma (for UI design reference)

VS Code (code editor)

⚙️ Development Process:
Created a new Flutter project.

Designed the login UI in login.dart, structured around a localized Map for text strings.

Handled state for theme and language in main.dart using StatefulWidget and callbacks.

Used SharedPreferences to persist theme and language settings.

Made all colors and UI elements respond to theme changes using Theme.of(context).

⚠️ Challenges:
Ensuring all UI elements (backgrounds, text, borders) respond correctly to dark mode.

Correctly switching localized text in real-time across widgets.

Matching the UI exactly with the Figma design using flexible layout and spacing.

The project successfully meets all the functional requirements and provides a clean, responsive login experience in multiple languages.

## 📱 Screenshots

<p float="left">
  <img src="https://github.com/user-attachments/assets/ce7f98eb-4c02-46fc-8292-8411df750800" width="200" />
  <img src="https://github.com/user-attachments/assets/670bbf6b-3634-4abf-9738-37558a3056ff" width="200" />
  <img src="https://github.com/user-attachments/assets/c02cfb95-4316-4ac0-a40f-2b6ca51b70e3" width="200" />
  <img src="https://github.com/user-attachments/assets/e9869d0c-ebc8-4135-83af-2aaca01046d0" width="200" />
</p>
