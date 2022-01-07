
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/src/App/View/TextInput/EzTextInputBase.dart';
import 'package:flutter/material.dart';

part "EzTextFormField.g.dart";

typedef TTextFormFieldValidator = String? Function(String?);

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#eztextformfield
///
/// Wraps TextFormField.
class EzTextFormField extends EzStatefulWidgetBase {
	EzTextFormField({ Key? key }) : super(key: null);
	
	@override
	EzTextFormFieldState createState() => EzTextFormFieldState();
}

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#eztextformfield
///
/// Wraps TextFormField.
@EzWidget(extend: EzTextInputBaseState)
class EzTextFormFieldState extends _EzStateBase<EzTextFormField> {
	/* PROPS (3) **/
	// native
	@EzProp("validator") FormFieldValidator<String>? _$prop_validator; // --> this._prop_validator
	@EzProp("autovalidateMode") AutovalidateMode? _$prop_autovalidateMode; // --> this._prop_autovalidateMode
	@EzProp("initialValue") String? _$prop_initialValue; // --> this._prop_initialValue


	/* EVENT EMITTERS (4) **/
	@EzEmit("fieldSubmitted") late void Function(String value) _$emit_fieldSubmitted; // --> this._emit_fieldSubmitted
	@EzEmit("saved") late void Function(String? value) _$emit_saved; // --> this._emit_saved


	/* ZML (8) **/
	static const _ZML = """
		<TextFormField
			z-bind:controller="controller"
			z-bind:onChanged="onChanged"
			z-bind:onEditingComplete="onEditingComplete"
			z-bind:onTap="onTap"
			z-bind:onFieldSubmitted="onFieldSubmitted"
			z-bind:onSaved="onSaved"
			
			z-bind:key="key"
			z-bind:initialValue="initialValue"
			z-bind:validator="validator"
			z-bind:autovalidateMode="autovalidateMode"
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
			z-bind:keyboardAppearance="keyboardAppearance"
			z-bind:scrollPadding="scrollPadding"
			z-bind:enableInteractiveSelection="enableInteractiveSelection"
			z-bind:selectionControls="selectionControls"
			z-bind:buildCounter="buildCounter"
			z-bind:scrollController="scrollController"
			z-bind:scrollPhysics="scrollPhysics"
			z-bind:autofillHints="autofillHints"
			z-bind:restorationId="restorationId"
			z-bind:enableIMEPersonalizedLearning="enableIMEPersonalizedLearning"
		/>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("onFieldSubmitted")
	void _boundOnFieldSubmitted(String value) {
	    this._emit_fieldSubmitted(value);
	}

	@EzMethod("onSaved")
	void _boundOnSaved(String? value) {
	    this._emit_saved(value);
	}


	/* LIFECYCLE (20) **/
	@protected
	@override
	void hookInitState() {
		super.hookInitState();

		assert(this._prop_initialValue == null || !this.hasModel(), "When a z-model is provided - [initialValue] must be null (because TextFormField does not support both an [initialValue] and a [controller])");
	}

	@override
	Future<void> hookReady() async {
		await super.hookReady();
	}
}