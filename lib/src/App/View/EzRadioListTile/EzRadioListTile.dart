
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part "EzRadioListTile.g.dart";

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#ezradiolisttile
///
/// Wraps RadioListTile.
class EzRadioListTile extends EzStatefulWidgetBase {
	@override
	EzRadioListTileState createState() => EzRadioListTileState();
}

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#ezradiolisttile
///
/// Wraps RadioListTile.
@EzWidget()
class EzRadioListTileState extends _EzStateBase {
	/* MODELS (2) **/
	@EzModel() late dynamic _$model; // --> this._model


	/* PROPS (3) **/
	@EzProp("value") dynamic _$prop_value; // --> this._prop_value
	@EzProp("caption") String? _$prop_caption; // --> this._prop_caption
	@EzProp("isDisabled") bool _$prop_isDisabled = false; // --> this._prop_isDisabled
	@EzProp("child") Widget? _$prop_child; // --> this._prop_child

	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("toggleable") bool _$prop_toggleable = false; // --> this._prop_toggleable
	@EzProp("activeColor") Color? _$prop_activeColor; // --> this._prop_activeColor
	@EzProp("title") Widget? _$prop_title; // --> this._prop_title
	@EzProp("subtitle") Widget? _$prop_subtitle; // --> this._prop_subtitle
	@EzProp("isThreeLine") bool _$prop_isThreeLine = false; // --> this._prop_isThreeLine
	@EzProp("dense") bool? _$prop_dense; // --> this._prop_dense
	@EzProp("secondary") Widget? _$prop_secondary; // --> this._prop_secondary
	@EzProp("selected") bool _$prop_selected = false; // --> this._prop_selected
	@EzProp("controlAffinity") ListTileControlAffinity _$prop_controlAffinity = ListTileControlAffinity.platform; // --> this._prop_controlAffinity
	@EzProp("autofocus") bool _$prop_autofocus = false; // --> this._prop_autofocus
	@EzProp("contentPadding") EdgeInsetsGeometry? _$prop_contentPadding; // --> this._prop_contentPadding
	@EzProp("shape") ShapeBorder? _$prop_shape; // --> this._prop_shape
	@EzProp("tileColor") Color? _$prop_tileColor; // --> this._prop_tileColor
	@EzProp("selectedTileColor") Color? _$prop_selectedTileColor; // --> this._prop_selectedTileColor


	/* EVENT EMITTERS (4) **/
	@EzEmit("changed") late void Function(dynamic value) _$emit_changed; // --> this._emit_changed


	/* ZML (8) **/
	static const _ZML = """
		<RadioListTile
			z-bind:value="value"
			z-bind:groupValue="model"
			z-bind:onChanged="maybeOnChanged"
			
			z-bind:key="key"
			z-bind:toggleable="toggleable"
			z-bind:activeColor="activeColor"
			z-bind:subtitle="subtitle"
			z-bind:isThreeLine="isThreeLine"
			z-bind:dense="dense"
			z-bind:secondary="secondary"
			z-bind:selected="selected"
			z-bind:controlAffinity="controlAffinity"
			z-bind:autofocus="autofocus"
			z-bind:contentPadding="contentPadding"
			z-bind:shape="shape"
			z-bind:tileColor="tileColor"
			z-bind:selectedTileColor="selectedTileColor"
		>
			<title->
				<ZBuild z-build="make()" />
			</title->
		</RadioListTile>
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

	@EzMethod("make")
	Widget _boundMake() {
	    return this._prop_title ?? this._prop_child ?? Text(this._prop_caption ?? "");
	}
}