//
//  Subdivision.swift
//  Pods
//
//  Created by Zennon Jean S. Gosalvez on 2016-01-14.
//
//

public enum Subdivision: String, Codable {
    case AU_ACT
    case PH_00, PH_01, PH_02, PH_03, PH_05, PH_06, PH_07, PH_08, PH_09, PH_10, PH_11, PH_12, PH_13, PH_14, PH_15, PH_40, PH_41, PH_ABR, PH_AGN, PH_AGS, PH_AKL, PH_ALB, PH_ANT, PH_APA, PH_AUR, PH_BAS, PH_BAN, PH_BTN, PH_BTG, PH_BEN, PH_BIL, PH_BOH, PH_BUK, PH_BUL, PH_CAG, PH_CAN, PH_CAS, PH_CAM, PH_CAP, PH_CAT, PH_CAV, PH_CEB, PH_COM, PH_NCO, PH_DAV, PH_DAS, PH_DVO, PH_DAO, PH_DIN, PH_EAS, PH_GUI, PH_IFU, PH_ILN, PH_ILS, PH_ILI, PH_ISA, PH_KAL, PH_LAG, PH_LAN, PH_LAS, PH_LUN, PH_LEY, PH_MAG, PH_MAD, PH_MAS, PH_MDC, PH_MDR, PH_MSC, PH_MSR, PH_MOU, PH_NEC, PH_NER, PH_NSA, PH_NUE, PH_NUV, PH_PLW, PH_PAM, PH_PAN, PH_QUE, PH_QUI, PH_RIZ, PH_ROM, PH_WSA, PH_SAR, PH_SIG, PH_SOR, PH_SCO, PH_SLE, PH_SUK, PH_SLU, PH_SUN, PH_SUR, PH_TAR, PH_TAW, PH_ZMB, PH_ZAN, PH_ZAS, PH_ZSI
    case US_AL, US_AK, US_AS, US_AZ, US_AR, US_CA, US_CO, US_CT, US_DE, US_DC, US_FL, US_GA, US_GU, US_HI, US_ID, US_IL, US_IN, US_IA, US_KS, US_KY, US_LA, US_ME, US_MD, US_MA, US_MI, US_MN, US_MS, US_MO, US_MT, US_NE, US_NV, US_NH, US_NJ, US_NM, US_NY, US_NC, US_ND, US_MP, US_OH, US_OK, US_OR, US_PA, US_PR, US_RI, US_SC, US_SD, US_TN, US_TX, US_UM, US_UT, US_VT, US_VI, US_VA, US_WA, US_WV, US_WI, US_WY

    /// A code that represents the name of a principal subdivision (e.g province
    /// or state) of countries coded in ISO 3166-1. This code is based on the
    /// two-letter code element from ISO 3166-1 followed by a separator and up
    /// to three alphanumeric characters. The characters after the separator
    /// cannot be used on their own to denote a subdivision, they must be
    /// preceded by the alpha-2 country code.
    ///
    /// For example – ID-RI is the Riau province of Indonesia and NG-RI is the
    /// Rivers province in Nigeria.
    ///
    /// The codes denoting the subdivision are usually obtained from national
    /// sources and stem from coding systems already in place in the country.
    public var code: String {
        return rawValue.replacingOccurrences(of: "_", with: "-")
    }

    public var country: Country {
        let index = rawValue.index(rawValue.startIndex, offsetBy: 2)
        return Country(rawValue: String(rawValue[..<index]))!
    }

    public var category: String {
        return DataController.shared.subdivisions[self]!.category
    }

    public var name: String {
        let name = DataController.shared.subdivisions[self]!.name
        let preferredLanguage = Locale.preferredLanguages.first ?? "en"

        return name[preferredLanguage] ?? name["en"]!
    }

    public var parent: Subdivision? {
        guard let parent = DataController.shared.subdivisions[self]!.parent
            else { return nil }

        return Subdivision(rawValue: "\(country.rawValue)_\(parent)")
    }

    public init?(code: String) {
        self.init(rawValue: code.replacingOccurrences(of: "-", with: "_"))
    }

    public var subdivisions: [Subdivision] {
        return DataController.shared.subdivisions.keys
            .filter { $0.code.starts(with: country.alpha2Code) && $0.parent == self }
            .sorted { $0.code < $1.code }
    }
}
