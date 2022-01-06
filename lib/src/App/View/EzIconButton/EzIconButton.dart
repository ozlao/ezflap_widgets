
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part "EzIconButton.g.dart";

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#eziconbutton
///
/// Wraps IconButton.
class EzIconButton extends EzStatefulWidgetBase {
	@override
	EzIconButtonState createState() => EzIconButtonState();
}

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#eziconbutton
///
/// Wraps IconButton.
@EzWidget()
class EzIconButtonState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("isDisabled") bool _$prop_isDisabled = false; // --> this._prop_isDisabled

	// can be used instead of [icon]
	@EzProp("child") Widget? _$prop_child; // --> this._prop_child

	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("icon") late Widget _$prop_icon; // --> this._prop_icon
	@EzProp("iconSize") double _$prop_iconSize = 24.0; // --> this._prop_iconSize
	@EzProp("visualDensity") VisualDensity? _$prop_visualDensity; // --> this._prop_visualDensity
	@EzProp("padding") EdgeInsetsGeometry _$prop_padding = const EdgeInsets.all(8.0); // --> this._prop_padding
	@EzProp("alignment") AlignmentGeometry _$prop_alignment = Alignment.center; // --> this._prop_alignment
	@EzProp("splashRadius") double? _$prop_splashRadius; // --> this._prop_splashRadius
	@EzProp("color") Color? _$prop_color; // --> this._prop_color
	@EzProp("focusColor") Color? _$prop_focusColor; // --> this._prop_focusColor
	@EzProp("hoverColor") Color? _$prop_hoverColor; // --> this._prop_hoverColor
	@EzProp("highlightColor") Color? _$prop_highlightColor; // --> this._prop_highlightColor
	@EzProp("splashColor") Color? _$prop_splashColor; // --> this._prop_splashColor
	@EzProp("disabledColor") Color? _$prop_disabledColor; // --> this._prop_disabledColor
	@EzProp("mouseCursor") MouseCursor _$prop_mouseCursor = SystemMouseCursors.click; // --> this._prop_mouseCursor
	@EzProp("focusNode") FocusNode? _$prop_focusNode; // --> this._prop_focusNode
	@EzProp("autofocus") bool _$prop_autofocus = false; // --> this._prop_autofocus
	@EzProp("tooltip") String? _$prop_tooltip; // --> this._prop_tooltip
	@EzProp("enableFeedback") bool _$prop_enableFeedback = true; // --> this._prop_enableFeedback
	@EzProp("constraints") BoxConstraints? _$prop_constraints; // --> this._prop_constraints


	/* EVENT EMITTERS (4) **/
	@EzEmit("pressed") late void Function() _$emit_pressed; // --> this._emit_pressed


	/* ZML (8) **/
	static const _ZML = """
		<IconButton
			z-bind:onPressed="maybeOnPressed"
			
			z-bind:key="key"
			z-bind:icon="effectiveIconWidget"
			z-bind:iconSize="iconSize"
			z-bind:visualDensity="visualDensity"
			z-bind:padding="padding"
			z-bind:alignment="alignment"
			z-bind:splashRadius="splashRadius"
			z-bind:color="color"
			z-bind:focusColor="focusColor"
			z-bind:hoverColor="hoverColor"
			z-bind:highlightColor="highlightColor"
			z-bind:splashColor="splashColor"
			z-bind:disabledColor="disabledColor"
			z-bind:mouseCursor="mouseCursor"
			z-bind:focusNode="focusNode"
			z-bind:autofocus="autofocus"
			z-bind:tooltip="tooltip"
			z-bind:enableFeedback="enableFeedback"
			z-bind:constraints="constraints"
		/>
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("maybeOnPressed")
	Function()? _computedMaybeOnPressed() {
		return (this._prop_isDisabled ? null : this._boundOnPressed);
	}

	@EzComputed("effectiveIconWidget")
	Widget _computedEffectiveIconWidget() {
		return this._prop_child ?? this._prop_icon;
	}


	/* BOUND METHODS (16) **/
	@EzMethod("onPressed")
	void _boundOnPressed() {
	    this._emit_pressed();
	}
}