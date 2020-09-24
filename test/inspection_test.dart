import 'package:flutter_test/flutter_test.dart';
import 'package:inspection/inspection.dart';

void main() {
  test('test a required string validation', () {
    final inspector = Inspection();
    expect(inspector.inspect('Hi , i\'m Farid Froozan from Iran', 'required|alpha|min:3'), '');
  });
}
