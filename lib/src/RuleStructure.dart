import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/Translator.dart';

// Rule Structure
class RuleStructure extends Translator {
  String? name;
  String? input;
  String? message;
  String? regex = '';
  String? locale;

  dynamic rule;
  dynamic inspectionCase;
  bool? ignoreEmptyInput = true;

  RuleStructure(InspectionCase? inspectionCaseObject) {
    name = inspectionCaseObject!.name;
    input = inspectionCaseObject.input ?? '';
    message = inspectionCaseObject.message ?? '';
    locale = inspectionCaseObject.locale ?? 'en';
    rule = inspectionCaseObject.rule ?? '';
    inspectionCase = inspectionCaseObject;
  }

  dynamic customMessage() {
    return false;
  }

  String setMessage() {
    return (message == '' || message == null)
        ? (customMessage() is String)
            ? customMessage()
            : name! + ' validation error'
        : message;
  }

  String cleanRegExpInput(input) {
    return input;
  }

  bool validateRegEx(regex, input, {caseSensitive = true}) {
    RegExp regExp = new RegExp(regex, caseSensitive: caseSensitive);
    return regExp.hasMatch(cleanRegExpInput(input)) ? true : false;
  }

  bool manualCheck() {
    return false;
  }

  String? stringValidation() {
    if (rule == 'required') if (["", null, false, 0].contains(input))
      return makeResponse('failure');
    else
      return makeResponse('success');
    if (ignoreEmptyInput! || input.toString().length != 0) {
      if (!["", null, false, 0].contains(input)) {
        if (manualCheck())
          return makeResponse('success');
        else if (regex != '' && regex != null) {
          if (validateRegEx(regex, input))
            return makeResponse('success');
          else
            return makeResponse('failure');
        } else
          return makeResponse('failure');
      } else
        return makeResponse('success');
    } else if (!ignoreEmptyInput!) {
      return makeResponse('failure');
    }
    return makeResponse('success');
  }

  bool boolValidation() {
    if (rule == 'required') if (["", null, false, 0].contains(input))
      return false;
    else
      return true;
    if (ignoreEmptyInput! || input.toString().length != 0) {
      if (!["", null, false, 0].contains(input)) {
        if (manualCheck())
          return true;
        else if (regex != '' && regex != null) {
          if (validateRegEx(regex, input)) {
            return true;
          } else
            return false;
        } else
          return false;
      } else
        return true;
    } else if (!ignoreEmptyInput!) {
      return false;
    } else
      return true;
  }

  String? makeResponse(status) {
    switch (status) {
      case 'success':
        return null;

      case 'failure':
        return setMessage();

      default:
        return null;
    }
  }
}
