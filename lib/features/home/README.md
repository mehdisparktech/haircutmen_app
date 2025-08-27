# Home Feature

This feature implements the main home screen of the HaircutMen app following the provided UI design.

## Structure

### Screen
- `home_screen.dart` - Main home screen with header, search, categories, and service providers

### Controller
- `home_controller.dart` - Manages home screen state, search functionality, and data

### Widgets
- `service_category_item.dart` - Reusable category item widget
- `service_provider_card.dart` - Service provider card with image, details, and actions

## Features

### Header Section
- User profile image with border
- Welcome message with user name
- Menu/burger icon button

### Search Functionality
- Search bar with icon
- Real-time search through service providers
- Filter by name or service type

### Service Categories
- 5 category buttons: Haircut, Massage, Nail Care, Skin Care, Makeup
- Clickable categories filter the service providers
- Custom SVG icons for each category

### Service Providers Grid
- 2-column grid layout
- Provider cards with:
  - Service provider image
  - Name and service type
  - Distance information
  - Star rating and review count
  - Price information
  - Favorite button
- Responsive design using ScreenUtil

## Design System Compliance

- Uses existing `CommonText` component for all text
- Uses existing `CommonImage` component for images
- Uses existing `CommonTextField` component for search
- Follows app color palette from `AppColors`
- Uses consistent spacing and sizing with ScreenUtil
- Implements proper shadows and border radius

## State Management

- Uses GetX for state management
- Reactive UI updates with Obx
- Clean separation of business logic in controller

## Assets

Created SVG icons for service categories:
- `haircut.svg`
- `massage.svg` 
- `nail_care.svg`
- `skin_care.svg`
- `makeup.svg`
- `burger.svg`

## Usage

The home screen is designed to be used within the main navigation structure. It automatically initializes the HomeController and loads sample data.

```dart
// Navigate to home screen
Get.to(() => const HomeScreen());
```

## Future Enhancements

- Connect to real API for service provider data
- Implement actual navigation to provider details
- Add favorite functionality with local storage
- Add location-based filtering
- Implement pull-to-refresh
- Add loading states and error handling