import 'package:djangoflow_scrollable_column/djangoflow_scrollable_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DjangoflowScrollableColumn tests', () {
    Widget getNumberedContainer(int number) => SizedBox(
          key: ValueKey(number),
          height: 100,
          child: Center(
            child: Text(
              number.toString(),
              style: const TextStyle(fontSize: 30),
            ),
          ),
        );

    Widget getTestWidget(List<Widget> children) {
      return MaterialApp(
        home: Scaffold(
          body: DjangoflowScrollableColumn(
            children: children,
          ),
        ),
      );
    }

    testWidgets(
      'Widget is rendered without errors',
      (widgetTester) async {
        await widgetTester.pumpWidget(
          getTestWidget(
            [getNumberedContainer(1)],
          ),
        );

        expect(find.byKey(const ValueKey(1)), findsOneWidget);
      },
    );

    testWidgets(
      'Widget is scrollable when multiple items are used',
      (widgetTester) async {
        await widgetTester.pumpWidget(
          getTestWidget(
            List.generate(
              100,
              (index) => getNumberedContainer(index),
            ),
          ),
        );

        expect(find.byKey(const ValueKey(99)).hitTestable(), findsNothing);

        await widgetTester.scrollUntilVisible(find.text('99'), 100);
        await widgetTester.pumpAndSettle();
        expect(find.byKey(const ValueKey(99)).hitTestable(), findsOneWidget);
      },
    );
  });
}
