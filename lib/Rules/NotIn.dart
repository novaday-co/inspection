import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class NotIn extends RuleStructure implements RuleAbstract {
  String allowedWords;
  List allowedWordList = [];

  NotIn(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    if (rule.contains(':'))
      allowedWords = rule.split(':')[1];
    else
      allowedWords = '';
    allowedWordList = allowedWords.split(',');
  }

  @override
  bool manualCheck() {
    return !allowedWords.contains(input);
  }

  @override
  dynamic customMessage() {
    return trans('not_in', {'name': name, 'not_in': allowedWords.toString()});
  }
}
