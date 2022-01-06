
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/EzCheckboxListTile/EzCheckboxListTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
	testWidgets("EzCheckboxListTile - test general functionality", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzCheckboxListTile(),
				mapProps: {
					"caption": "nihao shijie",
				},
			)
			..initModel<bool?>(value: false)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("nihao shijie"), findsOneWidget);
	});

	testWidgets("EzCheckboxListTile - test title", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzCheckboxListTile(),
				mapProps: {
					"caption": "nihao shijie",
					"title": Text("hello world"),
				}
			)
			..initModel<bool?>(value: false)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("hello world"), findsOneWidget);
	});

	testWidgets("EzCheckboxListTile - tick", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzCheckboxListTile(),
				mapProps: {
					"caption": "nihao shijie",
					"title": Text("hello world"),
				},
			)
			..initModel<bool?>(value: false)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(CheckboxListTile);
		expect(input, findsOneWidget);

		expect(ww.getModelValue(), false);

		await tester.tap(input);
		expect(ww.getModelValue(), true);

		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getModelValue(), false);

		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getModelValue(), true);

		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getModelValue(), false);

		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getModelValue(), true);

		ww.setModelValue<bool?>(true);
		expect(ww.getModelValue(), true);

		ww.setModelValue<bool?>(true);
		expect(ww.getModelValue(), true);

		ww.setModelValue<bool?>(false);
		expect(ww.getModelValue(), false);
		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getModelValue(), true);

		ww.setModelValue<bool?>(false);
		expect(ww.getModelValue(), false);
		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getModelValue(), true);

		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getModelValue(), false);
	});

	testWidgets("EzCheckboxListTile - update model from outside", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzCheckboxListTile(),
				mapProps: {
					"caption": "nihao shijie",
					"title": Text("hello world"),
				},
			)
			..initModel<bool?>(value: false)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(CheckboxListTile);
		expect(input, findsOneWidget);

		expect(ww.getModelValue(), false);

		await tester.tap(input);
		expect(ww.getModelValue(), true);

		ww.setModelValue<bool?>(true);
		expect(ww.getModelValue(), true);

		ww.setModelValue<bool?>(true);
		expect(ww.getModelValue(), true);

		ww.setModelValue<bool?>(false);
		expect(ww.getModelValue(), false);
		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getModelValue(), true);

		ww.setModelValue<bool?>(false);
		expect(ww.getModelValue(), false);
		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getModelValue(), true);

		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getModelValue(), false);
	});

	testWidgets("EzCheckboxListTile - test emit [changed]", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzCheckboxListTile(),
				mapProps: {
					"caption": "nihao shijie",
					"title": Text("hello world"),
				},
			)
			..initModel<bool?>(value: false)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(ww.getNumEmits("changed"), 0);

		Finder input = find.byType(CheckboxListTile);
		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getNumEmits("changed"), 1);

		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getNumEmits("changed"), 2);

		await tester.pumpTick();
		await tester.tap(input);
		expect(ww.getNumEmits("changed"), 3);

		expect(ww.getModelValue(), true);

		ww.setModelValue<bool?>(false);
		expect(ww.getModelValue(), false);
		expect(ww.getNumEmits("changed"), 3);
	});
}