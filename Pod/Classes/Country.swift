//
//  Country.swift
//  Pods
//
//  Created by Zennon Jean S. Gosalvez on 2016-01-14.
//
//

public enum Country: String, Codable {
    case AU, CA, PH, US

    /// A two-letter code that represents a country name, recommended as the
    /// general purpose code
    public var alpha2Code: String {
        return rawValue
    }

    /// A three-letter code that represents a country name, which is usually
    /// more closely related to the country name
    public var alpha3Code: String {
        return fetchFromDictionary(withKey: "alpha3Code") as! String
    }

    /// A four-letter code that represents a country name that is no longer in
    /// use. The structure depends on the reason why the country name was
    /// removed from ISO 3166-1 and added to ISO 3166-3.
    ///
    /// Country names might be removed from ISO 3166-1 for various reasons
    ///
    /// - A country might change a significant part of its name, for example
    /// Burma (BU) was changed to Myanmar (MM) in 1989. The code element for the
    /// formerly used country name is therefore BUMM.
    /// - A country may divide into two or more new ones, for example
    /// Czechoslovakia was divided into Czech Republic and Slovakia in 1993. The
    /// code element for the formerly used country name Czechoslovakia is CSHH,
    /// HH meaning that no single successor country exists.
    /// - Two or more countries may merge for example Democratic Yemen (YD) and
    /// Yemen Arab Republic (YE) merged into the Republic of Yemen (YE) in 1990.
    /// The code element used for the formerly used country name Democratic
    /// Yemen is YDYE.
    public var alpha4Code: String {
        return fetchFromDictionary(withKey: "alpha4Code") as! String
    }

    /// A three digit numeric code which can be useful to avoid using Latin
    /// script.
    public var numericCode: String {
        return fetchFromDictionary(withKey: "numericCode") as! String
    }

    /// An emoji representing the flag of the country
    public var emoji: String? {
        return fetchFromDictionary(withKey: "emoji") as? String
    }

    public var subdivisions: [Subdivision] {
        let keys = (fetchFromDictionary(withKey: "subdivisions") as! [String: Any]).keys
        var subdivisions = [Subdivision]()

        for key in keys {
            subdivisions.append(Subdivision(rawValue: "\(rawValue)_\(key)")!)
        }

        return subdivisions
    }

    private func fetchFromDictionary(withKey key: String) -> Any {
        let countryPath = Bundle.main.path(forResource: rawValue, ofType: "plist")!
        let countryDictionary = NSDictionary(contentsOfFile: countryPath) as! [String: Any]
        return countryDictionary[key]!
    }
}
