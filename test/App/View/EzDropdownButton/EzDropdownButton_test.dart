
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/EzDropdownButton/EzDropdownButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("EzDropdownButton - general functionality", (WidgetTester tester) async {
		WidgetWrapper ww = await _prepareWidgetWrapper(tester);
		expect(find.byType(DropdownButton), findsOneWidget);
		expect(find.text("item 1"), findsOneWidget);
		expect(find.text("item 2"), findsOneWidget);
		expect(find.text("item 3"), findsOneWidget);
	});

	testWidgets("EzDropdownButton - tap", (WidgetTester tester) async {
		WidgetWrapper ww = await _prepareWidgetWrapper(tester);

		await tester.pumpWithSeconds(1);

		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("tap"), 0);

		await tester.tap(find.byType(DropdownButton));
		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("tap"), 1);
	});

	testWidgets("EzDropdownButton - select", (WidgetTester tester) async {
		WidgetWrapper ww = await _prepareWidgetWrapper(tester);

		await tester.pumpWithSeconds(1);

		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("tap"), 0);
		expect(ww.getModelValue(), null);

		await tester.tap(find.byType(DropdownButton));
		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("tap"), 1);
		await tester.pumpWithSeconds(1);
		expect(ww.getModelValue(), null);

		await tester.tap(find.byType(Text).at(3));
		expect(ww.getNumEmits("changed"), 1);
		expect(ww.getNumEmits("tap"), 1);
		await tester.pumpWithSeconds(1);
		expect(ww.getModelValue(), 42);

		await tester.tap(find.byType(DropdownButton));
		expect(ww.getNumEmits("changed"), 1);
		expect(ww.getNumEmits("tap"), 2);
		await tester.pumpWithSeconds(1);
		expect(ww.getModelValue(), 42);

		await tester.tap(find.byType(Text).at(4));
		expect(ww.getNumEmits("changed"), 2);
		expect(ww.getNumEmits("tap"), 2);
		expect(ww.getModelValue(), 88);
	});
}

Future<WidgetWrapper> _prepareWidgetWrapper(WidgetTester tester) async {
	WidgetWrapper ww =
		WidgetWrapper(
			EzDropdownButton(),
			mapProps: {
				"children": [
					DropdownMenuItem(child: Text("item 1"), value: 42),
					DropdownMenuItem(child: Text("item 2"), value: 88),
					DropdownMenuItem(child: Text("item 3"), value: 128),
				],
			},
		)
		..initModel<int?>(value: null)
	;

	await tester.pumpWidgetIntoScaffold(ww.widget);
	return ww;
}
