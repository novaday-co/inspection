import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class Contains extends RuleStructure implements RuleAbstract {
  String? expectedWords;
  List? expectedWordsList = [];
  List? leftWords = [];

  Contains(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    if (rule.contains(':'))
      expectedWords = rule.split(':')[1];
    else
      expectedWords = '';
    expectedWordsList = expectedWords!.split(',');
  }

  @override
  bool manualCheck() {
    for (var item in expectedWordsList!)
      if (!input!.toLowerCase().contains(item)) {
        leftWords!.add(item);
        return false;
      }
    return true;
  }

  @override
  dynamic customMessage() {
    return trans('contains', {'name': name, 'contains': leftWords.toString()});
  }
}
