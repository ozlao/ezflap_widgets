
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/TextInput/EzTextField/EzTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
	testWidgets("EzTextField - test instantiation", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextField())
			..initModel<String>(value: "")
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(TextField);
		expect(input, findsOneWidget);
	});

	testWidgets("EzTextField - test type String", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextField())
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

	testWidgets("EzTextField - test type int", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextField())
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

	testWidgets("EzTextField - test type double", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextField())
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

	testWidgets("EzTextField - test type num", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextField())
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

	testWidgets("EzTextField - test emit [changed]", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextField())
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

	testWidgets("EzTextField - test emit [tap]", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextField())
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

	testWidgets("EzTextField - test outside values - String", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextField())
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

	testWidgets("EzTextField - test outside values - int", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(EzTextField())
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