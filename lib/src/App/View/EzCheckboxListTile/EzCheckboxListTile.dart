
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part "EzCheckboxListTile.g.dart";

class EzCheckboxListTile extends EzStatefulWidgetBase {
	@override
	EzCheckboxListTileState createState() => EzCheckboxListTileState();
}

@EzWidget()
class EzCheckboxListTileState extends _EzStateBase {
	/* MODELS (2) **/
	@EzOptionalModel() bool? _$model = false; // --> this._model


	/* PROPS (3) **/
	@EzProp("caption") String? _$prop_caption; // --> this._prop_caption
	@EzProp("isDisabled") bool _$prop_isDisabled = false; // --> this._prop_isDisabled
	@EzProp("child") Widget? _$prop_child; // --> this._prop_child

	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("activeColor") Color? _$prop_activeColor; // --> this._prop_activeColor
	@EzProp("checkColor") Color? _$prop_checkColor; // --> this._prop_checkColor
	@EzProp("tileColor") Color? _$prop_tileColor; // --> this._prop_tileColor
	@EzProp("title") Widget? _$prop_title; // --> this._prop_title
	@EzProp("subtitle") Widget? _$prop_subtitle; // --> this._prop_subtitle
	@EzProp("isThreeLine") bool _$prop_isThreeLine = false; // --> this._prop_isThreeLine
	@EzProp("dense") bool? _$prop_dense; // --> this._prop_dense
	@EzProp("secondary") Widget? _$prop_secondary; // --> this._prop_secondary
	@EzProp("selected") bool _$prop_selected = false; // --> this._prop_selected
	@EzProp("controlAffinity") ListTileControlAffinity _$prop_controlAffinity = ListTileControlAffinity.platform; // --> this._prop_controlAffinity
	@EzProp("autofocus") bool _$prop_autofocus = false; // --> this._prop_autofocus
	@EzProp("contentPadding") EdgeInsetsGeometry? _$prop_contentPadding; // --> this._prop_contentPadding
	@EzProp("tristate") bool _$prop_tristate = false; // --> this._prop_tristate
	@EzProp("shape") ShapeBorder? _$prop_shape; // --> this._prop_shape
	@EzProp("selectedTileColor") Color? _$prop_selectedTileColor; // --> this._prop_selectedTileColor


	/* EVENT EMITTERS (4) **/
	@EzEmit("changed") late void Function(bool? value) _$emit_changed; // --> this._emit_changed


	/* ZML (8) **/
	static const _ZML = """
		<CheckboxListTile
			z-bind:value="model"
			z-bind:onChanged="maybeOnChanged"
			
			z-bind:key="key"
			z-bind:activeColor="activeColor"
			z-bind:checkColor="checkColor"
			z-bind:tileColor="tileColor"
			z-bind:subtitle="subtitle"
			z-bind:isThreeLine="isThreeLine"
			z-bind:dense="dense"
			z-bind:secondary="secondary"
			z-bind:selected="selected"
			z-bind:controlAffinity="controlAffinity"
			z-bind:autofocus="autofocus"
			z-bind:contentPadding="contentPadding"
			z-bind:tristate="tristate"
			z-bind:shape="shape"
			z-bind:selectedTileColor="selectedTileColor"
		>
			<title->
				<ZBuild z-build="make()" />
			</title->
		</CheckboxListTile>
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("maybeOnChanged")
	Function(bool?)? _computedMaybeOnChanged() {
		return (this._prop_isDisabled ? null : this._boundOnChanged);
	}


	/* BOUND METHODS (16) **/
	@EzMethod("make")
	Widget _boundMake() {
	    return this._prop_title ?? this._prop_child ?? Text(this._prop_caption ?? "");
	}

	@EzMethod("onChanged")
	void _boundOnChanged(bool? value) {
	    this._model = value;
	    this._emit_changed(value);
	}
}