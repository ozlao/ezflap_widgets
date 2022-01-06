
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/Button/EzButtonBase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part "EzTextButton.g.dart";

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#eztextbutton
///
/// Wraps TextButton.
class EzTextButton extends EzStatefulWidgetBase {
	@override
	EzTextButtonState createState() => EzTextButtonState();
}

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#eztextbutton
///
/// Wraps TextButton.
@EzWidget(extend: EzButtonBaseState)
class EzTextButtonState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("caption") String? _$prop_caption; // --> this._prop_caption
	@EzProp("child") Widget? _$prop_child; // --> this._prop_child


	/* ZML (8) **/
	static const _ZML = """
		<TextButton
			z-bind:onPressed="maybeOnPressed"
			z-bind:onLongPress="maybeOnLongPress"
			
			z-bind:key="key"
			z-bind:style="style"
			z-bind:focusNode="focusNode"
			z-bind:autofocus="autofocus"
			z-bind:clipBehavior="clipBehavior"
		>
			<child->
				<ZBuild z-build="make()" />
			</child->
		</TextButton>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("make")
	Widget _boundMake() {
		return this._prop_child ?? Text(this._prop_caption ?? "");
	}
}