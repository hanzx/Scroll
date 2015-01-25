/*!
 * Scroll
 *
 * Copyright (C) 2015, Jan Pukovský
 * Licensed under the MIT License.
 * http://www.opensource.org/licenses/mit-license.php
 */

part of scroll;

class Easing {

  final int _value;

  const Easing._(this._value);

  static const EaseInBack = const Easing._(0);
  static const EaseOutBack = const Easing._(1);
  static const EaseInOutBack = const Easing._(2);
  static const EaseOutInBack = const Easing._(3);

  static const EaseOutBounce = const Easing._(4);
  static const EaseInBounce = const Easing._(5);
  static const EaseInOutBounce = const Easing._(6);
  static const EaseOutInBounce = const Easing._(7);

  static const EaseInCirc = const Easing._(8);
  static const EaseOutCirc = const Easing._(9);
  static const EaseInOutCirc = const Easing._(10);
  static const EaseOutInCirc = const Easing._(11);

  static const EaseInCubic = const Easing._(12);
  static const EaseOutCubic = const Easing._(13);
  static const EaseInOutCubic = const Easing._(14);
  static const EaseOutInCubic = const Easing._(15);

  static const EaseInElastic = const Easing._(16);
  static const EaseOutElastic = const Easing._(17);
  static const EaseInOutElastic = const Easing._(18);
  static const EaseOutInElastic = const Easing._(19);

  static const EaseInExpo = const Easing._(20);
  static const EaseOutExpo = const Easing._(21);
  static const EaseInOutExpo = const Easing._(22);
  static const ExpoEaseOutIn = const Easing._(23);

  static const Linear = const Easing._(24);

  static const EaseInSine = const Easing._(25);
  static const EaseOutSine = const Easing._(26);
  static const EaseInOutSine = const Easing._(27);
  static const EaseOutInSine = const Easing._(28);

  static const EaseInQuad = const Easing._(29);
  static const EaseOutQuad = const Easing._(30);
  static const EaseInOutQuad = const Easing._(31);
  static const EaseOutInQuad = const Easing._(32);

  static const EaseInQuart = const Easing._(33);
  static const EaseOutQuart = const Easing._(34);
  static const EaseInOutQuart = const Easing._(35);
  static const EaseOutInQuart = const Easing._(36);

  static const EaseInQuint = const Easing._(37);
  static const EaseOutQuint = const Easing._(38);
  static const EaseInOutQuint = const Easing._(39);
  static const EaseOutInQuint = const Easing._(40);

  /// Get Easing Function
  ///
  /// [easing] Easing constant
  ///
  /// Returns easing function.
  ///
  static Function getEasingFunction(Easing easing) {

    switch (easing) {

      case EaseInBack:
        return EasingFunctions.easeInBack;

      case EaseOutBack:
        return EasingFunctions.easeOutBack;

      case EaseInOutBack:
        return EasingFunctions.easeInOutBack;

      case EaseOutInBack:
        return EasingFunctions.easeOutInBack;

      case EaseOutBounce:
        return EasingFunctions.easeOutBounce;

      case EaseInBounce:
        return EasingFunctions.easeInBounce;

      case EaseInOutBounce:
        return EasingFunctions.easeInOutBounce;

      case EaseOutInBounce:
        return EasingFunctions.easeOutInBounce;

      case EaseInCirc:
        return EasingFunctions.easeInCirc;

      case EaseOutCirc:
        return EasingFunctions.easeOutCirc;

      case EaseInOutCirc:
        return EasingFunctions.easeInOutCirc;

      case EaseOutInCirc:
        return EasingFunctions.easeOutInCirc;

      case EaseInCubic:
        return EasingFunctions.easeInCubic;

      case EaseOutCubic:
        return EasingFunctions.easeOutCubic;

      case EaseInOutCubic:
        return EasingFunctions.easeInOutCubic;

      case EaseOutInCubic:
        return EasingFunctions.easeOutInCubic;

      case EaseInElastic:
        return EasingFunctions.easeInElastic;

      case EaseOutElastic:
        return EasingFunctions.easeOutElastic;

      case EaseInOutElastic:
        return EasingFunctions.easeInOutElastic;

      case EaseOutInElastic:
        return EasingFunctions.easeOutInElastic;

      case EaseInExpo:
        return EasingFunctions.easeInExpo;

      case EaseOutExpo:
        return EasingFunctions.easeOutExpo;

      case EaseInOutExpo:
        return EasingFunctions.easeInOutExpo;

      case ExpoEaseOutIn:
        return EasingFunctions.expoEaseOutIn;

      case Linear:
        return EasingFunctions.linear;

      case EaseInSine:
        return EasingFunctions.easeInSine;

      case EaseOutSine:
        return EasingFunctions.easeOutSine;

      case EaseInOutSine:
        return EasingFunctions.easeInOutSine;

      case EaseOutInSine:
        return EasingFunctions.easeOutInSine;

      case EaseInQuad:
        return EasingFunctions.easeInQuad;

      case EaseOutQuad:
        return EasingFunctions.easeInQuad;

      case EaseInOutQuad:
        return EasingFunctions.easeInOutQuad;

      case EaseOutInQuad:
        return EasingFunctions.easeOutInQuad;

      case EaseInQuart:
        return EasingFunctions.easeInQuart;

      case EaseOutQuart:
        return EasingFunctions.easeOutQuart;

      case EaseInOutQuart:
        return EasingFunctions.easeInOutQuart;

      case EaseOutInQuart:
        return EasingFunctions.easeOutInQuart;

      case EaseInQuint:
        return EasingFunctions.easeInQuint;

      case EaseOutQuint:
        return EasingFunctions.easeOutQuint;

      case EaseInOutQuint:
        return EasingFunctions.easeInOutQuint;

      case EaseOutInQuint:
        return EasingFunctions.easeOutInQuint;

      default:
        return EasingFunctions.linear;

    }

  }
}
