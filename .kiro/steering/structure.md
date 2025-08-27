# Project Structure

## Root Directory Organization
```
haircutmen_app/
├── lib/                    # Main Dart source code
├── assets/                 # Static assets (images, icons)
├── android/               # Android platform code
├── ios/                   # iOS platform code
├── web/                   # Web platform code
├── windows/               # Windows platform code
├── linux/                 # Linux platform code
├── macos/                 # macOS platform code
├── test/                  # Unit and widget tests
└── .env                   # Environment variables
```

## Lib Directory Structure

### Feature-Based Architecture
```
lib/
├── main.dart              # App entry point
├── app.dart               # App configuration and routing setup
├── features/              # Feature modules (domain-driven)
├── component/             # Reusable UI components
├── config/                # App configuration
├── services/              # Business logic services
└── utils/                 # Utilities and helpers
```

### Features Organization
Each feature follows clean architecture principles:
```
features/[feature_name]/
├── data/
│   └── model/             # Data models
├── presentation/
│   ├── controller/        # GetX controllers (business logic)
│   ├── screen/            # UI screens
│   └── widgets/           # Feature-specific widgets
└── repository/            # Data access layer (when needed)
```

### Component Library
Reusable UI components organized by type:
```
component/
├── bottom_nav_bar/        # Navigation components
├── button/                # Button variants
├── image/                 # Image components
├── other_widgets/         # Miscellaneous widgets
├── pop_up/                # Modal and popup components
├── screen/                # Screen-level components
├── text/                  # Text components
└── text_field/            # Input field components
```

### Configuration
```
config/
├── api/                   # API endpoints and configuration
├── dependency/            # Dependency injection setup
├── languages/             # Internationalization
├── route/                 # App routing configuration
├── secret_key/            # API keys and secrets
└── theme/                 # App theming
```

### Services
```
services/
├── api/                   # HTTP client and API service
├── location/              # Location services
├── notification/          # Push notification handling
├── responsive/            # Screen size utilities
├── socket/                # WebSocket communication
└── storage/               # Local storage management
```

### Utils
```
utils/
├── constants/             # App constants (colors, strings, etc.)
├── enum/                  # Enumerations
├── extensions/            # Dart extensions
├── helpers/               # Helper functions
└── log/                   # Logging utilities
```

## Naming Conventions

### Files & Directories
- Use `snake_case` for file and directory names
- Feature directories use descriptive names (e.g., `sign_in`, `forgot password`)
- Screen files end with `_screen.dart`
- Controller files end with `_controller.dart`
- Model files end with `_model.dart`

### Classes & Variables
- Use `PascalCase` for class names
- Use `camelCase` for variables and methods
- Use `SCREAMING_SNAKE_CASE` for constants

### Routes
- Route constants use descriptive paths (e.g., `/sign_in_screen.dart`)
- Defined in `AppRoutes` class with corresponding `GetPage` entries

## Asset Organization
```
assets/
├── images/                # PNG/JPG images
│   ├── noData.png
│   ├── noImage.png
│   └── profile.png
└── icons/                 # SVG icons and app icons
```

## Key Architectural Patterns
- **Feature-First**: Code organized by business features
- **Clean Architecture**: Separation of concerns with data/presentation layers
- **GetX Pattern**: Controllers handle business logic, screens handle UI
- **Component-Based**: Reusable UI components with consistent APIs
- **Service Layer**: Centralized business services (API, storage, etc.)