//
//  NSImage+Extensions.swift
//  
//
//  Created by Alexandre Morgado on 23/07/20.
//

#if os(macOS)
import Cocoa

// Typealias UIImage to NSImage
public typealias UIImage = NSImage

// Add APIs that UIImage has but NSImage doesn't.
public extension NSImage {
    var cgImage: CGImage? {
        var proposedRect = CGRect(origin: .zero, size: size)

        return cgImage(forProposedRect: &proposedRect,
                       context: nil,
                       hints: nil)
    }

//    convenience init?(named name: String) {
//        self.init(named: Name(name))
//    }
}
#endif
