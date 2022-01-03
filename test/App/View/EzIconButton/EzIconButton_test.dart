
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/EzIconButton/EzIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
	testWidgets("EzIconButton - test instantiation", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzIconButton(),
				mapProps: {
					"icon": Icon(Icons.arrow_circle_down),
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.byType(Icon), findsOneWidget);
	});

	testWidgets("EzIconButton - press", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzIconButton(),
				mapProps: {
					"icon": Icon(Icons.arrow_circle_down),
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(Icon);
		expect(input, findsOneWidget);

		expect(ww.getNumEmits("pressed"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 1);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 2);
	});

	testWidgets("EzIconButton - disabled", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzIconButton(),
				mapProps: {
					"icon": Icon(Icons.arrow_circle_down),
					"isDisabled": true,
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(Icon);
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