import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class Numeric extends RuleStructure implements RuleAbstract {
  Numeric(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  bool manualCheck() {
    return double.tryParse(input) != null;
  }

  @override
  dynamic customMessage() {
    return trans('numeric', {'name': name});
  }
}
