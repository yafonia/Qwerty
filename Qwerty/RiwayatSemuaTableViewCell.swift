//
//  RiwayatSemuaTableViewCell.swift
//  Qwerty
//
//  Created by Yafonia Hutabarat on 06/04/21.
//

import UIKit

class RiwayatSemuaTableViewCell: UITableViewCell {
    
    @IBOutlet var kataKotorLabel: UILabel!
    @IBOutlet var kalimatLabel: UILabel!
    @IBOutlet var timestampLabel: UILabel!
    
    var riwayat: Riwayat? {
        didSet {
            guard let riwayatItem = riwayat else {return}
            if let kataKotor = riwayatItem.kataKotor {
                kataKotorLabel.text = Converter.convertArrayToString(array: kataKotor)
            }
            if let kalimat = riwayatItem.kalimat {
                kalimatLabel.text = kalimat
            }
            if let timestamp = riwayatItem.timestamp {
                timestampLabel.text = "09.00"
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
