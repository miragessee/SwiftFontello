//
//  Enum.swift
//  SwiftFontello
//
//  Created by Admin on 05/12/16.
//  Copyright © 2016 miragessee. All rights reserved.
//

import UIKit

public enum SwiftFontello: String {
    case FTLCloudFlashAlt = "\u{ed8f}"
    
    /// Get a Fontello string from the given CSS icon code. Icon code can be found here: http://fontello.com/
    ///
    /// - parameter code: The preferred icon name.
    /// - returns: Fontello icon.
    public static func fromCode(_ code: String) -> SwiftFontello? {
        guard let raw = SwiftFontelloIcons[code], let icon = SwiftFontello(rawValue: raw) else {
            return nil
        }
        return icon
    }
}

/// An array of Fontello icon codes.
public let SwiftFontelloIcons = [
    "icon-cloud-flash": "\u{ed8f}"
]
