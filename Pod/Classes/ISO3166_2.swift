//
//  ISO3166_2.swift
//  Pods
//
//  Created by Zennon Jean S. Gosalvez on 2016-01-14.
//
//

let ISO3166_2Code = "3166-2 code"
let ISO3166_2SubdivisionCategory = "Subdivision category"
let ISO3166_2SubdivisionName = "Subdivision name"

public class ISO3166_2 {
    
    private static let subdivisionCodes = [
        [
            ISO3166_1Alpha_2Code: "US",
            ISO3166_2Code: "US-CA",
            ISO3166_2SubdivisionCategory: "state",
            ISO3166_2SubdivisionName: "California",
        ],
    ]
    
    public class func subdivisionCodeFromCode(code: String) -> SubdivisionCode? {
        for subdivisionCode in subdivisionCodes {
            if code == subdivisionCode[ISO3166_2Code] {
                var subdivisionCodeStructure = SubdivisionCode()
                
                subdivisionCodeStructure.ISO3166_1Alpha_2Code = subdivisionCode[ISO3166_1Alpha_2Code]
                subdivisionCodeStructure.code = subdivisionCode[ISO3166_2Code]
                subdivisionCodeStructure.category = subdivisionCode[ISO3166_2SubdivisionCategory]
                subdivisionCodeStructure.name = subdivisionCode[ISO3166_2SubdivisionName]
                
                return subdivisionCodeStructure
            }
        }
        
        return nil
    }
    
    public class func subdivisionCodesFromISO3166_1Alpha_2Code(code: String) -> [SubdivisionCode]? {
        var subdivisionCodesArray = [SubdivisionCode]()
        
        for subdivisionCode in subdivisionCodes {
            if code == subdivisionCode[ISO3166_1Alpha_2Code] {
                var subdivisionCodeStructure = SubdivisionCode()
                
                subdivisionCodeStructure.ISO3166_1Alpha_2Code = subdivisionCode[ISO3166_1Alpha_2Code]
                subdivisionCodeStructure.code = subdivisionCode[ISO3166_2Code]
                subdivisionCodeStructure.category = subdivisionCode[ISO3166_2SubdivisionCategory]
                subdivisionCodeStructure.name = subdivisionCode[ISO3166_2SubdivisionName]
                
                subdivisionCodesArray.append(subdivisionCodeStructure)
            }
        }
        
        return nil
    }
}