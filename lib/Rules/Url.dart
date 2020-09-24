import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class Url extends RuleStructure implements RuleAbstract {
  Url(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  bool manualCheck() {
    return Uri.parse(input).isAbsolute;
  }

  @override
  dynamic customMessage() {
    return trans('url', {'name': name});
  }
}
