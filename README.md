# ruler_picker_bn

Flutter package for ruler type value picker

## Screenshots

<img src="https://raw.githubusercontent.com/BoredNerdy/ruler_picker/main/screenshots/ss.png" height="400em" width="225em" />

## Usage

[Example](https://github.com/BoredNerdy/ruler_picker/blob/main/example/lib/main.dart)

To use this package :

* add the dependency to your [pubspec.yaml](https://github.com/BoredNerdy/ruler_picker/blob/main/pubspec.yaml) file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    ruler_picker_bn:
```

### How to use

```dart
...
 SizedBox(
  width: 200,
  height: 75,
  child: RulerPicker(
                    onChange: (val) {
                        setState(() {
                          valueKG = val;
                        });
                    },
                    background: Colors.white,
                    lineColor: Colors.black,
                    direction: Axis.horizontal,
                    startValue: 70,
                    maxValue: 200,
                  ),
 ),
...
```

### List Of Properties
* background : set ruler background color
* lineColor  : set ruler value line color
* direction  : set ruler direction
* startValue : set ruler starting value position
* maxValue   : set ruler max value
* minValue   : set ruler min value
* padding    : set ruler padding value
* onChange   : event for get to ruler value


# License
Copyright (c) 2022 BoredNerdy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
