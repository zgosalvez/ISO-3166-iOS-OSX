//
//  ISO3166_1.swift
//  Pods
//
//  Created by Zennon Jean S. Gosalvez on 2016-01-14.
//
//

let ISO3166_1Alpha_2Code = "Alpha-2 code"
let ISO3166_1Alpha_3Code = "Alpha-3 code"
let ISO3166_1FullName = "Full name"
let ISO3166_1NumericCode = "Numeric code"
let ISO3166_1ShortName = "Short name"
let ISO3166_1ShortNameLowerCase = "Short name lower case"

public class ISO3166_1 {
    
    public enum CodeType: String {
        case Alpha_2 = "Alpha-2 code"
        case Alpha_3 = "Alpha-3 code"
        case Numeric_3 = "Numeric code"
    }
    
    private static let countryCodes = [
        [
            ISO3166_1Alpha_2Code: "US",
            ISO3166_1Alpha_3Code: "USA",
            ISO3166_1NumericCode: 840,
            ISO3166_1FullName: "the United States of America",
            ISO3166_1ShortName: "UNITED STATES OF AMERICA",
            ISO3166_1ShortNameLowerCase: "United States of America (the)",
        ],
    ]
    
    public class func countryCodeFromCode(code: String, ofType type: CodeType) -> CountryCode? {
        for countryCode in countryCodes {
            if code == countryCode[type.rawValue] {
                var countryCodeStructure = CountryCode()
                
                countryCodeStructure.alpha_2Code = countryCode[ISO3166_1Alpha_2Code] as? String
                countryCodeStructure.alpha_3Code = countryCode[ISO3166_1Alpha_3Code] as? String
                countryCodeStructure.numericCode = countryCode[ISO3166_1NumericCode] as? Int
                countryCodeStructure.fullName = countryCode[ISO3166_1FullName] as? String
                countryCodeStructure.shortName = countryCode[ISO3166_1ShortName] as? String
                countryCodeStructure.shortNameLowerCase = countryCode[ISO3166_1ShortNameLowerCase] as? String
                
                return countryCodeStructure
            }
        }
        
        return nil
    }
}