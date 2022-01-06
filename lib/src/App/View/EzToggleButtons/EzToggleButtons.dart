
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part "EzToggleButtons.g.dart";

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#eztogglebuttons
///
/// Wraps ToggleButtons.
class EzToggleButtons extends EzStatefulWidgetBase {
	@override
	EzToggleButtonsState createState() => EzToggleButtonsState();
}

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#eztogglebuttons
///
/// Wraps ToggleButtons.
@EzWidget()
class EzToggleButtonsState extends _EzStateBase {
	/* MODELS (2) **/
	@EzOptionalModel() List<bool> _$model = [ ]; // --> this._model


	/* PROPS (3) **/
	@EzProp("isDisabled") bool _$prop_isDisabled = false; // --> this._prop_isDisabled

	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("children") late List<Widget> _$prop_children; // --> this._prop_children
	@EzProp("mouseCursor") MouseCursor? _$prop_mouseCursor; // --> this._prop_mouseCursor
	@EzProp("textStyle") TextStyle? _$prop_textStyle; // --> this._prop_textStyle
	@EzProp("constraints") BoxConstraints? _$prop_constraints; // --> this._prop_constraints
	@EzProp("color") Color? _$prop_color; // --> this._prop_color
	@EzProp("selectedColor") Color? _$prop_selectedColor; // --> this._prop_selectedColor
	@EzProp("disabledColor") Color? _$prop_disabledColor; // --> this._prop_disabledColor
	@EzProp("fillColor") Color? _$prop_fillColor; // --> this._prop_fillColor
	@EzProp("focusColor") Color? _$prop_focusColor; // --> this._prop_focusColor
	@EzProp("highlightColor") Color? _$prop_highlightColor; // --> this._prop_highlightColor
	@EzProp("hoverColor") Color? _$prop_hoverColor; // --> this._prop_hoverColor
	@EzProp("splashColor") Color? _$prop_splashColor; // --> this._prop_splashColor
	@EzProp("focusNodes") List<FocusNode>? _$prop_focusNodes; // --> this._prop_focusNodes
	@EzProp("renderBorder") bool _$prop_renderBorder = true; // --> this._prop_renderBorder
	@EzProp("borderColor") Color? _$prop_borderColor; // --> this._prop_borderColor
	@EzProp("selectedBorderColor") Color? _$prop_selectedBorderColor; // --> this._prop_selectedBorderColor
	@EzProp("disabledBorderColor") Color? _$prop_disabledBorderColor; // --> this._prop_disabledBorderColor
	@EzProp("borderRadius") BorderRadius? _$prop_borderRadius; // --> this._prop_borderRadius
	@EzProp("borderWidth") double? _$prop_borderWidth; // --> this._prop_borderWidth
	@EzProp("direction") Axis _$prop_direction = Axis.horizontal; // --> this._prop_direction
	@EzProp("verticalDirection") VerticalDirection _$prop_verticalDirection = VerticalDirection.down; // --> this._prop_verticalDirection


	/* EVENT EMITTERS (4) **/
	@EzEmit("pressed") late void Function(int idx) _$emit_pressed; // --> this._emit_pressed


	/* ZML (8) **/
	static const _ZML = """
		<ToggleButtons
			z-bind:key="key"
			z-bind:onPressed="maybeOnPressed"
			
			z-bind:isSelected="arrIsSelected"
			z-bind:children="children"
			z-bind:mouseCursor="mouseCursor"
			z-bind:textStyle="textStyle"
			z-bind:constraints="constraints"
			z-bind:color="color"
			z-bind:selectedColor="selectedColor"
			z-bind:disabledColor="disabledColor"
			z-bind:fillColor="fillColor"
			z-bind:focusColor="focusColor"
			z-bind:highlightColor="highlightColor"
			z-bind:hoverColor="hoverColor"
			z-bind:splashColor="splashColor"
			z-bind:focusNodes="focusNodes"
			z-bind:renderBorder="renderBorder"
			z-bind:borderColor="borderColor"
			z-bind:selectedBorderColor="selectedBorderColor"
			z-bind:disabledBorderColor="disabledBorderColor"
			z-bind:borderRadius="borderRadius"
			z-bind:borderWidth="borderWidth"
			z-bind:direction="direction"
			z-bind:verticalDirection="verticalDirection"
		/>
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("maybeOnPressed")
	Function(int)? _computedMaybeOnPressed() {
		return (this._prop_isDisabled ? null : this._boundOnPressed);
	}

	@EzComputed("arrIsSelected")
	List<bool> _computedArrIsSelected() {
		return this._model;
	}


	/* BOUND METHODS (16) **/
	@EzMethod("onPressed")
	void _boundOnPressed(int idx) {
		List<bool> arr = [ ...this._model ];
		arr[idx] = !arr[idx];
		this._model = arr;
	    this._emit_pressed(idx);
	}


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		int length = this._prop_children.length;

		if (!this._hasModel()) {
			this._model = List.filled(length, false);
		}

		assert(this._model.length == length, "the List<bool> in the z-model must be of the same length as the [children], which is [${length}]");
	}
}