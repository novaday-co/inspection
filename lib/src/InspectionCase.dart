// Structure of what we want to validate in our inspector
class InspectionCase {
  dynamic input;
  dynamic rule = '';
  String name = '';
  String message = '';
  String locale = 'en';

  InspectionCase(input, rule, name, message, locale) {
    this.input = input;
    this.rule = rule;
    this.name = name;
    this.message = message;
    this.locale = locale ?? 'en';
  }
}
