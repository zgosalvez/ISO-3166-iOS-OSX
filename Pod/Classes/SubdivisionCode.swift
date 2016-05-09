//
//  SubdivisionCode.swift
//  Pods
//
//  Created by Zennon Jean S. Gosalvez on 2016-01-14.
//
//

public struct SubdivisionCode {
    public var ISO3166_1Alpha_2Code: String?
    public var code: String?
    public var category: String?
    public var name: String?
    public var parentSubdivisionCode: String?
    
    init(
        ISO3166_1Alpha_2Code: String?,
        code: String?,
        category: String?,
        name: String?,
        parentSubdivisionCode: String?) {
        self.ISO3166_1Alpha_2Code = ISO3166_1Alpha_2Code
        self.code = code
        self.category = category
        self.name = name
        self.parentSubdivisionCode = parentSubdivisionCode
    }
    
    public var subdivisionCodes: [SubdivisionCode] {
        return ISO3166_2.subdivisionCodes.filter {
            $0.ISO3166_1Alpha_2Code == ISO3166_1Alpha_2Code && $0.parentSubdivisionCode == code
        }
    }
}