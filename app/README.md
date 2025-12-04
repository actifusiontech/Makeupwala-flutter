# Makeupwala Flutter App

Premium mobile experience inspired by Uber/Airbnb quality: fast, elegant, and reliable.

## Tech Stack

- Flutter 3 (Android, iOS, Web)
- State: `flutter_bloc`, `freezed`, `json_serializable`
- Networking: `dio` + interceptors (auth, retry, logging)
- Routing: `go_router`
- Storage: `hive`, `flutter_secure_storage`
- Theming: `flex_color_scheme`, custom design tokens

## Structure

```text
lib/
	app/
		app.dart        # MaterialApp + theme + router
		di.dart         # Dependency injection setup
	core/
		config/         # env, constants
		network/        # dio client, interceptors
		models/         # freezed models
		repo/           # repositories
		utils/          # helpers
	features/
		auth/
		profile/
		kyc/
		services/
		bookings/
		search/
		notifications/
		reviews/
	shared/
		widgets/
		theme/
```

## Getting Started

```bash
cd Makeupwala-flutter/app
flutter pub get
flutter run
```

## Next Steps

- Add base theme and design system components
- Implement auth flow (login/signup/OTP)
- Wire API health check and backend integration
