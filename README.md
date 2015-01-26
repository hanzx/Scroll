# scroll

A Dart scroll app for scroll animation to any DOM element.

##Features

* Uses requestAnimationFrame()
* Configurable duration, easing, offset
* Easing options (ease-in, ease-out, ease-in-out, ease-out-in) for algorithms (back, bounce, circ, cubic, elastic, expo, linear, sine, quad, quart, quint).

## Examples

HTML navigation:

```html
  <ul class="nav navbar-nav navbar-right">
    <li class=""><a href="#introduction">Introduction</a></li>
    <li><a href="#manufacture-furniture">Manufacture furniture</a></li>
    <li><a href="#why-we">Why furniture from us</a></li>
    <li><a href="#reference">Reference</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
```

A simple usage example:

```dart
  import 'package:scroll/scroll.dart';

  main(){
    new Scroll('ul.nav li a');
  }
```

More advanced solution:

```dart
  import 'package:scroll/scroll.dart';

  main(){
    new Scroll('ul.nav li a', duration:1000, easing: Easing.EaseInOutElastic, offsetOptions: {
    'top': -103.8
  });
}
```

## License
This library is licensed under MIT.

