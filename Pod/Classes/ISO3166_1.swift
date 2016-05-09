//
//  ISO3166_1.swift
//  Pods
//
//  Created by Zennon Jean S. Gosalvez on 2016-01-14.
//
//

public class ISO3166_1 {
    
    public enum CodeType: String {
        case Alpha_2 = "Alpha-2 code"
        case Alpha_3 = "Alpha-3 code"
        case Numeric = "Numeric code"
    }
    
    public static let countryCodes = [
        CountryCode(alpha_2Code: "AU",
            alpha_3Code: "AUS",
            numericCode: 036,
            fullName: nil,
            shortName: "AUSTRALIA",
            shortNameLowerCase: "Australia",
            emoji: "🇦🇺"),
        CountryCode(alpha_2Code: "CA",
            alpha_3Code: "CAN",
            numericCode: 124,
            fullName: nil,
            shortName: "CANADA",
            shortNameLowerCase: "Canada",
            emoji: "🇨🇦"),
        CountryCode(alpha_2Code: "PH",
            alpha_3Code: "PHL",
            numericCode: 608,
            fullName: "the Republic of the Philippines",
            shortName: "PHILIPPINES",
            shortNameLowerCase: "Philippines (the)",
            emoji: "🇵🇭"),
        CountryCode(alpha_2Code: "US",
            alpha_3Code: "USA",
            numericCode: 840,
            fullName: "the United States of America",
            shortName: "UNITED STATES OF AMERICA",
            shortNameLowerCase: "United States of America (the)",
            emoji: "🇺🇸"),
    ]
    
    public class func countryCodeFromCode(code: AnyObject, ofType type: CodeType) -> CountryCode? {
        for countryCode in countryCodes {
            var countryCodeFound: CountryCode?
            
            switch  type {
            case .Alpha_2 where countryCode.alpha_2Code == code as? String:
                fallthrough
                
            case .Alpha_3 where countryCode.alpha_3Code == code as? String:
                fallthrough
                
            case .Numeric where countryCode.numericCode == code as? Int:
                return countryCode
                
            default:
                break
            }
        }
        
        return nil
    }
}