
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part "EzListTile.g.dart";

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#ezlisttile
///
/// Wraps ListTile.
class EzListTile extends EzStatefulWidgetBase {
	@override
	EzListTileState createState() => EzListTileState();
}

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#ezlisttile
///
/// Wraps ListTile.
@EzWidget()
class EzListTileState extends _EzStateBase {
	/* PROPS (3) **/
	// native
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("leading") Widget? _$prop_leading; // --> this._prop_leading
	@EzProp("title") Widget? _$prop_title; // --> this._prop_title
	@EzProp("subtitle") Widget? _$prop_subtitle; // --> this._prop_subtitle
	@EzProp("trailing") Widget? _$prop_trailing; // --> this._prop_trailing
	@EzProp("isThreeLine") bool _$prop_isThreeLine = false; // --> this._prop_isThreeLine
	@EzProp("dense") bool? _$prop_dense; // --> this._prop_dense
	@EzProp("visualDensity") VisualDensity? _$prop_visualDensity; // --> this._prop_visualDensity
	@EzProp("shape") ShapeBorder? _$prop_shape; // --> this._prop_shape
	@EzProp("contentPadding") EdgeInsetsGeometry? _$prop_contentPadding; // --> this._prop_contentPadding
	@EzProp("enabled") bool _$prop_enabled = true; // --> this._prop_enabled
	@EzProp("mouseCursor") MouseCursor? _$prop_mouseCursor; // --> this._prop_mouseCursor
	@EzProp("selected") bool _$prop_selected = false; // --> this._prop_selected
	@EzProp("focusColor") Color? _$prop_focusColor; // --> this._prop_focusColor
	@EzProp("hoverColor") Color? _$prop_hoverColor; // --> this._prop_hoverColor
	@EzProp("focusNode") FocusNode? _$prop_focusNode; // --> this._prop_focusNode
	@EzProp("autofocus") bool _$prop_autofocus = false; // --> this._prop_autofocus
	@EzProp("tileColor") Color? _$prop_tileColor; // --> this._prop_tileColor
	@EzProp("selectedTileColor") Color? _$prop_selectedTileColor; // --> this._prop_selectedTileColor
	@EzProp("enableFeedback") bool? _$prop_enableFeedback; // --> this._prop_enableFeedback
	@EzProp("horizontalTitleGap") double? _$prop_horizontalTitleGap; // --> this._prop_horizontalTitleGap
	@EzProp("minVerticalPadding") double? _$prop_minVerticalPadding; // --> this._prop_minVerticalPadding
	@EzProp("minLeadingWidth") double? _$prop_minLeadingWidth; // --> this._prop_minLeadingWidth


	/* EVENT EMITTERS (4) **/
	@EzEmit("tap") late void Function() _$emit_tap; // --> this._emit_tap
	@EzEmit("longPress") late void Function() _$emit_longPress; // --> this._emit_longPress


	/* ZML (8) **/
	static const _ZML = """
		<ListTile
			z-bind:onTap="onTap"
			z-bind:onLongPress="onLongPress"
			
			z-bind:key="key"
			z-bind:leading="leading"
			z-bind:title="title"
			z-bind:subtitle="subtitle"
			z-bind:trailing="trailing"
			z-bind:isThreeLine="isThreeLine"
			z-bind:dense="dense"
			z-bind:visualDensity="visualDensity"
			z-bind:shape="shape"
			z-bind:contentPadding="contentPadding"
			z-bind:enabled="enabled"
			z-bind:mouseCursor="mouseCursor"
			z-bind:selected="selected"
			z-bind:focusColor="focusColor"
			z-bind:hoverColor="hoverColor"
			z-bind:focusNode="focusNode"
			z-bind:autofocus="autofocus"
			z-bind:tileColor="tileColor"
			z-bind:selectedTileColor="selectedTileColor"
			z-bind:enableFeedback="enableFeedback"
			z-bind:horizontalTitleGap="horizontalTitleGap"
			z-bind:minVerticalPadding="minVerticalPadding"
			z-bind:minLeadingWidth="minLeadingWidth"
		/>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("onTap")
	void _boundOnTap() {
	    this._emit_tap();
	}

	@EzMethod("onLongPress")
	void _boundOnLongPress() {
	    this._emit_longPress();
	}
}