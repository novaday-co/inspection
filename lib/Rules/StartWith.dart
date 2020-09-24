import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class StartWith extends RuleStructure implements RuleAbstract {
  String expectedWords;
  List expectedWordsList = [];
  List leftWords = [];

  StartWith(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    if (rule.contains(':'))
      expectedWords = rule.split(':')[1];
    else
      expectedWords = '';
    expectedWordsList = expectedWords.split(',');
  }

  @override
  bool manualCheck() {
    for (var item in expectedWordsList)
      if (input.toLowerCase().startsWith(item.toLowerCase())) return true;

    return false;
  }

  @override
  dynamic customMessage() {
    return trans('starts_with', {'starts_with': expectedWordsList.toString()});
  }
}
