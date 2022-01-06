
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/Button/EzElevatedButton/EzElevatedButton.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
	testWidgets("EzElevatedButton - test instantiation", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(
			EzElevatedButton(),
			mapProps: {
				"caption": "nihao shijie",
			},
		);

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("nihao shijie"), findsOneWidget);
	});

	testWidgets("EzElevatedButton - test child", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(
			EzElevatedButton(),
			mapProps: {
				"caption": "nihao shijie",
				"child": Text("hello world"),
			}
		);

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("hello world"), findsOneWidget);
	});

	testWidgets("EzElevatedButton - press and long-press", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(
			EzElevatedButton(),
			mapProps: {
				"caption": "nihao shijie",
			},
		);

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(ElevatedButton);
		expect(input, findsOneWidget);

		expect(ww.getNumEmits("pressed"), 0);
		expect(ww.getNumEmits("longPress"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 1);
		expect(ww.getNumEmits("longPress"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 2);
		expect(ww.getNumEmits("longPress"), 0);

		await tester.longPress(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 2);
		expect(ww.getNumEmits("longPress"), 1);
	});

	testWidgets("EzElevatedButton - (icon) test general functionality", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(
			EzElevatedButton(),
			mapProps: {
				"caption": "nihao shijie",
				"icon": Icon(Icons.arrow_circle_down),
			},
		);

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("nihao shijie"), findsOneWidget);
	});

	testWidgets("EzElevatedButton - (icon) test child", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(
			EzElevatedButton(),
			mapProps: {
				"caption": "nihao shijie",
				"child": Text("hello world"),
				"icon": Icon(Icons.arrow_circle_down),
			}
		);

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("hello world"), findsOneWidget);
	});

	testWidgets("EzElevatedButton - (icon) press and long-press", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(
			EzElevatedButton(),
			mapProps: {
				"caption": "nihao shijie",
				"icon": Icon(Icons.arrow_circle_down),
			},
		);

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(Icon);
		expect(input, findsOneWidget);

		expect(ww.getNumEmits("pressed"), 0);
		expect(ww.getNumEmits("longPress"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 1);
		expect(ww.getNumEmits("longPress"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 2);
		expect(ww.getNumEmits("longPress"), 0);

		await tester.longPress(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 2);
		expect(ww.getNumEmits("longPress"), 1);
	});
}