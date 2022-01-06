
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/EzSlider/EzSlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezflap/src/Service/EzflapTester/WidgetTesterExtension/WidgetTesterExtension.dart';

void main() {
	testWidgets("EzSlider - test general functionality", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzSlider(),
				mapProps: {
					"min": 0.0,
					"max": 10.0,
				},
			)
			..initModel<double>(value: 5.0)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(Slider);
		expect(input, findsOneWidget);
	});

	testWidgets("EzSlider - drag", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzSlider(),
				mapProps: {
					"min": 0.0,
					"max": 10.0,
				},
			)
			..initModel<double>(value: 5.0)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(Slider);
		expect(input, findsOneWidget);

		expect((ww.getModelValue<double>() * 100).round(), 500);
		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("changeStart"), 0);
		expect(ww.getNumEmits("changeEnd"), 0);
		await tester.drag(input, Offset(200, 0));

		expect((ww.getModelValue<double>() * 100).round(), 766);
		expect(ww.getNumEmits("changed"), 2);
		expect(ww.getNumEmits("changeStart"), 1);
		expect(ww.getNumEmits("changeEnd"), 1);
	});

	testWidgets("EzSlider - outside change", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzSlider(),
				mapProps: {
					"min": 0.0,
					"max": 10.0,
				},
			)
			..initModel<double>(value: 5.0)
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(Slider);
		expect(input, findsOneWidget);


		// drag; the slider won't actually move because it's already in the middle
		expect((ww.getModelValue<double>() * 100).round(), 500);
		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("changeStart"), 0);
		expect(ww.getNumEmits("changeEnd"), 0);
		await tester.drag(input, Offset(0, 0));

		expect((ww.getModelValue<double>() * 100).round(), 500);
		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("changeStart"), 1);
		expect(ww.getNumEmits("changeEnd"), 1);


		// move the slider to the left
		ww.setModelValue(1.0);
		await tester.pumpWithSeconds(1);
		expect((ww.getModelValue<double>() * 100).round(), 100);

		// drag again. the slider is now supposed to move
		expect(ww.getNumEmits("changed"), 0);
		await tester.drag(input, Offset(0, 0));
		expect((ww.getModelValue<double>() * 100).round(), 500);
		expect(ww.getNumEmits("changed"), 2); // not sure why this drag to the center registers as two changes...
		expect(ww.getNumEmits("changeStart"), 2);
		expect(ww.getNumEmits("changeEnd"), 2);
	});
}