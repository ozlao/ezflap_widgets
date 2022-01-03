
import 'dart:ui';

import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/TextInput/EzTextInputBase.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

part "EzTextField.g.dart";

class EzTextField extends EzStatefulWidgetBase {
	@override
	EzTextFieldState createState() => EzTextFieldState();
}

@EzWidget(extend: EzTextInputBaseState)
class EzTextFieldState extends _EzStateBase<EzTextField> {
	/* PROPS (3) **/
	// native
	@EzProp("selectionHeightStyle") BoxHeightStyle _$prop_selectionHeightStyle = BoxHeightStyle.tight; // --> this._prop_selectionHeightStyle
	@EzProp("selectionWidthStyle") BoxWidthStyle _$prop_selectionWidthStyle = BoxWidthStyle.tight; // --> this._prop_selectionWidthStyle
	@EzProp("dragStartBehavior") DragStartBehavior _$prop_dragStartBehavior = DragStartBehavior.start; // --> this._prop_dragStartBehavior
	@EzProp("mouseCursor") MouseCursor? _$prop_mouseCursor; // --> this._prop_mouseCursor


	/* EVENT EMITTERS (4) **/
	@EzEmit("submitted") late void Function(String value) _$emit_submitted; // --> this._emit_submitted
	@EzEmit("appPrivateCommand") late void Function(String s, Map<String, dynamic> map) _$emit_appPrivateCommand; // --> this._emit_appPrivateCommand


	/* ZML (8) **/
	static const _ZML = """
		<TextField
			z-bind:controller="controller"
			z-bind:onChanged="onChanged"
			z-bind:onEditingComplete="onEditingComplete"
			z-bind:onSubmitted="onSubmitted"
			z-bind:onAppPrivateCommand="onAppPrivateCommand"
			z-bind:onTap="onTap"
			
			z-bind:key="key"
			z-bind:focusNode="focusNode"
			z-bind:decoration="decoration"
			z-bind:keyboardType="keyboardType"
			z-bind:textInputAction="textInputAction"
			z-bind:textCapitalization="textCapitalization"
			z-bind:style="style"
			z-bind:strutStyle="strutStyle"
			z-bind:textAlign="textAlign"
			z-bind:textAlignVertical="textAlignVertical"
			z-bind:textDirection="textDirection"
			z-bind:readOnly="readOnly"
			z-bind:toolbarOptions="toolbarOptions"
			z-bind:showCursor="showCursor"
			z-bind:autofocus="autofocus"
			z-bind:obscuringCharacter="obscuringCharacter"
			z-bind:obscureText="obscureText"
			z-bind:autocorrect="autocorrect"
			z-bind:smartDashesType="smartDashesType"
			z-bind:smartQuotesType="smartQuotesType"
			z-bind:enableSuggestions="enableSuggestions"
			z-bind:maxLines="maxLines"
			z-bind:minLines="minLines"
			z-bind:expands="expands"
			z-bind:maxLength="maxLength"
			z-bind:maxLengthEnforcement="maxLengthEnforcement"
			z-bind:inputFormatters="inputFormatters"
			z-bind:enabled="enabled"
			z-bind:cursorWidth="cursorWidth"
			z-bind:cursorHeight="cursorHeight"
			z-bind:cursorRadius="cursorRadius"
			z-bind:cursorColor="cursorColor"
			z-bind:selectionHeightStyle="selectionHeightStyle"
			z-bind:selectionWidthStyle="selectionWidthStyle"
			z-bind:keyboardAppearance="keyboardAppearance"
			z-bind:scrollPadding="scrollPadding"
			z-bind:dragStartBehavior="dragStartBehavior"
			z-bind:enableInteractiveSelection="enableInteractiveSelection"
			z-bind:selectionControls="selectionControls"
			z-bind:mouseCursor="mouseCursor"
			z-bind:buildCounter="buildCounter"
			z-bind:scrollController="scrollController"
			z-bind:scrollPhysics="scrollPhysics"
			z-bind:autofillHints="autofillHints"
			z-bind:restorationId="restorationId"
			z-bind:enableIMEPersonalizedLearning="enableIMEPersonalizedLearning"
		/>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("onSubmitted")
	void _boundOnSubmitted(String value) {
	    this._emit_submitted(value);
	}

	@EzMethod("onAppPrivateCommand")
	void _boundOnAppPrivateCommand(String s, Map<String, dynamic> map) {
	    this._emit_appPrivateCommand(s, map);
	}


	/* LIFECYCLE (20) **/
	@protected
	@override
	void hookInitState() {
		super.hookInitState();
	}

	@override
	Future<void> hookReady() async {
		await super.hookReady();
	}
}