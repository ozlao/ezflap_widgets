
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part "EzSlider.g.dart";

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#ezslider
///
/// Wraps Slider.
class EzSlider extends EzStatefulWidgetBase {
	@override
	EzSliderState createState() => EzSliderState();
}

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#ezslider
///
/// Wraps Slider.
@EzWidget()
class EzSliderState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel() late double _$model; // --> this._model


	/* PROPS (3) **/
	@EzProp("isDisabled") bool _$prop_isDisabled = false; // --> this._prop_isDisabled

	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("min") double _$prop_min = 0.0; // --> this._prop_min
	@EzProp("max") double _$prop_max = 1.0; // --> this._prop_max
	@EzProp("divisions") int? _$prop_divisions; // --> this._prop_divisions
	@EzProp("label") String? _$prop_label; // --> this._prop_label
	@EzProp("activeColor") Color? _$prop_activeColor; // --> this._prop_activeColor
	@EzProp("inactiveColor") Color? _$prop_inactiveColor; // --> this._prop_inactiveColor
	@EzProp("thumbColor") Color? _$prop_thumbColor; // --> this._prop_thumbColor
	@EzProp("mouseCursor") MouseCursor? _$prop_mouseCursor; // --> this._prop_mouseCursor
	@EzProp("semanticFormatterCallback") SemanticFormatterCallback? _$prop_semanticFormatterCallback; // --> this._prop_semanticFormatterCallback
	@EzProp("focusNode") FocusNode? _$prop_focusNode; // --> this._prop_focusNode
	@EzProp("autofocus") bool _$prop_autofocus = false; // --> this._prop_autofocus


	/* EVENT EMITTERS (4) **/
	@EzEmit("changed") late void Function(double value) _$emit_changed; // --> this._emit_changed
	@EzEmit("changeStart") late void Function(double value) _$emit_changeStart; // --> this._emit_changeStart
	@EzEmit("changeEnd") late void Function(double value) _$emit_changeEnd; // --> this._emit_changeEnd


	/* ZML (8) **/
	static const _ZML = """
		<Slider
			z-bind:value="model"
			z-bind:onChanged="maybeOnChanged"
			z-bind:onChangeStart="onChangeStart"
			z-bind:onChangeEnd="onChangeEnd"
			
			z-bind:key="key"
			z-bind:min="min"
			z-bind:max="max"
			z-bind:divisions="divisions"
			z-bind:label="label"
			z-bind:activeColor="activeColor"
			z-bind:inactiveColor="inactiveColor"
			z-bind:thumbColor="thumbColor"
			z-bind:mouseCursor="mouseCursor"
			z-bind:semanticFormatterCallback="semanticFormatterCallback"
			z-bind:focusNode="focusNode"
			z-bind:autofocus="autofocus"
		/>
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("maybeOnChanged")
	Function(double)? _computedMaybeOnChanged() {
		return (this._prop_isDisabled ? null : this._boundOnChanged);
	}


	/* BOUND METHODS (16) **/
	@EzMethod("onChanged")
	void _boundOnChanged(double value) {
	    this._model = value;
	    this._emit_changed(value);
	}
	
	@EzMethod("onChangeStart")
	void _boundOnChangeStart(double value) {
	    this._emit_changeStart(value);
	}
	
	@EzMethod("onChangeEnd")
	void _boundOnChangeEnd(double value) {
	    this._emit_changeEnd(value);
	}
}