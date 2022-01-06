
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part "EzFloatingActionButton.g.dart";

/// Note: overriding FloatingActionButton.heroTag is not supported.
class EzFloatingActionButton extends EzStatefulWidgetBase {
	@override
	EzFloatingActionButtonState createState() => EzFloatingActionButtonState();
}

@EzWidget()
class EzFloatingActionButtonState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("isDisabled") bool _$prop_isDisabled = false; // --> this._prop_isDisabled

	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("child") Widget? _$prop_child; // --> this._prop_child
	@EzProp("tooltip") late String? _$prop_tooltip; // --> this._prop_tooltip
	@EzProp("foregroundColor") late Color? _$prop_foregroundColor; // --> this._prop_foregroundColor
	@EzProp("backgroundColor") late Color? _$prop_backgroundColor; // --> this._prop_backgroundColor
	@EzProp("focusColor") late Color? _$prop_focusColor; // --> this._prop_focusColor
	@EzProp("hoverColor") late Color? _$prop_hoverColor; // --> this._prop_hoverColor
	@EzProp("splashColor") late Color? _$prop_splashColor; // --> this._prop_splashColor
	@EzProp("elevation") late double? _$prop_elevation; // --> this._prop_elevation
	@EzProp("focusElevation") late double? _$prop_focusElevation; // --> this._prop_focusElevation
	@EzProp("hoverElevation") late double? _$prop_hoverElevation; // --> this._prop_hoverElevation
	@EzProp("highlightElevation") late double? _$prop_highlightElevation; // --> this._prop_highlightElevation
	@EzProp("disabledElevation") late double? _$prop_disabledElevation; // --> this._prop_disabledElevation
	@EzProp("mouseCursor") late MouseCursor? _$prop_mouseCursor; // --> this._prop_mouseCursor
	@EzProp("mini") late bool _$prop_mini = false; // --> this._prop_mini
	@EzProp("shape") late ShapeBorder? _$prop_shape; // --> this._prop_shape
	@EzProp("clipBehavior") late Clip _$prop_clipBehavior = Clip.none; // --> this._prop_clipBehavior
	@EzProp("focusNode") FocusNode? _$prop_focusNode; // --> this._prop_focusNode
	@EzProp("autofocus") bool _$prop_autofocus = false; // --> this._prop_autofocus
	@EzProp("materialTapTargetSize") late MaterialTapTargetSize? _$prop_materialTapTargetSize; // --> this._prop_materialTapTargetSize
	@EzProp("isExtended") late bool _$prop_isExtended = false; // --> this._prop_isExtended
	@EzProp("enableFeedback") late bool? _$prop_enableFeedback; // --> this._prop_enableFeedback


	/* EVENT EMITTERS (4) **/
	@EzEmit("pressed") late void Function() _$emit_pressed; // --> this._emit_pressed


	/* ZML (8) **/
	static const _ZML = """
		<FloatingActionButton
			z-bind:onPressed="maybeOnPressed"
			
			z-bind:key="key"
			z-bind:child="child"
			z-bind:tooltip="tooltip"
			z-bind:foregroundColor="foregroundColor"
			z-bind:backgroundColor="backgroundColor"
			z-bind:focusColor="focusColor"
			z-bind:hoverColor="hoverColor"
			z-bind:splashColor="splashColor"
			z-bind:elevation="elevation"
			z-bind:focusElevation="focusElevation"
			z-bind:hoverElevation="hoverElevation"
			z-bind:highlightElevation="highlightElevation"
			z-bind:disabledElevation="disabledElevation"
			z-bind:mouseCursor="mouseCursor"
			z-bind:mini="mini"
			z-bind:shape="shape"
			z-bind:clipBehavior="clipBehavior"
			z-bind:focusNode="focusNode"
			z-bind:autofocus="autofocus"
			z-bind:materialTapTargetSize="materialTapTargetSize"
			z-bind:isExtended="isExtended"
			z-bind:enableFeedback="enableFeedback"			
		/>
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("maybeOnPressed")
	Function()? _computedMaybeOnPressed() {
		return (this._prop_isDisabled ? null : this._boundOnPressed);
	}


	/* BOUND METHODS (16) **/
	@EzMethod("onPressed")
	void _boundOnPressed() {
	    this._emit_pressed();
	}
}