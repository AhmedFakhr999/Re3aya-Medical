# Re3aya Medical App

Re3aya (رعاية) is a comprehensive Flutter-based mobile healthcare platform designed to streamline medical care management. The application facilitates a digital connection between patients and healthcare services, providing tools for medical record management, telemedicine consultations, and laboratory service integration.

## Features

### Authentication and Security

* **User Authentication**: Secure email-based login and registration flows.
* **Session Management**: Persistent user sessions with secure logout and account deletion options.

### Healthcare Services Hub

* **Medical Consultations**: Interface for booking and managing doctor appointments.
* **Laboratory & Pharmacy**: Direct access to laboratory testing and pharmacy services.
* **Home Care**: Support for requesting home-based medical visits and humanitarian medical services.

### Health Data Management

* **Electronic Health Records (EHR)**: A centralized digital file for storing chronic disease history (Diabetes, Hypertension, Cardiac issues, Asthma).
* **Biometric Tracking**: Management of physical metrics including weight, height, blood type, and birth dates.
* **Service History**: Automated logging of medical interactions and appointments.

### Account and Financials

* **Digital Wallet**: Integrated system for managing service credits and payment methods.
* **Profile Customization**: Localized settings supporting Arabic RTL layouts and notification preferences.

---

## Project Structure

The project follows a modular architecture to separate concerns between the UI, business logic, and data layers.

```
lib/
├── core/                   # Shared utilities and global configurations
│   ├── constants/          # Static assets and app-wide constants
│   ├── service/            # Network clients and local storage services
│   └── util/               # Global helper functions and validators
├── features/               # Independent functional modules
│   └── presentation/       # User interface and state management
│       ├── auth/           # Identity management
│       ├── home/           # Service discovery dashboard
│       ├── medical_record/ # Patient health data
│       ├── profile/        # Account settings
│       └── wallet/         # Transaction management
└── main.dart               # Application bootstrap

```

---

## Getting Started

### Prerequisites

To build and run Re3aya, ensure you have the following installed:

* [Flutter SDK](https://docs.flutter.dev/get-started/install) (Latest Stable Channel)
* [Dart SDK](https://dart.dev/get-dart)
* Android Studio / Xcode for mobile emulation

### Installation

1. Clone the repository:
```bash
git clone https://github.com/AhmedFakhr999/Re3aya-Medical.git

```


2. Change to the project directory:
```bash
cd re3aya_app

```


3. Fetch the required dependencies:
```bash
flutter pub get

```


4. Build and run the application:
```bash
flutter run

```



---

## Development and Contribution

### Coding Standards

This project adheres to the official [Dart style guide](https://www.google.com/search?q=https://dart.dev/guides/language/evolutionary-style). Ensure that all contributions pass `flutter analyze` before submitting a pull request.

### Documentation

For detailed information on the Flutter framework, refer to the [online documentation](https://docs.flutter.dev/), which includes tutorials, samples, and a full API reference.

---

## Support

For technical support or inquiries regarding the Re3aya platform, please open an issue in the GitHub repository or contact the development team through the in-app "Contact Us" feature.

---

Would you like me to add a section for **Unit Testing** or **Environment Configuration (API Keys)**?
