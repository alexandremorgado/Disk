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

extension NSBitmapImageRep {
    var png: Data? { representation(using: .png, properties: [:]) }
    var jpeg: Data? { representation(using: .jpeg, properties: [:]) }
}
extension Data {
    var bitmap: NSBitmapImageRep? { NSBitmapImageRep(data: self) }
}
extension NSImage {
    
}

// Add APIs that UIImage has but NSImage doesn't.
public extension NSImage {
    var cgImage: CGImage? {
        var proposedRect = CGRect(origin: .zero, size: size)

        return cgImage(forProposedRect: &proposedRect,
                       context: nil,
                       hints: nil)
    }
    
    func pngData() -> Data? {
        return tiffRepresentation?.bitmap?.png
    }
    func jpegData(compressionQuality: Int) -> Data? {
        return tiffRepresentation?.bitmap?.jpeg
    }
    
}
#endif
