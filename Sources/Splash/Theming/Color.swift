/**
 *  Splash
 *  Copyright (c) John Sundell 2018
 *  MIT license - see LICENSE.md
 */

#if canImport(UIKit)
import UIKit
public typealias Color = UIColor
#elseif canImport(AppKit)
import AppKit
public typealias Color = NSColor
#endif

#if !os(Linux)
internal extension Color {
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}
#endif
