# Technology Stack

## Framework & Language
- **Flutter**: Cross-platform mobile development framework
- **Dart**: Programming language (SDK ^3.7.2)

## State Management & Architecture
- **GetX**: State management, dependency injection, and routing (`get: ^4.7.2`)
- **MVC Pattern**: Model-View-Controller architecture with feature-based organization

## Key Dependencies

### Network & API
- **Dio**: HTTP client for API requests (`dio: ^5.8.0+1`)
- **Pretty Dio Logger**: API request/response logging (`pretty_dio_logger: ^1.4.0`)

### Real-time Communication
- **Socket.IO Client**: WebSocket communication (`socket_io_client: ^3.1.2`)

### UI & Styling
- **Flutter ScreenUtil**: Responsive design (`flutter_screenutil: ^5.9.3`)
- **Google Fonts**: Custom typography (`google_fonts: ^6.2.1`)
- **Flutter SVG**: SVG image support (`flutter_svg: ^2.2.0`)
- **Cached Network Image**: Image caching (`cached_network_image: ^3.4.1`)

### Storage & Configuration
- **Shared Preferences**: Local data persistence (`shared_preferences: ^2.5.3`)
- **Flutter DotEnv**: Environment configuration (`flutter_dotenv: ^5.2.1`)

### Features
- **Flutter Local Notifications**: Push notifications (`flutter_local_notifications: ^18.0.0`)
- **Image Picker**: Camera/gallery access (`image_picker: ^1.1.2`)
- **Image Cropper**: Image editing (`image_cropper: ^9.1.0`)
- **Intl Phone Field**: International phone input (`intl_phone_field: ^3.2.0`)
- **Pin Code Fields**: OTP input (`pin_code_fields: ^8.0.1`)
- **Flutter HTML**: HTML content rendering (`flutter_html: ^3.0.0`)

## Common Commands

### Development
```bash
# Get dependencies
flutter pub get

# Run on device/simulator
flutter run

# Run with specific flavor
flutter run --debug
flutter run --release

# Build for platforms
flutter build apk
flutter build ios
flutter build web
```

### Code Quality
```bash
# Analyze code
flutter analyze

# Format code
flutter format .

# Run tests
flutter test
```

## Design System
- **Design Size**: 428x926 (configured in ScreenUtil)
- **Theme**: Light theme with custom color palette
- **Responsive**: ScreenUtil for adaptive layouts across devices