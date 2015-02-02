/*!
 * Scroll
 *
 * Copyright (C) 2015, Jan Pukovský
 * Licensed under the MIT License.
 * http://www.opensource.org/licenses/mit-license.php
 */

part of scroll;

class Scroll {

  final String selector;

  static const Map<String, int> OffsetDefaultOptions = const {
    'left': 0,
    'top': 0,
  };

  Map<String, int> offsetOptions;

  num duration;

  Easing easing;

  int offsetTop;

  num frameDuration = 1000 / 60;

  Function easingFunction;

  Scroll(this.selector, {this.duration: 500, this.easing: Easing.Linear, this.offsetOptions: OffsetDefaultOptions}) {
    querySelectorAll(this.selector)..onClick.listen(_scrollTo);
    easingFunction = Easing.getEasingFunction(easing);
    offsetTop = (offsetOptions['top'] != null && offsetOptions['top'] is int) ? offsetOptions['top'] : 0;
  }

  void _scrollTo(MouseEvent event) {
    event.preventDefault();
    String anchor = getHashFromUrl(event.target);
    int targetPosition = querySelector(anchor).offsetTop;

    if (targetPosition != window.scrollY) { //jeste osetrit nejak
      this._scrolling(targetPosition);

    }
  }

  void _scrolling(int targetPosition) {

    int totalFrames = (duration / frameDuration).round();

    int actualFrame = 0;

    num actualPosition = window.scrollY;

    num currentTime = 0;

    num startValue = 0;

    num finalValue = null; //distance value

    bool directionDown = null;

    if (targetPosition >= actualPosition) {
      finalValue = targetPosition - actualPosition + offsetTop;
      directionDown = true;
    } else {
      finalValue = actualPosition - targetPosition - offsetTop;
      directionDown = false;
    }

    void animate(num frame) {

      if (actualFrame < totalFrames) {

        currentTime += frameDuration;
        num positionInTime = easingFunction(currentTime, startValue, finalValue, duration);
        window.scrollTo(0, ((directionDown) ? (actualPosition + positionInTime) : (actualPosition - positionInTime)).round());
        actualFrame++;
        window.animationFrame.then(animate);

      }
    }
    window.animationFrame.then(animate);
  }

  String getHashFromUrl(EventTarget url) {

    AnchorElement anchor = new AnchorElement(href: url.toString());
    return anchor.hash;
  }

}
