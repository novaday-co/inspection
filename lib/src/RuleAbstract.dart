// Every rules must have these properties . even null or empty
abstract class RuleAbstract {
  String regex;
  String setMessage();
  dynamic customMessage();
}
