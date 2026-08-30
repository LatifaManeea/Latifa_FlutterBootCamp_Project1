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
<img width="444" height="855" alt="Screenshot 2026-08-30 at 3 29 24 PM" src="https://github.com/user-attachments/assets/1fe06f13-d00b-4e1a-9bd2-1295e73455db" />
<img width="461" height="860" alt="Screenshot 2026-08-30 at 3 30 47 PM" src="https://github.com/user-attachments/assets/80c13298-eee5-4249-b207-948ac6746c25" />
<img width="450" height="849" alt="Screenshot 2026-08-30 at 3 31 07 PM" src="https://github.com/user-attachments/assets/dbccff5c-19c1-4c75-8871-f21cc563baa1" />
<img width="444" height="854" alt="Screenshot 2026-08-30 at 3 31 28 PM" src="https://github.com/user-attachments/assets/754deea6-28ce-4fff-86c7-a078b0d47b50" />
<img width="445" height="847" alt="Screenshot 2026-08-30 at 3 31 51 PM" src="https://github.com/user-attachments/assets/de3951c7-e4a3-4e97-aa33-21db229583a0" />
<img width="449" height="864" alt="Screenshot 2026-08-30 at 3 30 03 PM" src="https://github.com/user-attachments/assets/db05eb06-f25e-4a86-9992-f5d6b92d6755" />


## Project Structure

- `lib/`
  - `data/`
    - `places_data.dart`
  - `screens/`
    - `home_screen.dart`
    - `details_screen.dart`
  - `theme/`
    - `app_colors.dart`
  - `widgets/`
    - `recommended_card.dart`
  - `main.dart`

## Getting Started

```bash
flutter pub get
flutter run
```

## Built With

- Flutter & Dart
- [google_fonts](https://pub.dev/packages/google_fonts)
