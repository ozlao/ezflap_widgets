
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part "EzButtonBase.g.dart";

@EzWidget()
abstract class EzButtonBaseState<T extends EzStatefulWidgetBase> extends _EzStateBase<T> {
	/* PROPS (3) **/
	@EzProp("isDisabled") bool _$prop_isDisabled = false; // --> this._prop_isDisabled

	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("style") ButtonStyle? _$prop_style; // --> this._prop_style
	@EzProp("focusNode") FocusNode? _$prop_focusNode; // --> this._prop_focusNode
	@EzProp("autofocus") bool _$prop_autofocus = false; // --> this._prop_autofocus
	@EzProp("clipBehavior") Clip _$prop_clipBehavior = Clip.none; // --> this._prop_clipBehavior


	/* EVENT EMITTERS (4) **/
	@EzEmit("pressed") late void Function() _$emit_pressed; // --> this._emit_pressed
	@EzEmit("longPress") late void Function() _$emit_longPress; // --> this._emit_longPress


	/* ZML (8) **/
	static const _ZML = """
		<ZInheritingWidget />
	""";


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("maybeOnPressed")
	Function()? computedMaybeOnPressed() {
		var ret = (this.prop_isDisabled ? null : this._boundOnPressed);
		return ret;
	}

	@EzComputed("maybeOnLongPress")
	Function()? computedMaybeOnLongPress() {
		return (this.prop_isDisabled ? null : this._boundOnLongPress);
	}


	/* BOUND METHODS (16) **/
	@EzMethod("onPressed")
	void _boundOnPressed() {
	    this.emit_pressed();
	}

	@EzMethod("onLongPress")
	void _boundOnLongPress() {
	    this.emit_longPress();
	}
}