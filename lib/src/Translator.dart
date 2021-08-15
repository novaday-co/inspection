import 'package:inspection/src/Locales/en.dart';
import 'package:inspection/src/Locales/fa.dart';

// Translate rule's custom messages with locale code
class Translator {
  String? locale = 'en';
  Map? dictionary = {};

  // Load dictionaries
  Translator() {
    dictionary!['en'] = en;
    dictionary!['fa'] = fa;
  }

  // Translate method
  trans(String code, [Map? variables]) {
    String mainSentence = 'Validation Error';

    if (dictionary![locale] != null) if (dictionary![locale][code] != null)
      mainSentence = dictionary![locale][code];

    variables!.forEach((index, value) {
      mainSentence = mainSentence.replaceAll(':' + index, value);
    });

    return mainSentence;
  }
}
