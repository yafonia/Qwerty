//
//  RiwayatData.swift
//  Qwerty
//
//  Created by Yafonia Hutabarat on 06/04/21.
//

import Foundation

class RiwayatData {
    static func getRiwayat() -> [History] {
        let histories = HistoryController().getAllHistory()
        return histories
    }
    
    
}
