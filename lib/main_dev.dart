// main_dev.dart
import 'main.dart';
import 'config/environment.dart';

void main() {
  Environment.appFlavor = Flavor.dev;
  runMainApp();
}