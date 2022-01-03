
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/EzListTile/EzListTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
	testWidgets("EzListTile - test instantiation", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzListTile(),
				mapProps: {
					"title": Text("hello world"),
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("hello world"), findsOneWidget);
	});

	testWidgets("EzListTile - tap", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzListTile(),
				mapProps: {
					"title": Text("hello world"),
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.text("hello world");
		expect(input, findsOneWidget);

		expect(ww.getNumEmits("tap"), 0);
		expect(ww.getNumEmits("longPress"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("tap"), 1);
		expect(ww.getNumEmits("longPress"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("tap"), 2);
		expect(ww.getNumEmits("longPress"), 0);
	});

	testWidgets("EzListTile - long-press", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzListTile(),
				mapProps: {
					"title": Text("hello world"),
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.text("hello world");
		expect(input, findsOneWidget);

		expect(ww.getNumEmits("longPress"), 0);
		expect(ww.getNumEmits("tap"), 0);

		await tester.longPress(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("longPress"), 1);
		expect(ww.getNumEmits("tap"), 0);

		await tester.longPress(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("longPress"), 2);
		expect(ww.getNumEmits("tap"), 0);
	});

	testWidgets("EzListTile - disabled", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzListTile(),
				mapProps: {
					"title": Text("hello world"),
					"enabled": false,
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.text("hello world");
		expect(input, findsOneWidget);

		expect(ww.getNumEmits("tap"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("tap"), 0);

		await tester.tap(input);
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("tap"), 0);
	});
}