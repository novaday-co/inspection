import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class IP extends RuleStructure implements RuleAbstract {
  IP(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String regex =
      r"^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$";

  @override
  dynamic customMessage() {
    return trans('ip', {'name': name});
  }
}
