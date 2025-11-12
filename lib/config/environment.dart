enum Flavor { dev, staging, prod }

class Environment {
  static late Flavor appFlavor;

  static String get name => appFlavor.toString().split('.').last;

  static String get apiBaseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return "https://dev.api.example.com";
      case Flavor.staging:
        return "https://staging.api.example.com";
      case Flavor.prod:
        return "https://api.example.com";
    }
  }
}