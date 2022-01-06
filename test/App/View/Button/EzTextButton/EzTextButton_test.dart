
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/Button/EzTextButton/EzTextButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("EzTextButton - test instantiation", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(
			EzTextButton(),
			mapProps: {
				"caption": "nihao shijie",
			},
		);

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("nihao shijie"), findsOneWidget);
	});

	testWidgets("EzTextButton - test child", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(
			EzTextButton(),
			mapProps: {
				"caption": "nihao shijie",
				"child": Text("hello world"),
			}
		);

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("hello world"), findsOneWidget);
	});

	testWidgets("EzTextButton - press and long-press", (WidgetTester tester) async {
		WidgetWrapper ww = WidgetWrapper(
			EzTextButton(),
			mapProps: {
				"caption": "nihao shijie",
			},
		);

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(TextButton);
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