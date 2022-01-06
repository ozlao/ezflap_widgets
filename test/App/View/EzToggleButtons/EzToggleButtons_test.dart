
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/EzToggleButtons/EzToggleButtons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("EzToggleButtons - test general functionality", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzToggleButtons(),
				mapProps: {
					"children": [
						Text("button 1"),
						Text("button 2"),
						Text("button 3"),
					],
				},
			)
			..initModel<List<bool>>(value: [ ])
			..setModelValue([ false, false, false ])
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("button 1"), findsOneWidget);
		expect(find.text("button 2"), findsOneWidget);
		expect(find.text("button 3"), findsOneWidget);
	});

	testWidgets("EzToggleButtons - test press", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzToggleButtons(),
				mapProps: {
					"children": [
						Text("button 1"),
						Text("button 2"),
						Text("button 3"),
					],
				},
			)
			..initModel<List<bool>>(value: [ ])
			..setModelValue([ false, false, false ])
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(find.text("button 1"), findsOneWidget);
		expect(find.text("button 2"), findsOneWidget);
		expect(find.text("button 3"), findsOneWidget);
		expect(ww.getNumEmits("pressed"), 0);
		expect(ww.getModelValue(), [ false, false, false ]);

		await tester.tap(find.text("button 1"));
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 1);
		expect(ww.getModelValue(), [ true, false, false ]);

		await tester.tap(find.text("button 2"));
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 2);
		expect(ww.getModelValue(), [ true, true, false ]);

		await tester.tap(find.text("button 3"));
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 3);
		expect(ww.getModelValue(), [ true, true, true ]);

		await tester.tap(find.text("button 1"));
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 4);
		expect(ww.getModelValue(), [ false, true, true ]);

		ww.setModelValue([ true, false, false ]);
		await tester.pumpWithSeconds(1);

		await tester.tap(find.text("button 2"));
		await tester.pumpWithSeconds(1);
		expect(ww.getNumEmits("pressed"), 5);
		expect(ww.getModelValue(), [ true, true, false ]);
	});
}