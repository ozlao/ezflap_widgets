
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/Button/EzButtonBase.dart';
import 'package:flutter/material.dart';

part "EzElevatedButton.g.dart";

class EzElevatedButton extends EzStatefulWidgetBase {
	@override
	EzElevatedButtonState createState() => EzElevatedButtonState();
}

@EzWidget(extend: EzButtonBaseState)
class EzElevatedButtonState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("caption") String? _$prop_caption; // --> this._prop_caption
	@EzProp("child") Widget? _$prop_child; // --> this._prop_child

	/// When provided - the ElevatedButton.icon() constructor will be used.
	/// in such case, [child] will be passed as [label], with [caption] wrapped
	/// in a [Text] widget as fallback.
	@EzProp("icon") late Widget? _$prop_icon; // --> this._prop_icon

	/// Only supported when [icon] is provided. Can be used instead of [child]
	/// ([child] is a fallback for this prop).
	@EzProp("label") Widget? _$prop_label; // --> this._prop_label


	/* ZML (8) **/
	static const _ZML = """
		<ZBuild z-build="make()" />
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("make")
	Widget _boundMake() {
		if (this._prop_icon == null) {
			return this._makeElevatedButton();
		}
		else {
			return this._makeElevatedButtonByIcon();
		}
	}


	/* PRIVATE METHODS (19) **/
	ElevatedButton _makeElevatedButton() {
	    return ElevatedButton(
	        key: this.prop_key,
	        child: this._prop_child ?? Text(this._prop_caption ?? ""),
	        style: this.prop_style,
	        focusNode: this.prop_focusNode,
	        autofocus: this.prop_autofocus,
	        clipBehavior: this.prop_clipBehavior,
	        onPressed: this.computedMaybeOnPressed(),
	        onLongPress: this.computedMaybeOnLongPress(),
	    );
	}

	ElevatedButton _makeElevatedButtonByIcon() {
	    return ElevatedButton.icon(
	        key: this.prop_key,
	        label: this._prop_label ?? this._prop_child ?? Text(this._prop_caption ?? ""),
	        icon: this._prop_icon!,
	        style: this.prop_style,
	        focusNode: this.prop_focusNode,
	        autofocus: this.prop_autofocus,
	        clipBehavior: this.prop_clipBehavior,
	        onPressed: this.computedMaybeOnPressed(),
	        onLongPress: this.computedMaybeOnLongPress(),
	    );
	}
}