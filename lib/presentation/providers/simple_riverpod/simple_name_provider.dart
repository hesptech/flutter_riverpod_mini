import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/config/config.dart';

// Solo lectura
final simpleNameProvider = Provider.autoDispose<String>((ref) {
  
  return RandomGenerator.getRandomName();
});