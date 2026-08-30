# Rehlati 🕌

A Flutter travel app for exploring must-see spots across Saudi Arabia — Project 1 for Flutter Bootcamp.

## Features

- **Home Screen** — browse a featured "Popular Destination" and a scrollable list of recommended places, each with an image, name, and description
- **Search** — live search bar to filter destinations by name
- **Bottom Navigation** — Home, Favorites, Explore, and Profile tabs
- **Details Screen** — full destination page with category tag, best time to visit, description, and highlight chips
- Custom dusty/brown color palette and Playfair Display typography throughout

## Design

- **Color Palette** — a dusty/brown desert theme:
  - Sand/cream background `#F5EFE6`
  - Terracotta brown `#8B5E3C`
  - Dusty tan/gold `#C9A66B`
  - Espresso brown (text) `#3E2723`
- **Font** — [Playfair Display](https://fonts.google.com/specimen/Playfair+Display) (via `google_fonts`) used for the app title and section headers

## Widgets Used

`Scaffold`, `AppBar`, `SliverAppBar`, `ListView`, `Column`, `Row`, `Container`, `SizedBox`, `Image`, `Text`, `TextField`, `MediaQuery`, `Navigator`, `BottomNavigationBar`, `ElevatedButton`, `GestureDetector`

## Screenshots

| Home Screen | Details Screen |
|---|---|
| ![Home](screenshots/home.png) | ![Details](screenshots/details.png) |

## Project Structure
lib/
  data/
    places_data.dart
  screens/
    home_screen.dart
    details_screen.dart
  theme/
    app_colors.dart
  widgets/
    recommended_card.dart
  main.dart


## Getting Started

```bash
flutter pub get
flutter run
```

## Built With

- Flutter & Dart
- [google_fonts](https://pub.dev/packages/google_fonts)
