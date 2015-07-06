# JVSLine
A custom Interface Builder-designable line view for iOS, written in Swift.


## Usage
Simply drag a UIView onto your view and set it's class to JVSLine, or programmatically add it as a subview.

### Properties
The following properties are available within Interface Builder and can also be set programmatically.
The preview in Interface Builder is automatically updated once you change a property.

| Name        | Type      | Default Value          | Description  |
| :---------- | :-------- | :--------------------- | :----------  |
| `lineWidth` | `CGFloat` | `1`                    | The line width. |
| `lineColor` | `UIColor` | `UIColor.blackColor()` | The line color. |
| `startX`    | `CGFloat` | `0`                    | The horizontal start point of the line. |
| `endX`      | `CGFloat` | `0`                    | The horizontal end point of the line. Set to `-1` to use the view width. |
| `centerX`   | `Bool`    | `false`                | A value that indicates whether the line should be centered horizontally. If set to `true`, the `startX` and `endX` properties are ignored. |
| `startY`    | `CGFloat` | `0`                    | The vertical start point of the line. |
| `endY`      | `CGFloat` | `0`                    | The vertical end point of the line. Set to `-1` to use the view height. |
| `centerY`   | `Bool`    | `false`                | A value that indicates whether the line should be centered vertically. If set to `true`, the `startY` and `endY` properties are ignored. |


## License
The MIT License (MIT)

Copyright (c) 2015 Joris Vervuurt Software

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