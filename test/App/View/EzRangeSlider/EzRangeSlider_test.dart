
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/EzRangeSlider/EzRangeSlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
	testWidgets("EzRangeSlider - test general functionality", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzRangeSlider(),
				mapProps: {
					"min": 0.0,
					"max": 10.0,
				},
			)
			..initModel<RangeValues>(value: RangeValues(4.0, 6.0))
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(RangeSlider);
		expect(input, findsOneWidget);
	});

	testWidgets("EzRangeSlider - drag", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzRangeSlider(),
				mapProps: {
					"min": 0.0,
					"max": 10.0,
				},
			)
			..initModel<RangeValues>(value: RangeValues(5.0, 8.0))
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(RangeSlider);
		expect(input, findsOneWidget);

		expect((ww.getModelValue<RangeValues>().start * 100).round(), 500);
		expect((ww.getModelValue<RangeValues>().end * 100).round(), 800);
		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("changeStart"), 0);
		expect(ww.getNumEmits("changeEnd"), 0);
		await tester.drag(input, Offset(200, 0));

		expect((ww.getModelValue<RangeValues>().start * 100).round(), 766);
		expect((ww.getModelValue<RangeValues>().end * 100).round(), 800);
		expect(ww.getNumEmits("changed"), 2);
		expect(ww.getNumEmits("changeStart"), 1);
		expect(ww.getNumEmits("changeEnd"), 1);
	});

	testWidgets("EzRangeSlider - outside change", (WidgetTester tester) async {
		WidgetWrapper ww =
			WidgetWrapper(
				EzRangeSlider(),
				mapProps: {
					"min": 0.0,
					"max": 10.0,
				},
			)
			..initModel<RangeValues>(value: RangeValues(5.0, 8.0))
		;
		await tester.pumpWidgetIntoScaffold(ww.widget);
		await tester.pumpWithSeconds(1);

		Finder input = find.byType(RangeSlider);
		expect(input, findsOneWidget);


		// drag; the slider won't actually move because it's already in the middle
		expect((ww.getModelValue<RangeValues>().start * 100).round(), 500);
		expect((ww.getModelValue<RangeValues>().end * 100).round(), 800);
		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("changeStart"), 0);
		expect(ww.getNumEmits("changeEnd"), 0);
		await tester.drag(input, Offset(0, 0));

		expect((ww.getModelValue<RangeValues>().start * 100).round(), 500);
		expect((ww.getModelValue<RangeValues>().end * 100).round(), 800);
		expect(ww.getNumEmits("changed"), 0);
		expect(ww.getNumEmits("changeStart"), 1);
		expect(ww.getNumEmits("changeEnd"), 1);


		// note: unlike Slider, it seems that RangeSlider doesn't react when
		//       tapping in the middle without actually dragging, even when the
		//       sliders are away. so we won't test this part.
	});
}