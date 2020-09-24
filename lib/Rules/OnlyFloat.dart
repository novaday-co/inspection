import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class OnlyFloat extends RuleStructure implements RuleAbstract {
  OnlyFloat(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String regex = r'^(?:-?(?:[0-9]+))?(?:\.[0-9]*)?(?:[eE][\+\-]?(?:[0-9]+))?$';

  @override
  dynamic customMessage() {
    return trans('float', {'name': name});
  }
}
