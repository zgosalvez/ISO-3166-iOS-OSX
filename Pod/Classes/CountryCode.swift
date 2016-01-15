//
//  CountryCode.swift
//  Pods
//
//  Created by Zennon Jean S. Gosalvez on 2016-01-14.
//
//

public struct CountryCode {
    public var alpha_2Code: String?
    public var alpha_3Code: String?
    public var numericCode: Int?
    public var fullName: String?
    public var shortName: String?
    public var shortNameLowerCase: String?
    
    public var subdivisionCodes: [SubdivisionCode]? {
        if let alpha_2Code = alpha_2Code {
            return ISO3166_2.subdivisionCodesFromISO3166_1Alpha_2Code(alpha_2Code)
        }
        
        return nil
    }
}