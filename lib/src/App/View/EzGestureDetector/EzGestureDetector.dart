
import 'package:ezflap/ezflap.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part "EzGestureDetector.g.dart";

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#ezgesturedetector
///
/// Wraps GestureDetector.
class EzGestureDetector extends EzStatefulWidgetBase {
	@override
	EzGestureDetectorState createState() => EzGestureDetectorState();
}

/// Full documentation: https://www.ezflap.io/deep-dive/core-widgets/core-widgets.html#ezgesturedetector
///
/// Wraps GestureDetector.
@EzWidget()
class EzGestureDetectorState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("key") Key? _$prop_key; // --> this._prop_key
	@EzProp("child") Widget? _$prop_child; // --> this._prop_child
	@EzProp("behavior") HitTestBehavior? _$prop_behavior; // --> this._prop_behavior
	@EzProp("excludeFromSemantics") bool _$prop_excludeFromSemantics = false; // --> this._prop_excludeFromSemantics
	@EzProp("dragStartBehavior") DragStartBehavior _$prop_dragStartBehavior = DragStartBehavior.start; // --> this._prop_dragStartBehavior


	/* EVENT EMITTERS (4) **/
	@EzEmit("tapDown") late void Function(TapDownDetails) _$emit_tapDown; // --> this._emit_tapDown
	@EzEmit("tapUp") late void Function(TapUpDetails) _$emit_tapUp; // --> this._emit_tapUp
	@EzEmit("tap") late void Function() _$emit_tap; // --> this._emit_tap
	@EzEmit("tapCancel") late void Function() _$emit_tapCancel; // --> this._emit_tapCancel
	@EzEmit("secondaryTap") late void Function() _$emit_secondaryTap; // --> this._emit_secondaryTap
	@EzEmit("secondaryTapDown") late void Function(TapDownDetails) _$emit_secondaryTapDown; // --> this._emit_secondaryTapDown
	@EzEmit("secondaryTapUp") late void Function(TapUpDetails) _$emit_secondaryTapUp; // --> this._emit_secondaryTapUp
	@EzEmit("secondaryTapCancel") late void Function() _$emit_secondaryTapCancel; // --> this._emit_secondaryTapCancel
	@EzEmit("tertiaryTapDown") late void Function(TapDownDetails) _$emit_tertiaryTapDown; // --> this._emit_tertiaryTapDown
	@EzEmit("tertiaryTapUp") late void Function(TapUpDetails) _$emit_tertiaryTapUp; // --> this._emit_tertiaryTapUp
	@EzEmit("tertiaryTapCancel") late void Function() _$emit_tertiaryTapCancel; // --> this._emit_tertiaryTapCance
	@EzEmit("doubleTapDown") late void Function(TapDownDetails) _$emit_doubleTapDown; // --> this._emit_doubleTapDown
	@EzEmit("doubleTap") late void Function() _$emit_doubleTap; // --> this._emit_doubleTap
	@EzEmit("doubleTapCancel") late void Function() _$emit_doubleTapCancel; // --> this._emit_doubleTapCancel
	@EzEmit("longPressDown") late void Function(LongPressDownDetails) _$emit_longPressDown; // --> this._emit_longPressDow
	@EzEmit("longPressCancel") late void Function() _$emit_longPressCancel; // --> this._emit_longPressCancel
	@EzEmit("longPress") late void Function() _$emit_longPress; // --> this._emit_longPress
	@EzEmit("longPressStart") late void Function(LongPressStartDetails) _$emit_longPressStart; // --> this._emit_longPressStart
	@EzEmit("longPressMoveUpdate") late void Function(LongPressMoveUpdateDetails) _$emit_longPressMoveUpdate; // --> this._emit_longPressMoveUpdat
	@EzEmit("longPressUp") late void Function() _$emit_longPressUp; // --> this._emit_longPressUp
	@EzEmit("longPressEnd") late void Function(LongPressEndDetails) _$emit_longPressEnd; // --> this._emit_longPressEnd
	@EzEmit("secondaryLongPressDown") late void Function(LongPressDownDetails) _$emit_secondaryLongPressDown; // --> this._emit_secondaryLongPressDow
	@EzEmit("secondaryLongPressCancel") late void Function() _$emit_secondaryLongPressCancel; // --> this._emit_secondaryLongPressCancel
	@EzEmit("secondaryLongPress") late void Function() _$emit_secondaryLongPress; // --> this._emit_secondaryLongPress
	@EzEmit("secondaryLongPressStart") late void Function(LongPressStartDetails) _$emit_secondaryLongPressStart; // --> this._emit_secondaryLongPressStart
	@EzEmit("secondaryLongPressMoveUpdate") late void Function(LongPressMoveUpdateDetails) _$emit_secondaryLongPressMoveUpdate; // --> this._emit_secondaryLongPressMoveUpdat
	@EzEmit("secondaryLongPressUp") late void Function() _$emit_secondaryLongPressUp; // --> this._emit_secondaryLongPressUp
	@EzEmit("secondaryLongPressEnd") late void Function(LongPressEndDetails) _$emit_secondaryLongPressEnd; // --> this._emit_secondaryLongPressEnd
	@EzEmit("tertiaryLongPressDown") late void Function(LongPressDownDetails) _$emit_tertiaryLongPressDown; // --> this._emit_tertiaryLongPressDow
	@EzEmit("tertiaryLongPressCancel") late void Function() _$emit_tertiaryLongPressCancel; // --> this._emit_tertiaryLongPressCancel
	@EzEmit("tertiaryLongPress") late void Function() _$emit_tertiaryLongPress; // --> this._emit_tertiaryLongPress
	@EzEmit("tertiaryLongPressStart") late void Function(LongPressStartDetails) _$emit_tertiaryLongPressStart; // --> this._emit_tertiaryLongPressStart
	@EzEmit("tertiaryLongPressMoveUpdate") late void Function(LongPressMoveUpdateDetails) _$emit_tertiaryLongPressMoveUpdate; // --> this._emit_tertiaryLongPressMoveUpdat
	@EzEmit("tertiaryLongPressUp") late void Function() _$emit_tertiaryLongPressUp; // --> this._emit_tertiaryLongPressUp
	@EzEmit("tertiaryLongPressEnd") late void Function(LongPressEndDetails) _$emit_tertiaryLongPressEnd; // --> this._emit_tertiaryLongPressEn
	@EzEmit("verticalDragDown") late void Function(DragDownDetails) _$emit_verticalDragDown; // --> this._emit_verticalDragDown
	@EzEmit("verticalDragStart") late void Function(DragStartDetails) _$emit_verticalDragStart; // --> this._emit_verticalDragStart
	@EzEmit("verticalDragUpdate") late void Function(DragUpdateDetails) _$emit_verticalDragUpdate; // --> this._emit_verticalDragUpdate
	@EzEmit("verticalDragEnd") late void Function(DragEndDetails) _$emit_verticalDragEnd; // --> this._emit_verticalDragEn
	@EzEmit("verticalDragCancel") late void Function() _$emit_verticalDragCancel; // --> this._emit_verticalDragCancel
	@EzEmit("horizontalDragDown") late void Function(DragDownDetails) _$emit_horizontalDragDown; // --> this._emit_horizontalDragDown
	@EzEmit("horizontalDragStart") late void Function(DragStartDetails) _$emit_horizontalDragStart; // --> this._emit_horizontalDragStart
	@EzEmit("horizontalDragUpdate") late void Function(DragUpdateDetails) _$emit_horizontalDragUpdate; // --> this._emit_horizontalDragUpdate
	@EzEmit("horizontalDragEnd") late void Function(DragEndDetails) _$emit_horizontalDragEnd; // --> this._emit_horizontalDragEn
	@EzEmit("horizontalDragCancel") late void Function() _$emit_horizontalDragCancel; // --> this._emit_horizontalDragCancel
	@EzEmit("forcePressStart") late void Function(ForcePressDetails) _$emit_forcePressStart; // --> this._emit_forcePressStar
	@EzEmit("forcePressPeak") late void Function(ForcePressDetails) _$emit_forcePressPeak; // --> this._emit_forcePressPeak
	@EzEmit("forcePressUpdate") late void Function(ForcePressDetails) _$emit_forcePressUpdate; // --> this._emit_forcePressUpdat
	@EzEmit("forcePressEnd") late void Function(ForcePressDetails) _$emit_forcePressEnd; // --> this._emit_forcePressEnd
	@EzEmit("panDown") late void Function(DragDownDetails) _$emit_panDown; // --> this._emit_panDow
	@EzEmit("panStart") late void Function(DragStartDetails) _$emit_panStart; // --> this._emit_panStart
	@EzEmit("panUpdate") late void Function(DragUpdateDetails) _$emit_panUpdate; // --> this._emit_panUpdat
	@EzEmit("panEnd") late void Function(DragEndDetails) _$emit_panEnd; // --> this._emit_panEn
	@EzEmit("panCancel") late void Function() _$emit_panCancel; // --> this._emit_panCancel
	@EzEmit("scaleStart") late void Function(ScaleStartDetails) _$emit_scaleStart; // --> this._emit_scaleStar
	@EzEmit("scaleUpdate") late void Function(ScaleUpdateDetails) _$emit_scaleUpdate; // --> this._emit_scaleUpdat
	@EzEmit("scaleEnd") late void Function(ScaleEndDetails) _$emit_scaleEnd; // --> this._emit_scaleEnd


	/* ZML (8) **/
	static const _ZML = """
		<GestureDetector
			z-bind:key="key"
			z-bind:child="child"
			z-bind:behavior="behavior"
			z-bind:excludeFromSemantics="excludeFromSemantics"
			z-bind:dragStartBehavior="dragStartBehavior"
			
			z-bind:onTapDown="hasEmitHandler('tapDown') ? tapDown : null"
			z-bind:onTapUp="hasEmitHandler('tapUp') ? tapUp : null"
			z-bind:onTap="hasEmitHandler('tap') ? tap : null"
			z-bind:onTapCancel="hasEmitHandler('tapCancel') ? tapCancel : null"
			z-bind:onSecondaryTap="hasEmitHandler('secondaryTap') ? secondaryTap : null"
			z-bind:onSecondaryTapDown="hasEmitHandler('secondaryTapDown') ? secondaryTapDown : null"
			z-bind:onSecondaryTapUp="hasEmitHandler('secondaryTapUp') ? secondaryTapUp : null"
			z-bind:onSecondaryTapCancel="hasEmitHandler('secondaryTapCancel') ? secondaryTapCancel : null"
			z-bind:onTertiaryTapDown="hasEmitHandler('tertiaryTapDown') ? tertiaryTapDown : null"
			z-bind:onTertiaryTapUp="hasEmitHandler('tertiaryTapUp') ? tertiaryTapUp : null"
			z-bind:onTertiaryTapCancel="hasEmitHandler('tertiaryTapCancel') ? tertiaryTapCancel : null"
			z-bind:onDoubleTapDown="hasEmitHandler('doubleTapDown') ? doubleTapDown : null"
			z-bind:onDoubleTap="hasEmitHandler('doubleTap') ? doubleTap : null"
			z-bind:onDoubleTapCancel="hasEmitHandler('doubleTapCancel') ? doubleTapCancel : null"
			z-bind:onLongPressDown="hasEmitHandler('longPressDown') ? longPressDown : null"
			z-bind:onLongPressCancel="hasEmitHandler('longPressCancel') ? longPressCancel : null"
			z-bind:onLongPress="hasEmitHandler('longPress') ? longPress : null"
			z-bind:onLongPressStart="hasEmitHandler('longPressStart') ? longPressStart : null"
			z-bind:onLongPressMoveUpdate="hasEmitHandler('longPressMoveUpdate') ? longPressMoveUpdate : null"
			z-bind:onLongPressUp="hasEmitHandler('longPressUp') ? longPressUp : null"
			z-bind:onLongPressEnd="hasEmitHandler('longPressEnd') ? longPressEnd : null"
			z-bind:onSecondaryLongPressDown="hasEmitHandler('secondaryLongPressDown') ? secondaryLongPressDown : null"
			z-bind:onSecondaryLongPressCancel="hasEmitHandler('secondaryLongPressCancel') ? secondaryLongPressCancel : null"
			z-bind:onSecondaryLongPress="hasEmitHandler('secondaryLongPress') ? secondaryLongPress : null"
			z-bind:onSecondaryLongPressStart="hasEmitHandler('secondaryLongPressStart') ? secondaryLongPressStart : null"
			z-bind:onSecondaryLongPressMoveUpdate="hasEmitHandler('secondaryLongPressMoveUpdate') ? secondaryLongPressMoveUpdate : null"
			z-bind:onSecondaryLongPressUp="hasEmitHandler('secondaryLongPressUp') ? secondaryLongPressUp : null"
			z-bind:onSecondaryLongPressEnd="hasEmitHandler('secondaryLongPressEnd') ? secondaryLongPressEnd : null"
			z-bind:onTertiaryLongPressDown="hasEmitHandler('tertiaryLongPressDown') ? tertiaryLongPressDown : null"
			z-bind:onTertiaryLongPressCancel="hasEmitHandler('tertiaryLongPressCancel') ? tertiaryLongPressCancel : null"
			z-bind:onTertiaryLongPress="hasEmitHandler('tertiaryLongPress') ? tertiaryLongPress : null"
			z-bind:onTertiaryLongPressStart="hasEmitHandler('tertiaryLongPressStart') ? tertiaryLongPressStart : null"
			z-bind:onTertiaryLongPressMoveUpdate="hasEmitHandler('tertiaryLongPressMoveUpdate') ? tertiaryLongPressMoveUpdate : null"
			z-bind:onTertiaryLongPressUp="hasEmitHandler('tertiaryLongPressUp') ? tertiaryLongPressUp : null"
			z-bind:onTertiaryLongPressEnd="hasEmitHandler('tertiaryLongPressEnd') ? tertiaryLongPressEnd : null"
			z-bind:onVerticalDragDown="hasEmitHandler('verticalDragDown') ? verticalDragDown : null"
			z-bind:onVerticalDragStart="hasEmitHandler('verticalDragStart') ? verticalDragStart : null"
			z-bind:onVerticalDragUpdate="hasEmitHandler('verticalDragUpdate') ? verticalDragUpdate : null"
			z-bind:onVerticalDragEnd="hasEmitHandler('verticalDragEnd') ? verticalDragEnd : null"
			z-bind:onVerticalDragCancel="hasEmitHandler('verticalDragCancel') ? verticalDragCancel : null"
			z-bind:onHorizontalDragDown="hasEmitHandler('horizontalDragDown') ? horizontalDragDown : null"
			z-bind:onHorizontalDragStart="hasEmitHandler('horizontalDragStart') ? horizontalDragStart : null"
			z-bind:onHorizontalDragUpdate="hasEmitHandler('horizontalDragUpdate') ? horizontalDragUpdate : null"
			z-bind:onHorizontalDragEnd="hasEmitHandler('horizontalDragEnd') ? horizontalDragEnd : null"
			z-bind:onHorizontalDragCancel="hasEmitHandler('horizontalDragCancel') ? horizontalDragCancel : null"
			z-bind:onForcePressStart="hasEmitHandler('forcePressStart') ? forcePressStart : null"
			z-bind:onForcePressPeak="hasEmitHandler('forcePressPeak') ? forcePressPeak : null"
			z-bind:onForcePressUpdate="hasEmitHandler('forcePressUpdate') ? forcePressUpdate : null"
			z-bind:onForcePressEnd="hasEmitHandler('forcePressEnd') ? forcePressEnd : null"
			z-bind:onPanDown="hasEmitHandler('panDown') ? panDown : null"
			z-bind:onPanStart="hasEmitHandler('panStart') ? panStart : null"
			z-bind:onPanUpdate="hasEmitHandler('panUpdate') ? panUpdate : null"
			z-bind:onPanEnd="hasEmitHandler('panEnd') ? panEnd : null"
			z-bind:onPanCancel="hasEmitHandler('panCancel') ? panCancel : null"
			z-bind:onScaleStart="hasEmitHandler('scaleStart') ? scaleStart : null"
			z-bind:onScaleUpdate="hasEmitHandler('scaleUpdate') ? scaleUpdate : null"
			z-bind:onScaleEnd="hasEmitHandler('scaleEnd') ? scaleEnd : null"
		/>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("hasEmitHandler")
	bool _boundHasEmitHandler(String key) {
	    return this.hasEmitHandler(key);
	}
}