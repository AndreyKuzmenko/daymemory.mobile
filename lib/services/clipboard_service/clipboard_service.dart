import 'package:clipboard/clipboard.dart';

abstract class IClipboardService {
  Future copy(String text);

  Future<String> paste();
}

class ClipboardService implements IClipboardService {
  @override
  Future copy(String text) async {
    await FlutterClipboard.copy(text);
  }

  @override
  Future<String> paste() async {
    return await FlutterClipboard.paste();
  }
}
