# Employee Directory App

A Flutter app built as part of my internship task. The goal was to get hands-on experience with REST API integration, JSON parsing, and building a clean UI from scratch — and honestly, it turned into a solid little project I'm pretty proud of.

---

## What It Does

The app pulls employee data from a public REST API and displays it in a searchable, scrollable directory. Tap on any employee and you get their full profile. It handles loading states, network errors, and even lets you pull down to refresh the list.

Nothing too fancy, but everything works the way it should.

---

## Features

- Fetches real data from a REST API
- Parses JSON into Dart model classes
- Employee list with profile cards
- Full profile screen per employee
- Search bar that filters in real time
- Pull-to-refresh
- Loading spinners while data loads
- Error screen with a retry button if something goes wrong
- Cached avatars using `cached_network_image`
- Material 3 design throughout

---

## Screenshots

### Splash Screen
![Splash Screen](screenshots/splash_screen.png)

### Home Screen
![Home Screen](screenshots/home_screen.png)

### Profile Screen
![Profile Screen](screenshots/profile_screen.png)

### Error Screen
![Error Screen](screenshots/error_screen.png)

---

## Demo

[Add Demo Video Link Here]

---

## Tech Stack

| What | Why |
|------|-----|
| Flutter + Dart | The whole app |
| `http` package | Making API requests |
| `cached_network_image` | Smooth avatar loading |
| Material 3 | UI components and theming |

---

## API

Employee data comes from [JSONPlaceholder](https://jsonplaceholder.typicode.com/users) — a free fake REST API, great for practice projects.

Avatars are generated dynamically using:
```
https://ui-avatars.com/api/?name=<employee_name>
```

---

## Project Structure

```
lib/
├── models/
│   └── user_model.dart         # Data class for employees
│
├── services/
│   └── api_service.dart        # All API calls live here
│
├── screens/
│   ├── splash_screen.dart
│   ├── home_screen.dart
│   └── profile_screen.dart
│
├── widgets/
│   ├── search_bar_widget.dart
│   └── user_card.dart
│
└── main.dart
```

I tried to keep things separated so each file has one clear responsibility. It made debugging a lot easier.

---

## Getting Started

Clone the repo and run it locally:

```bash
git clone https://github.com/your-username/employee-directory-app.git
cd employee-directory-app
flutter pub get
flutter run
```

---

## What I Learned

This project was my first time building something end-to-end in Flutter with real networking. A few things that clicked for me along the way:

- How `async`/`await` works in Dart and why it matters for API calls
- Parsing JSON manually vs. using model classes — model classes win every time
- How to handle errors gracefully so the app doesn't just crash or show a blank screen
- Using `ListView.builder` efficiently for lists that could be any length
- Passing data between screens with Navigator

---

## About

Built by **Syed Mohsin Raza** as part of a Flutter Developer Internship.

---

## License

This project was created for learning and internship purposes. Feel free to reference it, just don't copy-paste it as your own submission somewhere.
