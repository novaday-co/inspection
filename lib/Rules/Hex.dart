import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class Hex extends RuleStructure implements RuleAbstract {
  Hex(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String regex = r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$';

  @override
  dynamic customMessage() {
    return trans('hex', {'name': name});
  }
}
