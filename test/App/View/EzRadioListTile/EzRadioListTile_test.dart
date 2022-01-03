
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/EzRadioListTile/EzRadioListTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
	testWidgets("EzRadioListTile - test general functionality", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzRadioListTile(),
				mapProps: {
					"caption": "nihao shijie",
					"value": "val1",
				},
			)
			..initModel<String>(value: "val1")
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("nihao shijie"), findsOneWidget);
	});

	testWidgets("EzRadioListTile - test title", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzRadioListTile(),
				mapProps: {
					"caption": "nihao shijie",
					"value": "val1",
					"title": Text("hello world"),
				}
			)
			..initModel<String>(value: "val1")
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("hello world"), findsOneWidget);
	});

	testWidgets("EzRadioListTile - tick", (WidgetTester tester) async {
		WidgetWrapper ww1 =
			WidgetWrapper(
				EzRadioListTile(),
				mapProps: {
					"caption": "Radio 1",
					"value": "val1",
				}
			)
		;

		Rx<String> model = ww1.initModel<String>(value: "val1");

		WidgetWrapper ww2 =
			WidgetWrapper(
				EzRadioListTile(),
				mapProps: {
					"caption": "Radio 2",
					"value": "val2",
				}
			)
			..initModelWithRx<String>(existingModel: model)
		;

		WidgetWrapper ww3 =
			WidgetWrapper(
				EzRadioListTile(),
				mapProps: {
					"caption": "Radio 3",
					"value": "val3",
				}
			)
			..initModelWithRx<String>(existingModel: model)
		;

		await tester.pumpWidgetIntoScaffold(Column(children: [ ww1.widget, ww2.widget, ww3.widget ]));
		await tester.pumpWithSeconds(1);

		Finder input1 = find.byType(RadioListTile).at(0);
		expect(input1, findsOneWidget);

		Finder input2 = find.byType(RadioListTile).at(1);
		expect(input2, findsOneWidget);

		Finder input3 = find.byType(RadioListTile).at(2);
		expect(input3, findsOneWidget);

		expect(model.value, "val1");

		await tester.tap(input1);
		await tester.pumpWithSeconds(1);
		expect(model.value, "val1");

		await tester.tap(input2);
		await tester.pumpWithSeconds(1);
		expect(model.value, "val2");

		await tester.tap(input3);
		await tester.pumpWithSeconds(1);
		expect(model.value, "val3");

		await tester.tap(input1);
		await tester.pumpWithSeconds(1);
		expect(model.value, "val1");
	});

	testWidgets("EzRadioListTile - test emit [changed]", (WidgetTester tester) async {
		WidgetWrapper ww1 =
			WidgetWrapper(
				EzRadioListTile(),
				mapProps: {
					"caption": "Radio 1",
					"value": "val1",
				}
			)
		;

		Rx<String> model = ww1.initModel<String>(value: "val1");

		WidgetWrapper ww2 =
			WidgetWrapper(
				EzRadioListTile(),
				mapProps: {
					"caption": "Radio 2",
					"value": "val2",
				}
			)
			..initModelWithRx<String>(existingModel: model)
		;

		WidgetWrapper ww3 =
			WidgetWrapper(
				EzRadioListTile(),
				mapProps: {
					"caption": "Radio 3",
					"value": "val3",
				}
			)
			..initModelWithRx<String>(existingModel: model)
		;

		await tester.pumpWidgetIntoScaffold(Column(children: [ ww1.widget, ww2.widget, ww3.widget ]));
		await tester.pumpWithSeconds(1);

		Finder input1 = find.byType(RadioListTile).at(0);
		expect(input1, findsOneWidget);

		Finder input2 = find.byType(RadioListTile).at(1);
		expect(input2, findsOneWidget);

		Finder input3 = find.byType(RadioListTile).at(2);
		expect(input3, findsOneWidget);

		expect(model.value, "val1");
		expect(ww1.getNumEmits("changed"), 0);
		expect(ww2.getNumEmits("changed"), 0);
		expect(ww3.getNumEmits("changed"), 0);

		await tester.tap(input1);
		await tester.pumpWithSeconds(1);
		expect(model.value, "val1");
		expect(ww1.getNumEmits("changed"), 0);
		expect(ww2.getNumEmits("changed"), 0);
		expect(ww3.getNumEmits("changed"), 0);

		await tester.tap(input2);
		await tester.pumpWithSeconds(1);
		expect(model.value, "val2");
		expect(ww1.getNumEmits("changed"), 0);
		expect(ww2.getNumEmits("changed"), 1);
		expect(ww3.getNumEmits("changed"), 0);

		await tester.tap(input3);
		await tester.pumpWithSeconds(1);
		expect(model.value, "val3");
		expect(ww1.getNumEmits("changed"), 0);
		expect(ww2.getNumEmits("changed"), 1);
		expect(ww3.getNumEmits("changed"), 1);

		await tester.tap(input1);
		await tester.pumpWithSeconds(1);
		expect(model.value, "val1");
		expect(ww1.getNumEmits("changed"), 1);
		expect(ww2.getNumEmits("changed"), 1);
		expect(ww3.getNumEmits("changed"), 1);
	});
}