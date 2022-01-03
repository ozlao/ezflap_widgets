
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/TextInput/EzTextFormField/EzTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

	testWidgets("EzTextFormField - test validation", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzTextFormField(),
				mapProps: {
					"validator": (String? text) {
						if (text == "hello world") {
							return "error!!!";
						}
						return null;
					},
					"autovalidateMode": AutovalidateMode.onUserInteraction,
				},
			)
			..initModel<String>(value: "")
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(TextField);
		expect(input, findsOneWidget);
		expect(find.text("error!!!"), findsNothing);

		await tester.enterText(input, "hello world");
		await tester.pumpWithSeconds(1);
		expect(find.text("hello world"), findsOneWidget);
		expect(find.text("nihao shijie"), findsNothing);
		expect(find.text("error!!!"), findsOneWidget);

		await tester.enterText(input, "nihao shijie");
		await tester.pumpWithSeconds(1);
		expect(find.text("hello world"), findsNothing);
		expect(find.text("nihao shijie"), findsOneWidget);
		expect(find.text("error!!!"), findsNothing);

		await tester.enterText(input, "hello world");
		await tester.pumpWithSeconds(1);
		expect(find.text("hello world"), findsOneWidget);
		expect(find.text("nihao shijie"), findsNothing);
		expect(find.text("error!!!"), findsOneWidget);
	});



	/// ////////////////////////////////////
	///
	/// COPIED FROM EzTextField_test.dart
	///
	/// ////////////////////////////////////
	testWidgets("EzTextFormField - test instantiation", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzTextFormField(),
				mapProps: {

				},
			)
			..initModel<String>(value: "")
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(TextField);
		expect(input, findsOneWidget);
	});

	testWidgets("EzTextFormField - test type String", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzTextFormField(),
				mapProps: {

				},
			)
			..initModel<String>(value: "")
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(ww.getModelValue(), "");

		Finder input = find.byType(TextField);
		expect(input, findsOneWidget);
		await tester.enterText(input, "hello world");
		expect(ww.getModelValue(), "hello world");
	});

	testWidgets("EzTextFormField - test type int", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzTextFormField(),
				mapProps: {

				},
			)
			..initModel<int?>(value: 0)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(ww.getModelValue(), 0);

		Finder input = find.byType(TextField);
		expect(input, findsOneWidget);
		await tester.enterText(input, "42");
		expect(ww.getModelValue(), 42);
		await tester.enterText(input, "43");
		expect(ww.getModelValue(), 43);

		await tester.enterText(input, "abcd");
		expect(ww.getModelValue(), null);
	});

	testWidgets("EzTextFormField - test type double", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzTextFormField(),
				mapProps: {

				},
			)
			..initModel<double?>(value: 0.1)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(ww.getModelValue(), 0.1);

		Finder input = find.byType(TextField);
		expect(input, findsOneWidget);
		await tester.enterText(input, "42.2");
		expect(ww.getModelValue(), 42.2);
		await tester.enterText(input, "43.3");
		expect(ww.getModelValue(), 43.3);

		await tester.enterText(input, "abcd");
		expect(ww.getModelValue(), null);
	});

	testWidgets("EzTextFormField - test type num", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzTextFormField(),
				mapProps: {

				},
			)
			..initModel<num?>(value: 0.1)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(ww.getModelValue(), 0.1);

		Finder input = find.byType(TextField);
		expect(input, findsOneWidget);
		await tester.enterText(input, "42.2");
		expect(ww.getModelValue(), 42.2);
		await tester.enterText(input, "43");
		expect(ww.getModelValue(), 43);

		await tester.enterText(input, "abcd");
		expect(ww.getModelValue(), null);
	});

	testWidgets("EzTextFormField - test emit [changed]", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzTextFormField(),
				mapProps: {

				},
			)
			..initModel<String>(value: "")
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("tap"), 0);

		Finder input = find.byType(TextField);
		await tester.enterText(input, "hello world");
		expect(ww.getNumEmits("changed"), 1);

		await tester.enterText(input, "hello world 2");
		expect(ww.getNumEmits("changed"), 2);

		await tester.enterText(input, "hello world");
		expect(ww.getNumEmits("changed"), 3);

		await tester.enterText(input, "hello world");
		expect(ww.getNumEmits("changed"), 3);

		expect(ww.getNumEmits("tap"), 0);
	});

	testWidgets("EzTextFormField - test emit [tap]", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzTextFormField(),
				mapProps: {

				},
			)
			..initModel<String>(value: "")
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("tap"), 0);

		Finder input = find.byType(TextField);
		await tester.pumpWithSeconds(1);
		await tester.tap(input);
		expect(ww.getNumEmits("tap"), 1);

		await tester.pumpWithSeconds(1);
		await tester.tap(input);
		expect(ww.getNumEmits("tap"), 2);

		await tester.pumpWithSeconds(1);
		await tester.tap(input);
		expect(ww.getNumEmits("tap"), 3);

		expect(ww.getNumEmits("changed"), 0);
	});

	testWidgets("EzTextFormField - test outside values - String", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextFormField())
			..initModel<String>(value: "hello")
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);
		expect(find.byType(TextField), findsOneWidget);
		expect(ww.getModelValue(), "hello");
		expect(find.text("hello"), findsOneWidget);

		ww.setModelValue("world");
		await tester.pumpWithSeconds(1);
		expect(ww.getModelValue(), "world");
		expect(find.text("hello"), findsNothing);
		expect(find.text("world"), findsOneWidget);
	});

	testWidgets("EzTextFormField - test outside values - int", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextFormField())
			..initModel<int?>(value: 88)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);
		expect(find.byType(TextField), findsOneWidget);
		expect(ww.getModelValue(), 88);
		expect(find.text("88"), findsOneWidget);

		ww.setModelValue(99);
		await tester.pumpWithSeconds(1);
		expect(ww.getModelValue(), 99);
		expect(find.text("88"), findsNothing);
		expect(find.text("99"), findsOneWidget);

		ww.setModelValue(null);
		await tester.pumpWithSeconds(1);
		expect(ww.getModelValue(), null);
		expect(find.text("88"), findsNothing);
		expect(find.text("99"), findsNothing);
	});
}