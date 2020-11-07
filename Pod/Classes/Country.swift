//
//  Country.swift
//  Pods
//
//  Created by Zennon Jean S. Gosalvez on 2016-01-14.
//
//

public enum Country: String, Codable {
    case AU, CA, DE, ES, GB, ID, JP, MX, PH, TW, US

    /// A two-letter code that represents a country name, recommended as the
    /// general purpose code
    public var alpha2Code: String {
        return rawValue
    }

    /// A three-letter code that represents a country name, which is usually
    /// more closely related to the country name
    public var alpha3Code: String {
        return DataController.shared.countries[self]!.alpha3Code
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
    public var alpha4Code: String? {
        return DataController.shared.countries[self]!.alpha4Code
    }

    /// A three digit numeric code which can be useful to avoid using Latin
    /// script.
    public var numericCode: String {
        return DataController.shared.countries[self]!.numericCode
    }

    /// An emoji representing the flag of the country
    public var emoji: String {
        return DataController.shared.countries[self]!.emoji
    }

    public var subdivisions: [Subdivision] {
        return DataController.shared.subdivisions.keys
            .filter { $0.code.starts(with: rawValue) && $0.parent == nil }
            .sorted { $0.code < $1.code }
    }
}
