@echo off
echo ====================================
echo Building HappyPlaces APK with Docker
echo ====================================
echo.

echo Step 1: Building Docker image...
docker build -t happyplaces-app .
if errorlevel 1 (
    echo Error: Docker build failed!
    pause
    exit /b 1
)

echo.
echo Step 2: Cleaning previous build...
docker run --rm happyplaces-app ./gradlew clean

echo.
echo Step 3: Building debug APK...
docker run --rm -v "%cd%\app\build\outputs:/app/app/build/outputs" happyplaces-app ./gradlew assembleDebug
if errorlevel 1 (
    echo Error: APK build failed!
    pause
    exit /b 1
)

echo.
echo ====================================
echo Build Complete!
echo ====================================
echo APK location: app\build\outputs\apk\debug\app-debug.apk
echo.
pause
