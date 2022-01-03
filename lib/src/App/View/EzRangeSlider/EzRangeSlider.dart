
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part "EzRangeSlider.g.dart";

class EzRangeSlider extends EzStatefulWidgetBase {
	@override
	EzRangeSliderState createState() => EzRangeSliderState();
}

@EzWidget()
class EzRangeSliderState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel() late RangeValues _$model; // --> this._model


	/* PROPS (3) **/
	@EzProp("isDisabled") bool _$prop_isDisabled = false; // --> this._prop_isDisabled

	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("min") double _$prop_min = 0.0; // --> this._prop_min
	@EzProp("max") double _$prop_max = 1.0; // --> this._prop_max
	@EzProp("divisions") int? _$prop_divisions; // --> this._prop_divisions
	@EzProp("labels") RangeLabels? _$prop_labels; // --> this._prop_labels
	@EzProp("activeColor") Color? _$prop_activeColor; // --> this._prop_activeColor
	@EzProp("inactiveColor") Color? _$prop_inactiveColor; // --> this._prop_inactiveColor
	@EzProp("semanticFormatterCallback") SemanticFormatterCallback? _$prop_semanticFormatterCallback; // --> this._prop_semanticFormatterCallback


	/* EVENT EMITTERS (4) **/
	@EzEmit("changed") late void Function(RangeValues values) _$emit_changed; // --> this._emit_changed
	@EzEmit("changeStart") late void Function(RangeValues values) _$emit_changeStart; // --> this._emit_changeStart
	@EzEmit("changeEnd") late void Function(RangeValues values) _$emit_changeEnd; // --> this._emit_changeEnd


	/* ZML (8) **/
	static const _ZML = """
		<RangeSlider
			z-bind:values="model"
			z-bind:onChanged="maybeOnChanged"
			z-bind:onChangeStart="onChangeStart"
			z-bind:onChangeEnd="onChangeEnd"
			
			z-bind:key="key"
			z-bind:min="min"
			z-bind:max="max"
			z-bind:divisions="divisions"
			z-bind:labels="labels"
			z-bind:activeColor="activeColor"
			z-bind:inactiveColor="inactiveColor"
			z-bind:semanticFormatterCallback="semanticFormatterCallback"
		/>
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("maybeOnChanged")
	Function(RangeValues)? _computedMaybeOnChanged() {
		return (this._prop_isDisabled ? null : this._boundOnChanged);
	}


	/* BOUND METHODS (16) **/
	@EzMethod("onChanged")
	void _boundOnChanged(RangeValues values) {
	    this._model = values;
	    this._emit_changed(values);
	}
	
	@EzMethod("onChangeStart")
	void _boundOnChangeStart(RangeValues values) {
	    this._emit_changeStart(values);
	}
	
	@EzMethod("onChangeEnd")
	void _boundOnChangeEnd(RangeValues values) {
	    this._emit_changeEnd(values);
	}
}