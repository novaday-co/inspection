import 'package:inspection/InspectionCase.dart';
import 'package:inspection/Rules.dart';

// Logic class :
// Split and iterate in expected rules
class Inspector extends Rules {
  myCustomRule(ruleString, inspectionCase) {
    return '';
  }

  // Split expected rules . Check type of input that can be list or string
  splitRules(InspectionCase inspectionCase,
      {Function(String, InspectionCase inspectionCase) myCustomRule}) {
    if (inspectionCase.rule is List)
      return iterateInRules(inspectionCase, myCustomRule: myCustomRule);
    else {
      inspectionCase.rule = inspectionCase.rule.split('|');
      return iterateInRules(inspectionCase, myCustomRule: myCustomRule);
    }
  }

  // Iterate in expected rules and check validation
  iterateInRules(InspectionCase inspectionCase,
      {Function(String, InspectionCase inspectionCase) myCustomRule}) {
    for (var item in inspectionCase.rule) {
      var inspectionResponse =
          validation(inspectionCase, item, myCustomRule: myCustomRule);
      if (inspectionResponse is String) if (inspectionResponse.length > 0)
        return inspectionResponse;
    }
  }

  // After split rules , it's time to validate inputs with a special rule . Maybe rules come from programmer callback function
  validation(inspectionCase, inspectionCaseRule,
      {Function(String, InspectionCase inspectionCase) myCustomRule}) {
    inspectionCase.rule = inspectionCaseRule;
    List rule = inspectionCaseRule.split(':');
    String ruleString = rule[0];
    if (myCustomRule != null) {
      String customRulesOutput = myCustomRule(ruleString, inspectionCase);
      if (customRulesOutput != null && customRulesOutput != '')
        return customRulesOutput;
      else
        return checkRule(ruleString, inspectionCase);
    } else
      return checkRule(ruleString, inspectionCase);
  }
}
