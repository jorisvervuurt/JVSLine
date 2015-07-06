//
//  JVSLine.swift
//  JVSLine
//
//  Created by Joris Vervuurt on 11-04-15.
//  Copyright (c) 2015 Joris Vervuurt Software. All rights reserved.
//

//  The MIT License (MIT)
//
//  Copyright (c) 2015 Joris Vervuurt Software
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit

/// Custom Interface Builder-designable line view.
@IBDesignable class JVSLine: UIView {
	
	// MARK: - Properties
	
	/// The line width.
	@IBInspectable var lineWidth: CGFloat = 1 {
		didSet {
			self.setNeedsDisplay()
		}
	}
	
	/// The line color.
	@IBInspectable var lineColor: UIColor = UIColor.blackColor() {
		didSet {
			self.setNeedsDisplay()
		}
	}
	
	/// The horizontal start point of the line.
	@IBInspectable var startX: CGFloat = 0 {
		didSet {
			self.setNeedsDisplay()
		}
	}
	
	/// The horizontal end point of the line. Set to -1 to use the view width.
	@IBInspectable var endX: CGFloat = 0 {
		didSet {
			self.setNeedsDisplay()
		}
	}
	
	/// A value that indicates whether the line should be centered horizontally. If set to true, the startX and endX properties are ignored.
	@IBInspectable var centerX: Bool = false {
		didSet {
			self.setNeedsDisplay()
		}
	}
	
	/// The vertical start point of the line.
	@IBInspectable var startY: CGFloat = 0 {
		didSet {
			self.setNeedsDisplay()
		}
	}
	
	/// The vertical end point of the line. Set to -1 to use the view height.
	@IBInspectable var endY: CGFloat = 0 {
		didSet {
			self.setNeedsDisplay()
		}
	}
	
	/// A value that indicates whether the line should be centered vertically. If set to true, the startY and endY properties are ignored.
	@IBInspectable var centerY: Bool = false {
		didSet {
			self.setNeedsDisplay()
		}
	}
	
	// MARK: - Functions
	
	override func drawRect(rect: CGRect) {
		var startX: CGFloat = self.startX
		var endX: CGFloat = self.endX == -1 ? self.bounds.width : self.endX
		
		if self.centerX {
			let centerX: CGFloat = self.bounds.width / 2
			startX = centerX
			endX = centerX
		}
		
		var startY: CGFloat = self.startY
		var endY: CGFloat = self.endY == -1 ? self.bounds.height : self.endY
		
		if self.centerY {
			let centerY: CGFloat = self.bounds.height / 2
			startY = centerY
			endY = centerY
		}
		
		let context: CGContext = UIGraphicsGetCurrentContext()
		
		CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor)
		CGContextSetLineWidth(context, self.lineWidth)
		
		CGContextMoveToPoint(context, startX, startY)
		CGContextAddLineToPoint(context, endX, endY)
		
		CGContextStrokePath(context)
	}

}
