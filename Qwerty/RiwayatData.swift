//
//  RiwayatData.swift
//  Qwerty
//
//  Created by Yafonia Hutabarat on 06/04/21.
//

import Foundation

class RiwayatData {
    static func getRiwayat() -> [Riwayat] {
        let riwayat = [
            Riwayat(kataKotor: ["Anjir"], kalimat: "Gue lagi bete banget anjir", timestamp: Date(), platform: "Instagram"),
            Riwayat(kataKotor: ["Anj", "Jir"], kalimat: "Tapi lo tau gak sih gue ga gitu anj", timestamp: Date(), platform: "LINE"),
            Riwayat(kataKotor: ["Sialan"], kalimat: "HAHAHA sumpah lo tau gak sih dia tuh sialan hahaha", timestamp: Date(), platform: "LINE"),
            Riwayat(kataKotor: ["Bangke"], kalimat: "Bangke!!", timestamp: Date(), platform: "Twitter"),
            Riwayat(kataKotor: ["Anjir"], kalimat: "Kaga anjir hahaha", timestamp: Date(), platform: "Mobile Legends"),
            Riwayat(kataKotor: ["Bgst"], kalimat: "Iyee bgst", timestamp: Date(), platform: "WhatsApp"),
            Riwayat(kataKotor: ["Anjir"], kalimat: "Wkwkwk anjir", timestamp: Date(), platform: "Instagram")
        ]
        return riwayat
    }
}
