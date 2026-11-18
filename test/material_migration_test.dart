import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_z/form_builder_z.dart';
import 'package:material_ui/material_ui.dart';

import 'form_widget_test.dart' show TestFormWidget, host;
import 'formatted_fields_test.dart' show FormattedForm;

void main() {
  testWidgets(
    'date picker uses the Material UI host and preserves cancellation',
    (tester) async {
      final date = DateTime(2026, 10, 2);
      final form = FormattedForm([
        InputEntity<DateTime>.pure(field: 'date', value: date),
      ]);
      await tester.pumpWidget(
        host(
          TestFormWidget(
            form: form,
            declarations: [
              Field.date(
                'date',
                firstDate: DateTime(2026),
                lastDate: DateTime(2027),
              ),
            ],
          ),
        ),
      );

      await tester.tap(find.byKey(const ValueKey('date')));
      await tester.pumpAndSettle();
      expect(find.byType(DatePickerDialog), findsOneWidget);
      await tester.tap(find.text('Cancel'));
      await tester.pumpAndSettle();
      expect(find.byType(DatePickerDialog), findsNothing);
      expect(form.values['date'], date);
    },
  );

  testWidgets('date range picker uses Material UI range values', (
    tester,
  ) async {
    final range = DateTimeRange(
      start: DateTime(2026, 10, 2),
      end: DateTime(2026, 10, 4),
    );
    final form = FormattedForm([
      InputEntity<DateTimeRange>.pure(field: 'range', value: range),
    ]);
    await tester.pumpWidget(
      host(
        TestFormWidget(
          form: form,
          declarations: [
            Field.dateRange(
              'range',
              firstDate: DateTime(2026),
              lastDate: DateTime(2027),
            ),
          ],
        ),
      ),
    );

    await tester.tap(find.byKey(const ValueKey('range')));
    await tester.pumpAndSettle();
    expect(find.byType(DateRangePickerDialog), findsOneWidget);
    await tester.tap(find.byTooltip('Close'));
    await tester.pumpAndSettle();
    expect(find.byType(DateRangePickerDialog), findsNothing);
    expect(form.values['range'], range);
    expect(form.saves, 0);
  });
}
