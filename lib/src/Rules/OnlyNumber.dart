import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class OnlyNumber extends RuleStructure implements RuleAbstract {
  OnlyNumber(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String? regex = r'^-?[0-9]+$';

  @override
  dynamic customMessage() {
    return trans('number', {'name': name});
  }
}
