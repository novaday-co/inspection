import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class IranMobile extends RuleStructure implements RuleAbstract {
  IranMobile(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String? regex =
      r'^(((98)|(\+98)|(0098)|0)(9){1}((0)|(1)|(3)|(9)|(2)){1}[0-9]{8})+$';

  @override
  bool manualCheck() {
    return validateRegEx(regex, input,caseSensitive: false);
  }

  @override
  dynamic customMessage() {
    return trans('iran_mobile', {'name': name});
  }
}
