
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/EzGestureDetector/EzGestureDetector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("EzGestureDetector - test instantiation", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzGestureDetector(),
				mapProps: {
					"child": Text("hello world"),
				},
				mapEmitHandlers: {
					"tapDown": (TapDownDetails details) {

					},
				},
			)
		;

		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		expect(ww.getNumEmits("tapDown"), 0);
		expect(ww.getNumEmits("tapUp"), 0);
		expect(ww.getNumEmits("tap"), 0);

		Finder input = find.text("hello world");
		await tester.tap(input);

		expect(ww.getNumEmits("tapDown"), 1);
		expect(ww.getNumEmits("tapUp"), 0);
		expect(ww.getNumEmits("tap"), 0);


		expect(input, findsOneWidget);
	});
}