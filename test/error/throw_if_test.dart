import 'package:flutter_test/flutter_test.dart';
import 'package:supercharged/supercharged.dart';

void main() {
  test("error throwIf", () {
    int n = 3;
    expect(() => throwIf(n > 0, () => ArgumentError()), throwsArgumentError);
    throwIf(n == null, () => ArgumentError()); // no error
  });

  test("error throwIfNot", () {
    int n = 3;

    expect(
        () => throwIfNot(n > 10, () => ArgumentError()), throwsArgumentError);
    throwIfNot(n == 3, () => ArgumentError()); // no error
  });
}
