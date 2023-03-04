import 'package:daymemory/redux/state/states.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';

abstract class IJailbreakService {
  Future<JailbreakType> checkJailbreak();
}

class JailbreakService implements IJailbreakService {
  @override
  Future<JailbreakType> checkJailbreak() async {
    final bool result = await FlutterJailbreakDetection.jailbroken;
    return result ? JailbreakType.invalidPhone : JailbreakType.validPhone;
  }
}
