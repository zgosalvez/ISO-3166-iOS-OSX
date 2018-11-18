//
//  BundleController.swift
//  ISO3166
//
//  Created by Zennon Gosalvez on 2017-10-21.
//

class BundleController {
    static let shared = BundleController()

    private(set) var bundle: Bundle

    private var dictionaryCache = [String: [String: Any]]()

    init() {
        let bundleURL = Bundle(for: BundleController.self)
            .url(forResource: "ISO3166", withExtension: "bundle")!

        bundle = Bundle(url: bundleURL)!
    }

    func countryDictionary(country: Country) -> [String: Any] {
        if dictionaryCache[country.rawValue] == nil {
            let countryURL = bundle.url(forResource: country.rawValue,
                                        withExtension: "plist")!
            let data = try! Data(contentsOf: countryURL)
            dictionaryCache[country.rawValue] = try! PropertyListSerialization
                .propertyList(from: data,
                              options: .mutableContainersAndLeaves,
                              format: nil)
                as? [String: Any]
        }

        return dictionaryCache[country.rawValue]!
    }

}
