import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class In extends RuleStructure implements RuleAbstract {
  String allowedWords;
  List allowedWordList = [];

  In(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    if (rule.contains(':'))
      allowedWords = rule.split(':')[1];
    else
      allowedWords = '';
    allowedWordList = allowedWords.split(',');
  }

  @override
  bool manualCheck() {
    return allowedWords.contains(input);
  }

  @override
  dynamic customMessage() {
    return trans('in', {'name': name, 'in': allowedWords.toString()});
  }
}
