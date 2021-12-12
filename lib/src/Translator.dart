import 'package:inspection/src/Locales/en.dart';
import 'package:inspection/src/Locales/fa.dart';
import 'package:inspection/src/Locales/vi.dart';

// Translate rule's custom messages with locale code
class Translator {
  String? locale = 'en';
  Map? dictionary = {};

  // Load dictionaries
  Translator() {
    dictionary!['en'] = en;
    dictionary!['fa'] = fa;
    dictionary!['vi'] = vi;
  }

  // Translate method
  trans(String code, [Map<String?, String?>? variables]) {
    String mainSentence = 'Validation Error';

    if (dictionary![locale] != null) if (dictionary![locale][code] != null)
      mainSentence = dictionary![locale][code];

    variables!.forEach((index,value) {
      index = index ?? '';
      value = value ?? '';
      mainSentence = mainSentence.replaceAll(':' + index, value);
    });

    return mainSentence;
  }
}
