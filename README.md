# Favourite Places

Favourite Places is an Android app written in Kotlin that helps you collect memories tied to locations. Capture the spots you love by saving photos, notes, and their position on the map so that you can revisit them later.

## Features
- 📍 **Location bookmarking** – Save places with a title, description, and the date you visited.
- 🗺️ **Map search & current location** – Pick a place using the Google Places autocomplete widget or grab your current GPS coordinates.
- 📸 **Photo attachments** – Add images from the gallery or capture new photos with the camera.
- ✏️ **Edit & delete** – Update previously saved places or remove entries with a swipe gesture.
- 🗂️ **Local storage** – All data is stored locally using SQLite so your list is available offline.

## Getting started

### Prerequisites
- Android Studio Iguana (or newer) with the Android SDK and an emulator or physical device running Android 5.0+
- A Google Maps/Places API key

### Setup
1. **Clone the repository**
   ```bash
   git clone https://github.com/<your-account>/Favourite_Places.git
   cd Favourite_Places
   ```
2. **Open in Android Studio**
   - Choose *File ▸ Open...* and select the project root directory.
   - Let Android Studio sync the Gradle project and download dependencies.
3. **Configure the Google API key**
   - Replace the placeholder value of `google_maps_api_key` in `app/src/main/res/values/strings.xml` with your own key.
   - Ensure Places, Maps SDK for Android, and Geocoding APIs are enabled for the key in Google Cloud Console.
4. **Build & run**
   - Select a target device (emulator or physical).
   - Click the *Run* button (▶) in Android Studio or run `./gradlew assembleDebug` from the command line.

You're ready to start saving your favourite places!
