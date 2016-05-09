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
    public var emoji: Character?
    
    public var shorterNameLowerCase: String? {
        return shortNameLowerCase?
            .stringByReplacingOccurrencesOfString(" (the)", withString: "")
    }
    
    init(
        alpha_2Code: String?,
        alpha_3Code: String?,
        numericCode: Int?,
        fullName: String?,
        shortName: String?,
        shortNameLowerCase: String?,
        emoji: Character?) {
        self.alpha_2Code = alpha_2Code
        self.alpha_3Code = alpha_3Code
        self.numericCode = numericCode
        self.fullName = fullName
        self.shortName = shortName
        self.shortNameLowerCase = shortNameLowerCase
        self.emoji = emoji
    }
    
    public var subdivisionCodes: [SubdivisionCode] {
        return ISO3166_2.subdivisionCodes.filter {
            $0.ISO3166_1Alpha_2Code == alpha_2Code && $0.parentSubdivisionCode == nil
        }
    }
}