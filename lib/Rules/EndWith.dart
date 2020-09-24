import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class EndWith extends RuleStructure implements RuleAbstract {
  String expectedWords;
  List expectedWordsList = [];
  List leftWords = [];

  EndWith(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    if (rule.contains(':'))
      expectedWords = rule.split(':')[1];
    else
      expectedWords = '';
    expectedWordsList = expectedWords.split(',');
  }

  @override
  bool manualCheck() {
    for (var item in expectedWordsList)
      if (input.toLowerCase().endsWith(item.toLowerCase())) return true;
    return false;
  }

  @override
  dynamic customMessage() {
    return trans(
        'ends_with', {'name': name, 'pattern': expectedWordsList.toString()});
  }
}
