
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/EzFloatingActionButton/EzFloatingActionButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
	testWidgets("EzFloatingActionButton - test instantiation", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzFloatingActionButton(),
				mapProps: {
					"child": Icon(Icons.arrow_circle_down),
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.byType(FloatingActionButton), findsOneWidget);
	});

	testWidgets("EzFloatingActionButton - press", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzFloatingActionButton(),
				mapProps: {
					"child": Icon(Icons.arrow_circle_down),
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(FloatingActionButton);
		expect(input, findsOneWidget);

		expect(ww.getNumEmits("pressed"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 1);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 2);
	});

	testWidgets("EzFloatingActionButton - disabled", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzFloatingActionButton(),
				mapProps: {
					"isDisabled": true,
					"child": Icon(Icons.arrow_circle_down),
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(FloatingActionButton);
		expect(input, findsOneWidget);

		expect(ww.getNumEmits("pressed"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 0);
	});
}