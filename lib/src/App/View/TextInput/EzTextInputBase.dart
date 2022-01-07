
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part "EzTextInputBase.g.dart";

/// Common capabilities for text fields
@internal
@EzWidget()
abstract class EzTextInputBaseState<T extends EzStatefulWidgetBase> extends _EzStateBase<T> {
	/* MODELS (2) **/
	@EzOptionalModel() dynamic _$model = ""; // --> this._model


	/* PROPS (3) **/
	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("focusNode") FocusNode? _$prop_focusNode; // --> this._prop_focusNode
	@EzProp("decoration") InputDecoration? _$prop_decoration = const InputDecoration(); // --> this._prop_decoration
	@EzProp("keyboardType") TextInputType? _$prop_keyboardType; // --> this._prop_keyboardType
	@EzProp("textInputAction") TextInputAction? _$prop_textInputAction; // --> this._prop_textInputAction
	@EzProp("textCapitalization") TextCapitalization _$prop_textCapitalization = TextCapitalization.none; // --> this._prop_textCapitalization
	@EzProp("style") TextStyle? _$prop_style; // --> this._prop_style
	@EzProp("strutStyle") StrutStyle? _$prop_strutStyle; // --> this._prop_strutStyle
	@EzProp("textAlign") TextAlign _$prop_textAlign = TextAlign.start; // --> this._prop_textAlign
	@EzProp("textAlignVertical") TextAlignVertical? _$prop_textAlignVertical; // --> this._prop_textAlignVertical
	@EzProp("textDirection") TextDirection? _$prop_textDirection; // --> this._prop_textDirection
	@EzProp("readOnly") bool _$prop_readOnly = false; // --> this._prop_readOnly
	@EzProp("toolbarOptions") ToolbarOptions? _$prop_toolbarOptions; // --> this._prop_toolbarOptions
	@EzProp("showCursor") bool? _$prop_showCursor; // --> this._prop_showCursor
	@EzProp("autofocus") bool _$prop_autofocus = false; // --> this._prop_autofocus
	@EzProp("obscuringCharacter") String _$prop_obscuringCharacter = "•"; // --> this._prop_obscuringCharacter
	@EzProp("obscureText") bool _$prop_obscureText = false; // --> this._prop_obscureText
	@EzProp("autocorrect") bool _$prop_autocorrect = true; // --> this._prop_autocorrect
	@EzProp("smartDashesType") SmartDashesType? _$prop_smartDashesType; // --> this._prop_smartDashesType
	@EzProp("smartQuotesType") SmartQuotesType? _$prop_smartQuotesType; // --> this._prop_smartQuotesType
	@EzProp("enableSuggestions") bool _$prop_enableSuggestions = true; // --> this._prop_enableSuggestions
	@EzProp("maxLines") int? _$prop_maxLines = 1; // --> this._prop_maxLines
	@EzProp("minLines") int? _$prop_minLines; // --> this._prop_minLines
	@EzProp("expands") bool _$prop_expands = false; // --> this._prop_expands
	@EzProp("maxLength") int? _$prop_maxLength; // --> this._prop_maxLength
	@EzProp("maxLengthEnforcement") MaxLengthEnforcement? _$prop_maxLengthEnforcement; // --> this._prop_maxLengthEnforcement
	@EzProp("inputFormatters") List<TextInputFormatter>? _$prop_inputFormatters; // --> this._prop_inputFormatters
	@EzProp("enabled") bool? _$prop_enabled; // --> this._prop_enabled
	@EzProp("cursorWidth") double _$prop_cursorWidth = 2.0; // --> this._prop_cursorWidth
	@EzProp("cursorHeight") double? _$prop_cursorHeight; // --> this._prop_cursorHeight
	@EzProp("cursorRadius") Radius? _$prop_cursorRadius; // --> this._prop_cursorRadius
	@EzProp("cursorColor") Color? _$prop_cursorColor; // --> this._prop_cursorColor
	@EzProp("keyboardAppearance") Brightness? _$prop_keyboardAppearance; // --> this._prop_keyboardAppearance
	@EzProp("scrollPadding") EdgeInsets _$prop_scrollPadding = const EdgeInsets.all(20.0); // --> this._prop_scrollPadding
	@EzProp("enableInteractiveSelection") bool _$prop_enableInteractiveSelection = true; // --> this._prop_enableInteractiveSelection
	@EzProp("selectionControls") TextSelectionControls? _$prop_selectionControls; // --> this._prop_selectionControls
	@EzProp("buildCounter") InputCounterWidgetBuilder? _$prop_buildCounter; // --> this._prop_buildCounter
	@EzProp("scrollController") ScrollController? _$prop_scrollController; // --> this._prop_scrollController
	@EzProp("scrollPhysics") ScrollPhysics? _$prop_scrollPhysics; // --> this._prop_scrollPhysics
	@EzProp("autofillHints") Iterable<String>? _$prop_autofillHints; // --> this._prop_autofillHints
	@EzProp("restorationId") String? _$prop_restorationId; // --> this._prop_restorationId
	@EzProp("enableIMEPersonalizedLearning") bool _$prop_enableIMEPersonalizedLearning = true; // --> this._prop_enableIMEPersonalizedLearning


	/* EVENT EMITTERS (4) **/
	@EzEmit("changed") late void Function(String value) _$emit_changed; // --> this._emit_changed
	@EzEmit("editingComplete") late void Function() _$emit_editingComplete; // --> this._emit_editingComplete
	@EzEmit("tap") late void Function() _$emit_tap; // --> this._emit_tap


	/* ZML (8) **/
	static const _ZML = """
		<ZInheritingWidget />
	""";


	/* BOUND FIELDS (11) **/
	@EzField("controller") late TextEditingController? _$controller; // --> this._controller


	/* BOUND METHODS (16) **/
	@EzMethod("onChanged")
	void _boundOnChanged(String value) {
		// we only change _model via the controller (because we may need casting)
	    this.emit_changed(value);
	}

	@EzMethod("onEditingComplete")
	void _boundOnEditingComplete() {
	    this.emit_editingComplete();
	}

	@EzMethod("onTap")
	void _boundOnTap() {
	    this.emit_tap();
	}


	/* WATCHES (17) **/
	@EzWatch("model")
	void _watchModel(dynamic newValue, dynamic oldValue) {
		// newValue may be out of date by the time this is invoked.
		newValue = this.model;
		String effectiveNewValue = this._convertValueToString(newValue);
		this._updateValueInControllerIfNeeded(effectiveNewValue);
	}


	/* PRIVATE METHODS (19) **/
	String _convertValueToString(dynamic value) {
		return value?.toString() ?? "";
	}

	void _updateValueInControllerIfNeeded(String newValue) {
		if (this.controller?.text != newValue) {
			this.controller?.text = newValue;
		}
	}

	String? _tryGetCurValueAsString() {
		if (!this.hasModel()) {
			return null;
		}
		dynamic mod = this.model;
		String? s = mod?.toString();
		return s;
	}

	void _initController() {
		this.controller = null;
		if (!this.hasModel()) {
			return;
		}

		String? curText = this._tryGetCurValueAsString();
		var ctl = TextEditingController(text: curText);
		this.controller = ctl;

		void func() {
			String newText = this.controller!.text;
			String? curText = this._tryGetCurValueAsString();
			if (newText == curText) {
				return;
			}

			if (this.model_isOfType<String?>()) {
				this.model = newText;
			}
			else {
				if (this.model_isOfType<int?>()) {
					this.model = int.tryParse(newText);
				}
				else if (this.model_isOfType<double?>()) {
					this.model = double.tryParse(newText);
				}
				else if (this.model_isOfType<num?>()) {
					this.model = num.tryParse(newText);
				}
				else {
					this.model = newText;
				}
			}
		}
		this.controller!.addListener(func);
		this.onDispose(() {
			this.controller!.removeListener(func);
			this.controller!.dispose();
		});
	}


	/* LIFECYCLE (20) **/
	@protected
	@override
	void hookInitState() {
		this._initController();
	}

	@override
	Future<void> hookReady() async {
		// re-initialize from outside. this is needed to handle an edge case
		// where the host has a pre-initialized @EzField, which he uses as a
		// z-model for us, and then he overrides it with a different value
		// inside its hookPrepare().
		String s = this._convertValueToString(this.model);
		this._updateValueInControllerIfNeeded(s);
	}
}