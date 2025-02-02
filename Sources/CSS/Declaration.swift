//
//  Declaration.swift
//  
//
//  Created by Carson Katri on 9/4/19.
//

public struct Declaration: CSS {
    let property: CSSProperty
    let value: String
    var code: String? = nil
    
    init(property: CSSProperty, value: String) {
        self.property = property
        self.value = value
    }
    
    init(code: String) {
        self.property = .all
        self.value = ""
        self.code = code
    }
    
    public func string() -> String {
        if let code = code {
            return code
        }
        return "\(property.description.replacingOccurrences(of: "_", with: "-")): \(value);"
    }
}
