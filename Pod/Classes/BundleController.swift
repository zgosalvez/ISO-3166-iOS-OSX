//
//  BundleController.swift
//  ISO3166
//
//  Created by Zennon Gosalvez on 2017-10-21.
//

class BundleController {
    static let shared = BundleController()

    private(set) var bundle: Bundle

    init() {
        let bundleURL = Bundle(for: BundleController.self)
            .url(forResource: "ISO3166", withExtension: "bundle")!
        
        bundle = Bundle(url: bundleURL)!
    }

}
