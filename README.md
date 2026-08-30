# 🕌 Rehlati

*Your journey through Saudi Arabia's must-see destinations.*

Rehlati is a Flutter travel app that showcases iconic Saudi destinations — from the ancient tombs of AlUla to the dramatic cliffs at the Edge of the World — through a clean, warm, desert-inspired interface.

Built for Flutter Bootcamp Project 1.

---

## ✨ Overview

Rehlati lets users browse curated Saudi destinations, search by name, and dive into rich detail pages featuring highlights, best-time-to-visit info, and category tags — all wrapped in a custom color palette and typography designed to feel like a boutique travel guide rather than a generic app template.

---

## 🖼️ Screenshots

| Home | Recommended List | Search |
|---|---|---|
| ![Home](<img width="444" height="855" alt="Screenshot 2026-08-30 at 3 29 24 PM" src="https://github.com/user-attachments/assets/3741f0ad-7ed1-43f1-86eb-d5a8469d38dc" />
) | ![Recommended](<img width="449" height="864" alt="Screenshot 2026-08-30 at 3 30 03 PM" src="https://github.com/user-attachments/assets/d635f5a9-be42-4360-bd4b-0a3bf6b485e0" />
) | ![Search](<img width="461" height="860" alt="Screenshot 2026-08-30 at 3 30 47 PM" src="https://github.com/user-attachments/assets/e8ca7592-5c4b-4e32-8104-146cd742d324" />
) |

| AlUla Details | Diriyah Details | Edge of the World Details |
|---|---|---|
| ![AlUla](screenshots/details-alula.png) | ![Diriyah](screenshots/details-diriyah.png) | ![Edge of the World](screenshots/details-edge.png) |

---

## 🚀 Features

- **Curated Destinations** — 5 hand-picked Saudi locations, each with imagery, description, category, and travel tips
- **Featured + Recommended Layout** — a spotlighted "Popular Destination" card alongside a scrollable recommended list
- **Live Search** — instantly filter destinations by name via a functional `TextField`
- **Rich Detail Pages** — category tags, best-time-to-visit info, and highlight chips for each destination
- **Interactive Micro-animations** — recommended cards scale up on hover to signal interactivity
- **Bottom Navigation** — Home, Favorites, Explore, and Profile tabs
- **Smooth Scroll Transitions** — a collapsing `SliverAppBar` hero image on the details page

---

## 🎨 Design System

**Color Palette** — a dusty, sun-warmed desert theme:

| Color | Hex | Usage |
|---|---|---|
| Sand / Cream | `#F5EFE6` | Background |
| Terracotta Brown | `#8B5E3C` | Primary (AppBar, buttons) |
| Dusty Tan / Gold | `#C9A66B` | Secondary (accents, buttons) |
| Espresso Brown | `#3E2723` | Primary text |

**Typography** — [Playfair Display](https://fonts.google.com/specimen/Playfair+Display) via `google_fonts`, used for the app title and section headers to give the app an elegant, editorial feel.

---

## 🧩 Widgets Used

`Scaffold` · `AppBar` · `SliverAppBar` · `ListView` · `Column` · `Row` · `Container` · `SizedBox` · `Image` · `Text` · `TextField` · `MediaQuery` · `Navigator` · `BottomNavigationBar` · `ElevatedButton` · `GestureDetector`

---

## 📂 Project Structure

- `lib/`
  - `data/`
    - `places_data.dart` — destination data source
  - `screens/`
    - `home_screen.dart` — main browse & search screen
    - `details_screen.dart` — destination detail view
  - `theme/`
    - `app_colors.dart` — centralized color palette
  - `widgets/`
    - `recommended_card.dart` — reusable animated destination card
  - `main.dart` — app entry point

---

## 🛠️ Built With

- [Flutter](https://flutter.dev) & Dart
- [google_fonts](https://pub.dev/packages/google_fonts)

---

## ▶️ Getting Started

```bash
flutter pub get
flutter run
```

---

## 🌍 Destinations Featured

- **AlUla** — Ancient Nabatean tombs and desert landscapes
- **Red Sea Coast** — Scenic waterfront with sandy beaches and clear waters
- **Diriyah** — The historic mud-brick birthplace of the Saudi state
- **Abha** — Cool mountain air and green valleys in the Asir region
- **Edge of the World** — Dramatic cliffs and panoramic desert views

---

*Made with 🤎 for Flutter Bootcamp Project 1*
