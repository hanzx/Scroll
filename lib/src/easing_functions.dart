/*!
 * Scroll
 *
 * Copyright (C) 2015, Jan Pukovský
 * Licensed under the MIT License.
 * http://www.opensource.org/licenses/mit-license.php
 */

part of scroll;

class EasingFunctions {

  /// Ease In Back
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInBack(num t, num b, num c, num d) {

    return c * (t /= d) * t * ((1.70158 + 1) * t - 1.70158) + b;
  }

  /// Ease Out Back
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutBack(num t, num b, num c, num d) {

    return c * ((t /= d - 1) * t * ((1.70158 + 1) * t + 1.70158) + 1) + b;
  }

  /// Ease In Out Back
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInOutBack(num t, num b, num c, num d) {
    num s = 1.70158;

    if ((t /= d / 2) < 1) {
      return c / 2 * (t * t * (((s *= (1.525)) + 1) * t - s)) + b;
    }
    return c / 2 * ((t -= 2) * t * (((s *= (1.525)) + 1) * t + s) + 2) + b;
  }

  /// Ease Out In Back
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutInBack(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeOutBack(t * 2, b, c / 2, d);
    }
    return easeInBack((t * 2) - d, b + c / 2, c / 2, d);
  }

  /// Ease Out Bounce
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutBounce(num t, num b, num c, num d) {

    if ((t /= d) < (1 / 2.75)) {
      return c * (7.5625 * t * t) + b;
    } else if (t < (2 / 2.75)) {
      return c * (7.5625 * (t -= (1.5 / 2.75)) * t + .75) + b;
    } else if (t < (2.5 / 2.75)) {
      return c * (7.5625 * (t -= (2.25 / 2.75)) * t + .9375) + b;
    } else {
      return c * (7.5625 * (t -= (2.625 / 2.75)) * t + .984375) + b;
    }
  }

  /// Ease In Bounce
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInBounce(num t, num b, num c, num d) {

    return c - easeOutBounce(d - t, 0, c, d) + b;
  }

  /// Ease In Out Bounce
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInOutBounce(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeInBounce(t * 2, 0, c, d) * .5 + b;
    } else {
      return easeOutBounce(t * 2 - d, 0, c, d) * .5 + c * .5 + b;
    }
  }

  /// Ease Out In Bounce
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutInBounce(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeOutBounce(t * 2, b, c / 2, d);
    }
    return easeInBounce((t * 2) - d, b + c / 2, c / 2, d);
  }

  /// Ease In Circ
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInCirc(num t, num b, num c, num d) {

    return -c * (sqrt(1 - (t /= d) * t) - 1) + b;
  }

  /// Ease Out Circ
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutCirc(num t, num b, num c, num d) {

    return c * sqrt(1 - (t = t / d - 1) * t) + b;
  }

  /// Ease In Out Circ
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInOutCirc(num t, num b, num c, num d) {

    if ((t /= d / 2) < 1) {
      return -c / 2 * (sqrt(1 - t * t) - 1) + b;
    }
    return c / 2 * (sqrt(1 - (t -= 2) * t) + 1) + b;
  }

  /// Ease Out In Circ
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutInCirc(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeOutCirc(t * 2, b, c / 2, d);
    }
    return easeInCirc((t * 2) - d, b + c / 2, c / 2, d);
  }

  /// Ease In Cubic
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInCubic(num t, num b, num c, num d) {

    return c * (t /= d) * t * t + b;
  }

  /// Ease Out Cubic
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutCubic(num t, num b, num c, num d) {

    return c * ((t = t / d - 1) * t * t + 1) + b;
  }

  /// Ease In Out Cubic
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInOutCubic(num t, num b, num c, num d) {

    if ((t /= d / 2) < 1) {
      return c / 2 * t * t * t + b;
    }
    return c / 2 * ((t -= 2) * t * t + 2) + b;
  }

  /// Ease Out In Cubic
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutInCubic(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeOutCubic(t * 2, b, c / 2, d);
    }
    return easeInCubic((t * 2) - d, b + c / 2, c / 2, d);
  }

  /// Ease In Elastic
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInElastic(num t, num b, num c, num d) {

    if ((t /= d) == 1) {
      return b + c;
    }

    num p = d * 0.3;
    num s = p / 4;

    return -(c * pow(2, 10 * (t -= 1)) * sin((t * d - s) * (2 * PI) / p)) + b;
  }

  /// Ease Out Elastic
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutElastic(num t, num b, num c, num d) {

    if ((t /= d) == 1) {
      return b + c;
    }
    num p = d * 0.3;
    num s = p / 4;

    return (c * pow(2, -10 * t) * sin((t * d - s) * (2 * PI) / p) + c + b);
  }

  /// Ease In Out Elastic
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInOutElastic(num t, num b, num c, num d) {

    if ((t /= d / 2) == 2) {
      return b + c;
    }
    num p = d * (.3 * 1.5);
    num s = p / 4;

    if (t < 1) {
      return -.5 * (c * pow(2, 10 * (t -= 1)) * sin((t * d - s) * (2 * PI) / p)) + b;
    }
    return c * pow(2, -10 * (t -= 1)) * sin((t * d - s) * (2 * PI) / p) * .5 + c + b;
  }

  /// Ease Out In Elastic
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutInElastic(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeOutElastic(t * 2, b, c / 2, d);
    }
    return easeInElastic((t * 2) - d, b + c / 2, c / 2, d);
  }

  /// Ease In Expo
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInExpo(num t, num b, num c, num d) {

    return (t == 0) ? b : c * pow(2, 10 * (t / d - 1)) + b;
  }

  /// Ease Out Expo
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutExpo(num t, num b, num c, num d) {

    return (t == d) ? b + c : c * (-pow(2, -10 * t / d) + 1) + b;
  }

  /// Ease In Out Expo
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInOutExpo(num t, num b, num c, num d) {

    if (t == 0) {
      return b;
    }
    if (t == d) {
      return b + c;
    }

    if ((t /= d / 2) < 1) {
      return c / 2 * pow(2, 10 * (t - 1)) + b;
    }
    return c / 2 * (-pow(2, -10 * --t) + 2) + b;
  }

  /// Ease Out In Expo
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num expoEaseOutIn(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeOutExpo(t * 2, b, c / 2, d);
    }
    return easeInExpo((t * 2) - d, b + c / 2, c / 2, d);
  }

  /// Linear
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num linear(num t, num b, num c, num d) {

    return c * t / d + b;
  }

  /// Ease In Sine
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInSine(num t, num b, num c, num d) {

    return -c * cos(t / d * (PI / 2)) + c + b;
  }

  /// Ease Out Sine
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutSine(num t, num b, num c, num d) {

    return c * sin(t / d * (PI / 2)) + b;
  }

  /// Ease In Out Sine
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInOutSine(num t, num b, num c, num d) {

    if ((t /= d / 2) < 1) {
      return c / 2 * (sin(PI * t / 2)) + b;
    }
    return -c / 2 * (cos(PI * --t / 2) - 2) + b;
  }

  /// Ease Out In Sine
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutInSine(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeOutSine(t * 2, b, c / 2, d);
    }
    return easeInSine((t * 2) - d, b + c / 2, c / 2, d);
  }

  /// Ease In Quad
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInQuad(num t, num b, num c, num d) {

    return c * (t /= d) * t + b;
  }

  /// Ease Out Quad
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutQuad(num t, num b, num c, num d) {

    return -c * (t /= d) * (t - 2) + b;
  }

  /// Ease In Out Quad
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInOutQuad(num t, num b, num c, num d) {

    if ((t /= d / 2) < 1) {
      return c / 2 * t * t + b;
    }
    return -c / 2 * ((--t) * (t - 2) - 1) + b;
  }

  /// Ease Out In Quad
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutInQuad(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeOutQuad(t * 2, b, c / 2, d);
    }
    return easeInQuad((t * 2) - d, b + c / 2, c / 2, d);
  }

  /// Ease In Quart
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInQuart(num t, num b, num c, num d) {

    return c * (t /= d) * t * t * t + b;
  }

  /// Ease Out Quart
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutQuart(num t, num b, num c, num d) {

    return -c * ((t = t / d - 1) * t * t * t - 1) + b;
  }

  /// Ease In Out Quart
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInOutQuart(num t, num b, num c, num d) {

    if ((t /= d / 2) < 1) {
      return c / 2 * t * t * t * t + b;
    }
    return -c / 2 * ((t -= 2) * t * t * t - 2) + b;
  }

  /// Ease Out In Quart
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutInQuart(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeOutQuart(t * 2, b, c / 2, d);
    }
    return easeInQuart((t * 2) - d, b + c / 2, c / 2, d);
  }

  /// Ease In Quint
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInQuint(num t, num b, num c, num d) {

    return c * (t /= d) * t * t * t * t + b;
  }

  /// Ease Out Quint
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutQuint(num t, num b, num c, num d) {

    return c * ((t = t / d - 1) * t * t * t * t + 1) + b;
  }

  /// Ease In Out Quint
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeInOutQuint(num t, num b, num c, num d) {

    if ((t /= d / 2) < 1) {
      return c / 2 * t * t * t * t * t + b;
    }
    return c / 2 * ((t -= 2) * t * t * t * t + 2) + b;
  }

  /// Ease Out In Quint
  ///
  /// [t] Current time in seconds.
  /// [b] Starting value.
  /// [c] Final value.
  /// [d] Duration of animation.
  ///
  /// Returns value.
  ///
  static num easeOutInQuint(num t, num b, num c, num d) {

    if (t < d / 2) {
      return easeOutQuint(t * 2, b, c / 2, d);
    }
    return easeInQuint((t * 2) - d, b + c / 2, c / 2, d);
  }
}
