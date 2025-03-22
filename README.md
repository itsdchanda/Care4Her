<h1 align="center">Care4Her - Breast Cancer Prediction</h1>

<p align="center">
  <a href="https://github.com/itsdchanda/Care4Her/blob/master/LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License">
  </a>
  <a href="https://github.com/itsdchanda/Care4Her/issues">
    <img src="https://img.shields.io/github/issues/itsdchanda/Care4Her.svg" alt="GitHub Issues">
  </a>
  <a href="https://github.com/itsdchanda/Care4Her/network">
    <img src="https://img.shields.io/github/forks/itsdchanda/Care4Her.svg" alt="GitHub Forks">
  </a>
  <a href="https://github.com/itsdchanda/Care4Her/stargazers">
    <img src="https://img.shields.io/github/stars/itsdchanda/Care4Her.svg" alt="GitHub Stars">
  </a>
  <a href="https://github.com/itsdchanda/Care4Her/actions/workflows/release.yml">
    <img src="https://github.com/itsdchanda/Care4Her/actions/workflows/release.yml/badge.svg" alt="Releases">
  </a>
</p>


<p align="center">
Care4Her is an ML-based application designed to help detect breast cancer in its early stages using mammography images. It also includes a special feature for self-breast check. In addition to the prediction capabilities, the application provides a range of features to support users in managing their breast health and accessing important resources.
</p>

## Features

- Breast cancer prediction using ML algorithms and mammography images
- Self-breast check with guided instructions and tips for early detection
- Login and sign up functionality to personalize user experience
- Breast cancer articles and resources for educational purposes
- Doctor appointment scheduling with the ability to filter doctors by specialization
- Reminder creation for self-breast checks and medical appointments
- Support for multiple languages to cater to a diverse user base
- Theme customization options to enhance user experience

  <p align="center">
    <a href="https://github.com/itsdchanda/Care4Her/releases/latest/download/app-release.apk"><img src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" alt="Download from Google Play Store" width="200" height="80"/></a>
    <a href="https://github.com/itsdchanda/Care4Her/releases/latest/download/app.ipa"><img src="https://developer.apple.com/app-store/marketing/guidelines/images/badge-download-on-the-app-store.svg" alt="Download from the App Store" width="160" height="80"/></a>
    </p>

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/itsdchanda/Care4Her.git
   ```

2. Change to the project directory:

   ```bash
   cd Care4Her
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```

## Generate Launcher Icons

   ```bash
   dart run flutter_launcher_icons
   ```

## Generate Splash Screen

   ```bash
   dart run flutter_native_splash:create
   ```

## Update Pods

   ```bash
   cd ios
   pod cache clean --all

   rm Podfile.lock

   rm -rf .symlinks/

   cd ..

   flutter clean

   flutter pub get

   cd ios

   pod update

   pod repo update

   pod install --repo-update

   pod update

   pod install

   cd ..
   ```

For detailed instructions, please refer to the [Flutter documentation](https://flutter.dev/docs/get-started/install).

## Contributing

We welcome contributions from the community to help improve Care4Her. To contribute, please review the [contribution guidelines](CONTRIBUTING.md) before submitting a pull request.

## Issues

If you encounter any issues or have suggestions for improvement, please [open an issue](https://github.com/itsdchanda/Care4Her/issues) on GitHub. We appreciate your feedback and will do our best to address it.

## License

Care4Her is licensed under the [MIT License](https://github.com/itsdchanda/Care4Her/blob/master/LICENSE).

## Acknowledgments

We would like to express our gratitude to all the contributors and supporters who have helped make this project possible.

GitHub Repository: [Care4Her](https://github.com/itsdchanda/Care4Her)
