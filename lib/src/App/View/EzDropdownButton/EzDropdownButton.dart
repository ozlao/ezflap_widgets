
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part "EzDropdownButton.g.dart";

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#ezdropdownbutton
///
/// Wraps DropdownButton.
class EzDropdownButton extends EzStatefulWidgetBase {
	@override
	EzDropdownButtonState createState() => EzDropdownButtonState();
}

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#ezdropdownbutton
///
/// Wraps DropdownButton.
@EzWidget()
class EzDropdownButtonState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel() late dynamic _$model; // --> this._model


	/* PROPS (3) **/
	// [items] is a fallback of [children]
	@EzProp("children") List<DropdownMenuItem<dynamic>>? _$prop_children; // --> this._prop_children

	@EzProp("isDisabled") bool _$prop_isDisabled = false; // --> this._prop_isDisabled

	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("selectedItemBuilder") DropdownButtonBuilder? _$prop_selectedItemBuilder; // --> this._prop_selectedItemBuilder
	@EzProp("hint") Widget? _$prop_hint; // --> this._prop_hint
	@EzProp("disabledHint") Widget? _$prop_disabledHint; // --> this._prop_disabledHint
	@EzProp("elevation") int _$prop_elevation = 8; // --> this._prop_elevation
	@EzProp("style") TextStyle? _$prop_style; // --> this._prop_style
	@EzProp("underline") Widget? _$prop_underline; // --> this._prop_underline
	@EzProp("icon") Widget? _$prop_icon; // --> this._prop_icon
	@EzProp("iconDisabledColor") Color? _$prop_iconDisabledColor; // --> this._prop_iconDisabledColor
	@EzProp("iconEnabledColor") Color? _$prop_iconEnabledColor; // --> this._prop_iconEnabledColor
	@EzProp("iconSize") double _$prop_iconSize = 24.0; // --> this._prop_iconSize
	@EzProp("isDense") bool _$prop_isDense = false; // --> this._prop_isDense
	@EzProp("isExpanded") bool _$prop_isExpanded = false; // --> this._prop_isExpanded
	@EzProp("itemHeight") double? _$prop_itemHeight = kMinInteractiveDimension; // --> this._prop_itemHeight
	@EzProp("focusColor") Color? _$prop_focusColor; // --> this._prop_focusColor
	@EzProp("focusNode") FocusNode? _$prop_focusNode; // --> this._prop_focusNode
	@EzProp("autofocus") bool _$prop_autofocus = false; // --> this._prop_autofocus
	@EzProp("dropdownColor") Color? _$prop_dropdownColor; // --> this._prop_dropdownColor
	@EzProp("menuMaxHeight") double? _$prop_menuMaxHeight; // --> this._prop_menuMaxHeight
	@EzProp("enableFeedback") bool? _$prop_enableFeedback; // --> this._prop_enableFeedback
	@EzProp("alignment") AlignmentGeometry _$prop_alignment = AlignmentDirectional.centerStart; // --> this._prop_alignment
	@EzProp("borderRadius") late BorderRadius? _$prop_borderRadius; // --> this._prop_borderRadius
	@EzProp("items") List<DropdownMenuItem<dynamic>>? _$prop_items; // --> this._prop_items


	/* EVENT EMITTERS (4) **/
	@EzEmit("changed") late void Function(dynamic value) _$emit_changed; // --> this._emit_changed
	@EzEmit("tap") late void Function() _$emit_tap; // --> this._emit_tap


	/* ZML (8) **/
	static const _ZML = """
		<DropdownButton
			z-bind:key="key"
			z-bind:value="model"
			z-bind:onChanged="maybeOnChanged"
			z-bind:onTap="onTap"
			z-bind:items="children ?? items"
			z-bind:selectedItemBuilder="selectedItemBuilder"
			
			z-bind:hint="hint"
			z-bind:disabledHint="disabledHint"
			z-bind:elevation="elevation"
			z-bind:style="style"
			z-bind:underline="underline"
			z-bind:icon="icon"
			z-bind:iconDisabledColor="iconDisabledColor"
			z-bind:iconEnabledColor="iconEnabledColor"
			z-bind:iconSize="iconSize"
			z-bind:isDense="isDense"
			z-bind:isExpanded="isExpanded"
			z-bind:itemHeight="itemHeight"
			z-bind:focusColor="focusColor"
			z-bind:focusNode="focusNode"
			z-bind:autofocus="autofocus"
			z-bind:dropdownColor="dropdownColor"
			z-bind:menuMaxHeight="menuMaxHeight"
			z-bind:enableFeedback="enableFeedback"
			z-bind:alignment="alignment"
			z-bind:borderRadius="borderRadius"
		/>
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("maybeOnChanged")
	Function(dynamic)? _computedMaybeOnChanged() {
		return (this._prop_isDisabled ? null : this._boundOnChanged);
	}


	/* BOUND METHODS (16) **/
	@EzMethod("onChanged")
	void _boundOnChanged(dynamic value) {
	    this._model = value;
	    this._emit_changed(value);
	}

	@EzMethod("onTap")
	void _boundOnTap() {
	    this._emit_tap();
	}
}