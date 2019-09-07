//
//  File.swift
//  
//
//  Created by Carson Katri on 9/4/19.
//

public enum BorderStyle: String {
    case none
    case dotted
    case inset
    case dashed
}

public func border(sides: [Side] = [.top, .right, .bottom, .left], _ color: Color, _ width: Pixel, _ style: BorderStyle) -> Declaration {
    Declaration(code: sides.map {
        "border-\($0.rawValue): \(width)px \(style.rawValue) \(color.description);"
    }.joined(separator: " "))
}

public func border(_ style: BorderStyle) -> Declaration {
    Declaration(property: .border, value: style.rawValue)
}

public func borderRadius(_ radius: CSSUnit) -> Declaration {
    Declaration(property: .borderRadius, value: radius.description)
}
