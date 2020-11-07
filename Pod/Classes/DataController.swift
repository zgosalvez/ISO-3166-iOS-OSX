//
//  DataController.swift
//  ISO3166
//
//  Created by Zennon Gosalvez on 2017-10-21.
//

class DataController {
    static let shared = DataController()

    let countries: [Country: (
        alpha3Code: String,
        alpha4Code: String?,
        numericCode: String,
        emoji: String)
        ] = [
            .AU: (alpha3Code: "AUS", alpha4Code: nil, numericCode: "036", emoji: "🇦🇺"),
            .CA: (alpha3Code: "CAN", alpha4Code: nil, numericCode: "124", emoji: "🇨🇦"),
            .DE: (alpha3Code: "DEU", alpha4Code: nil, numericCode: "276", emoji: "🇩🇪"),
            .ES: (alpha3Code: "ESP", alpha4Code: nil, numericCode: "724", emoji: "🇪🇸"),
            .GB: (alpha3Code: "GBR", alpha4Code: nil, numericCode: "826", emoji: "🇬🇧"),
            .ID: (alpha3Code: "IDN", alpha4Code: nil, numericCode: "360", emoji: "🇮🇩"),
            .JP: (alpha3Code: "JPN", alpha4Code: nil, numericCode: "392", emoji: "🇯🇵"),
            .MX: (alpha3Code: "MEX", alpha4Code: nil, numericCode: "484", emoji: "🇲🇽"),
            .PH: (alpha3Code: "PHL", alpha4Code: nil, numericCode: "608", emoji: "🇵🇭"),
            .TW: (alpha3Code: "TWN", alpha4Code: nil, numericCode: "158", emoji: "🇹🇼"),
            .US: (alpha3Code: "USA", alpha4Code: nil, numericCode: "840", emoji: "🇺🇸"),
            ]

    let subdivisions: [Subdivision: (
        name: [String: String],
        category: String,
        parent: String?)
        ] = [
            .AU_ACT: (
                name: ["en": "Australian Capital Territory"],
                category: "territory",
                parent: nil),
            .PH_00: (
                name: ["en": "National Capital Region"],
                category: "region",
                parent: nil),
            .PH_01: (
                name: ["en": "Ilocos (Region I)"],
                category: "region",
                parent: nil),
            .PH_02: (
                name: ["en": "Cagayan Valley (Region II)"],
                category: "region",
                parent: nil),
            .PH_03: (
                name: ["en": "Central Luzon (Region III)"],
                category: "region",
                parent: nil),
            .PH_05: (
                name: ["en": "Bicol (Region V)"],
                category: "region",
                parent: nil),
            .PH_06: (
                name: ["en": "Western Visayas (Region VI)"],
                category: "region",
                parent: nil),
            .PH_07: (
                name: ["en": "Central Visayas (Region VII)"],
                category: "region",
                parent: nil),
            .PH_08: (
                name: ["en": "Eastern Visayas (Region VIII)"],
                category: "region",
                parent: nil),
            .PH_09: (
                name: ["en": "Zamboanga Peninsula (Region IX)"],
                category: "region",
                parent: nil),
            .PH_10: (
                name: ["en": "Northern Mindanao (Region X)"],
                category: "region",
                parent: nil),
            .PH_11: (
                name: ["en": "Davao (Region XI)"],
                category: "region",
                parent: nil),
            .PH_12: (
                name: ["en": "Soccsksargen (Region XII)"],
                category: "region",
                parent: nil),
            .PH_13: (
                name: ["en": "Caraga (Region XIII)"],
                category: "region",
                parent: nil),
            .PH_14: (
                name: ["en": "Autonomous Region in Muslim Mindanao (ARMM)"],
                category: "region",
                parent: nil),
            .PH_15: (
                name: ["en": "Cordillera Administrative Region (CAR)"],
                category: "region",
                parent: nil),
            .PH_40: (
                name: ["en": "Calabarzon (Region IV-A)"],
                category: "region",
                parent: nil),
            .PH_41: (
                name: ["en": "Mimaropa (Region IV-B)"],
                category: "region",
                parent: nil),

            .PH_ABR: (
                name: ["en": "Abra"],
                category: "province",
                parent: "15"),
            .PH_AGN: (
                name: ["en": "Agusan del Norte"],
                category: "province",
                parent: "13"),
            .PH_AGS: (
                name: ["en": "Agusan del Sur"],
                category: "province",
                parent: "13"),
            .PH_AKL: (
                name: ["en": "Aklan"],
                category: "province",
                parent: "06"),
            .PH_ALB: (
                name: ["en": "Albay"],
                category: "province",
                parent: "05"),
            .PH_ANT: (
                name: ["en": "Antique"],
                category: "province",
                parent: "06"),
            .PH_APA: (
                name: ["en": "Apayao"],
                category: "province",
                parent: "15"),
            .PH_AUR: (
                name: ["en": "Aurora"],
                category: "province",
                parent: "03"),
            .PH_BAS: (
                name: ["en": "Basilan"],
                category: "province",
                parent: "09"),
            .PH_BAN: (
                name: ["en": "Bataan"],
                category: "province",
                parent: "03"),
            .PH_BTN: (
                name: ["en": "Batanes"],
                category: "province",
                parent: "02"),
            .PH_BTG: (
                name: ["en": "Batangas"],
                category: "province",
                parent: "40"),
            .PH_BEN: (
                name: ["en": "Benguet"],
                category: "province",
                parent: "15"),
            .PH_BIL: (
                name: ["en": "Biliran"],
                category: "province",
                parent: "08"),
            .PH_BOH: (
                name: ["en": "Bohol"],
                category: "province",
                parent: "07"),
            .PH_BUK: (
                name: ["en": "Bukidnon"],
                category: "province",
                parent: "10"),
            .PH_BUL: (
                name: ["en": "Bulacan"],
                category: "province",
                parent: "03"),
            .PH_CAG: (
                name: ["en": "Cagayan"],
                category: "province",
                parent: "02"),
            .PH_CAN: (
                name: ["en": "Camarines Norte"],
                category: "province",
                parent: "05"),
            .PH_CAS: (
                name: ["en": "Camarines Sur"],
                category: "province",
                parent: "05"),
            .PH_CAM: (
                name: ["en": "Camiguin"],
                category: "province",
                parent: "10"),
            .PH_CAP: (
                name: ["en": "Capiz"],
                category: "province",
                parent: "06"),
            .PH_CAT: (
                name: ["en": "Catanduanes"],
                category: "province",
                parent: "05"),
            .PH_CAV: (
                name: ["en": "Cavite"],
                category: "province",
                parent: "40"),
            .PH_CEB: (
                name: ["en": "Cebu"],
                category: "province",
                parent: "07"),
            .PH_COM: (
                name: ["en": "Compostela Valley"],
                category: "province",
                parent: "11"),
            .PH_NCO: (
                name: ["en": "Cotabato"],
                category: "province",
                parent: "12"),
            .PH_DAV: (
                name: ["en": "Davao del Norte"],
                category: "province",
                parent: "11"),
            .PH_DAS: (
                name: ["en": "Davao del Sur"],
                category: "province",
                parent: "11"),
            .PH_DVO: (
                name: ["en": "Davao Occidental"],
                category: "province",
                parent: "11"),
            .PH_DAO: (
                name: ["en": "Davao Oriental"],
                category: "province",
                parent: "11"),
            .PH_DIN: (
                name: ["en": "Dinagat Islands"],
                category: "province",
                parent: "13"),
            .PH_EAS: (
                name: ["en": "Eastern Samar"],
                category: "province",
                parent: "08"),
            .PH_GUI: (
                name: ["en": "Guimaras"],
                category: "province",
                parent: "06"),
            .PH_IFU: (
                name: ["en": "Ifugao"],
                category: "province",
                parent: "15"),
            .PH_ILN: (
                name: ["en": "Ilocos Norte"],
                category: "province",
                parent: "01"),
            .PH_ILS: (
                name: ["en": "Ilocos Sur"],
                category: "province",
                parent: "01"),
            .PH_ILI: (
                name: ["en": "Iloilo"],
                category: "province",
                parent: "06"),
            .PH_ISA: (
                name: ["en": "Isabela"],
                category: "province",
                parent: "02"),
            .PH_KAL: (
                name: ["en": "Kalinga"],
                category: "province",
                parent: "15"),
            .PH_LAG: (
                name: ["en": "Laguna"],
                category: "province",
                parent: "40"),
            .PH_LAN: (
                name: ["en": "Lanao del Norte"],
                category: "province",
                parent: "12"),
            .PH_LAS: (
                name: ["en": "Lanao del Sur"],
                category: "province",
                parent: "14"),
            .PH_LUN: (
                name: ["en": "La Union"],
                category: "province",
                parent: "01"),
            .PH_LEY: (
                name: ["en": "Leyte"],
                category: "province",
                parent: "08"),
            .PH_MAG: (
                name: ["en": "Maguindanao"],
                category: "province",
                parent: "14"),
            .PH_MAD: (
                name: ["en": "Marinduque"],
                category: "province",
                parent: "41"),
            .PH_MAS: (
                name: ["en": "Masbate"],
                category: "province",
                parent: "05"),
            .PH_MDC: (
                name: ["en": "Mindoro Occidental"],
                category: "province",
                parent: "41"),
            .PH_MDR: (
                name: ["en": "Mindoro Oriental"],
                category: "province",
                parent: "41"),
            .PH_MSC: (
                name: ["en": "Misamis Occidental"],
                category: "province",
                parent: "10"),
            .PH_MSR: (
                name: ["en": "Misamis Oriental"],
                category: "province",
                parent: "10"),
            .PH_MOU: (
                name: ["en": "Mountain Province"],
                category: "province",
                parent: "15"),
            .PH_NEC: (
                name: ["en": "Negros Occidental"],
                category: "province",
                parent: "06"),
            .PH_NER: (
                name: ["en": "Negros Oriental"],
                category: "province",
                parent: "07"),
            .PH_NSA: (
                name: ["en": "Northern Samar"],
                category: "province",
                parent: "08"),
            .PH_NUE: (
                name: ["en": "Nueva Ecija"],
                category: "province",
                parent: "03"),
            .PH_NUV: (
                name: ["en": "Nueva Vizcaya"],
                category: "province",
                parent: "02"),
            .PH_PLW: (
                name: ["en": "Palawan"],
                category: "province",
                parent: "41"),
            .PH_PAM: (
                name: ["en": "Pampanga"],
                category: "province",
                parent: "03"),
            .PH_PAN: (
                name: ["en": "Pangasinan"],
                category: "province",
                parent: "01"),
            .PH_QUE: (
                name: ["en": "Quezon"],
                category: "province",
                parent: "40"),
            .PH_QUI: (
                name: ["en": "Quirino"],
                category: "province",
                parent: "02"),
            .PH_RIZ: (
                name: ["en": "Rizal"],
                category: "province",
                parent: "40"),
            .PH_ROM: (
                name: ["en": "Romblon"],
                category: "province",
                parent: "41"),
            .PH_WSA: (
                name: ["en": "Samar"],
                category: "province",
                parent: "08"),
            .PH_SAR: (
                name: ["en": "Sarangani"],
                category: "province",
                parent: "11"),
            .PH_SIG: (
                name: ["en": "Siquijor"],
                category: "province",
                parent: "07"),
            .PH_SOR: (
                name: ["en": "Sorsogon"],
                category: "province",
                parent: "05"),
            .PH_SCO: (
                name: ["en": "South Cotabato"],
                category: "province",
                parent: "11"),
            .PH_SLE: (
                name: ["en": "Southern Leyte"],
                category: "province",
                parent: "08"),
            .PH_SUK: (
                name: ["en": "Sultan Kudarat"],
                category: "province",
                parent: "12"),
            .PH_SLU: (
                name: ["en": "Sulu"],
                category: "province",
                parent: "14"),
            .PH_SUN: (
                name: ["en": "Surigao del Norte"],
                category: "province",
                parent: "13"),
            .PH_SUR: (
                name: ["en": "Surigao del Sur"],
                category: "province",
                parent: "13"),
            .PH_TAR: (
                name: ["en": "Tarlac"],
                category: "province",
                parent: "03"),
            .PH_TAW: (
                name: ["en": "Tawi-Tawi"],
                category: "province",
                parent: "14"),
            .PH_ZMB: (
                name: ["en": "Zambales"],
                category: "province",
                parent: "03"),
            .PH_ZAN: (
                name: ["en": "Zamboanga del Norte"],
                category: "province",
                parent: "09"),
            .PH_ZAS: (
                name: ["en": "Zamboanga del Sur"],
                category: "province",
                parent: "09"),
            .PH_ZSI: (
                name: ["en": "Zamboanga Sibugay"],
                category: "province",
                parent: "09"),
            .US_AL: (
                name: ["en": "Alabama"],
                category: "state",
                parent: nil),
            .US_AK: (
                name: ["en": "Alaska"],
                category: "state",
                parent: nil),
            .US_AS: (
                name: ["en": "American Samoa (see also separate country code entry under AS)"],
                category: "outlying area",
                parent: nil),
            .US_AZ: (
                name: ["en": "Arizona"],
                category: "state",
                parent: nil),
            .US_AR: (
                name: ["en": "Arkansas"],
                category: "state",
                parent: nil),
            .US_CA: (
                name: ["en": "California"],
                category: "state",
                parent: nil),
            .US_CO: (
                name: ["en": "Colorado"],
                category: "state",
                parent: nil),
            .US_CT: (
                name: ["en": "Connecticut"],
                category: "state",
                parent: nil),
            .US_DE: (
                name: ["en": "Delaware"],
                category: "state",
                parent: nil),
            .US_DC: (
                name: ["en": "District of Columbia"],
                category: "district",
                parent: nil),
            .US_FL: (
                name: ["en": "Florida"],
                category: "state",
                parent: nil),
            .US_GA: (
                name: ["en": "Georgia"],
                category: "state",
                parent: nil),
            .US_GU: (
                name: ["en": "Guam (see also separate country code entry under GU)"],
                category: "outlying area",
                parent: nil),
            .US_HI: (
                name: ["en": "Hawaii"],
                category: "state",
                parent: nil),
            .US_ID: (
                name: ["en": "Idaho"],
                category: "state",
                parent: nil),
            .US_IL: (
                name: ["en": "Illinois"],
                category: "state",
                parent: nil),
            .US_IN: (
                name: ["en": "Indiana"],
                category: "state",
                parent: nil),
            .US_IA: (
                name: ["en": "Iowa"],
                category: "state",
                parent: nil),
            .US_KS: (
                name: ["en": "Kansas"],
                category: "state",
                parent: nil),
            .US_KY: (
                name: ["en": "Kentucky"],
                category: "state",
                parent: nil),
            .US_LA: (
                name: ["en": "Louisiana"],
                category: "state",
                parent: nil),
            .US_ME: (
                name: ["en": "Maine"],
                category: "state",
                parent: nil),
            .US_MD: (
                name: ["en": "Maryland"],
                category: "state",
                parent: nil),
            .US_MA: (
                name: ["en": "Massachusetts"],
                category: "state",
                parent: nil),
            .US_MI: (
                name: ["en": "Michigan"],
                category: "state",
                parent: nil),
            .US_MN: (
                name: ["en": "Minnesota"],
                category: "state",
                parent: nil),
            .US_MS: (
                name: ["en": "Mississippi"],
                category: "state",
                parent: nil),
            .US_MO: (
                name: ["en": "Missouri"],
                category: "state",
                parent: nil),
            .US_MT: (
                name: ["en": "Montana"],
                category: "state",
                parent: nil),
            .US_NE: (
                name: ["en": "Nebraska"],
                category: "state",
                parent: nil),
            .US_NV: (
                name: ["en": "Nevada"],
                category: "state",
                parent: nil),
            .US_NH: (
                name: ["en": "New Hampshire"],
                category: "state",
                parent: nil),
            .US_NJ: (
                name: ["en": "New Jersey"],
                category: "state",
                parent: nil),
            .US_NM: (
                name: ["en": "New Mexico"],
                category: "state",
                parent: nil),
            .US_NY: (
                name: ["en": "New York"],
                category: "state",
                parent: nil),
            .US_NC: (
                name: ["en": "North Carolina"],
                category: "state",
                parent: nil),
            .US_ND: (
                name: ["en": "North Dakota"],
                category: "state",
                parent: nil),
            .US_MP: (
                name: ["en": "Northern Mariana Islands (see also separate country code entry under MP)"],
                category: "outlying area",
                parent: nil),
            .US_OH: (
                name: ["en": "Ohio"],
                category: "state",
                parent: nil),
            .US_OK: (
                name: ["en": "Oklahoma"],
                category: "state",
                parent: nil),
            .US_OR: (
                name: ["en": "Oregon"],
                category: "state",
                parent: nil),
            .US_PA: (
                name: ["en": "Pennsylvania"],
                category: "state",
                parent: nil),
            .US_PR: (
                name: ["en": "Puerto Rico (see also separate country code entry under PR)"],
                category: "outlying area",
                parent: nil),
            .US_RI: (
                name: ["en": "Rhode Island"],
                category: "state",
                parent: nil),
            .US_SC: (
                name: ["en": "South Carolina"],
                category: "state",
                parent: nil),
            .US_SD: (
                name: ["en": "South Dakota"],
                category: "state",
                parent: nil),
            .US_TN: (
                name: ["en": "Tennessee"],
                category: "state",
                parent: nil),
            .US_TX: (
                name: ["en": "Texas"],
                category: "state",
                parent: nil),
            .US_UM: (
                name: ["en": "United States Minor Outlying Islands (see also separate country code entry under UM)"],
                category: "outlying area",
                parent: nil),
            .US_UT: (
                name: ["en": "Utah"],
                category: "state",
                parent: nil),
            .US_VT: (
                name: ["en": "Vermont"],
                category: "state",
                parent: nil),
            .US_VI: (
                name: ["en": "Virgin Islands, U.S. (see also separate country code entry under VI)"],
                category: "outlying area",
                parent: nil),
            .US_VA: (
                name: ["en": "Virginia"],
                category: "state",
                parent: nil),
            .US_WA: (
                name: ["en": "Washington"],
                category: "state",
                parent: nil),
            .US_WV: (
                name: ["en": "West Virginia"],
                category: "state",
                parent: nil),
            .US_WI: (
                name: ["en": "Wisconsin"],
                category: "state",
                parent: nil),
            .US_WY: (
                name: ["en": "Wyoming"],
                category: "state",
                parent: nil),
            ]
}
