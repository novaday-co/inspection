import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/RuleStructure.dart';

import '../Locales/fa.dart';

class IranNationalCode extends RuleStructure implements RuleAbstract {
  double? minCondition;

  IranNationalCode(InspectionCase inspectionCaseObject)
      : super(inspectionCaseObject);

  @override
  bool manualCheck() {
    List<String> identicalDigits = [
      "0000000000",
      "1111111111",
      "2222222222",
      "3333333333",
      "4444444444",
      "5555555555",
      "6666666666",
      "7777777777",
      "8888888888",
      "9999999999"
    ];

    if (input!.trim().isEmpty) {
      return false; // Iranian national Code is empty
    } else if (input!.trim().length != 10) {
      return false; // Iranian national Code is less or more than 10 digits
    } else if (identicalDigits.contains(input)) {
      return false; // Fake Iranian national Code
    } else {
      int sum = 0;

      for (int i = 0; i < 9; i++) {
        sum += int.parse(input![i]) * (10 - i);
      }

      int lastDigit;
      int divideRemaining = sum % 11;

      if (divideRemaining < 2) {
        lastDigit = divideRemaining;
      } else {
        lastDigit = 11 - (divideRemaining);
      }

      if (int.parse(input![9]) == lastDigit) {
        // is valid Iranian national code
        return true;
      } else {
        // not valid Iranian national code
        return false;
      }
    }
  }

  @override
  dynamic customMessage() {
    return trans('iran_national_code', {'code': name});
  }
}
