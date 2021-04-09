//
//  RiwayatSemuaTableViewCell.swift
//  Qwerty
//
//  Created by Yafonia Hutabarat on 06/04/21.
//

import UIKit

class RiwayatSemuaTableViewCell: UITableViewCell {
    
    @IBOutlet var verticalStackView: UIStackView!
    @IBOutlet var horizontalStackView: UIStackView!
    @IBOutlet var kataKotorLabel: UILabel!
    @IBOutlet var kalimatLabel: UILabel!
    @IBOutlet var timestampLabel: UILabel!
    
    var riwayat: History? {
        didSet {
            guard let riwayatItem = riwayat else {return}
            if let kataKotor = riwayatItem.kataKotor {
                kataKotorLabel.text = kataKotor
            }
            if let kalimat = riwayatItem.kalimat {
                kalimatLabel.text = kalimat
            }
            if let timestamp = riwayatItem.waktu {
                timestampLabel.text = Converter.convertDateToStringHourMinute(date: timestamp)
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 14
        let verticalPadding: CGFloat = 16

        let maskLayer = CALayer()
        maskLayer.cornerRadius = 14    //if you want round edges
        maskLayer.backgroundColor = UIColor.black.cgColor
        maskLayer.frame = CGRect(x: self.bounds.origin.x, y: self.bounds.origin.y, width: self.bounds.width, height: self.bounds.height).insetBy(dx: 0, dy: verticalPadding/2)
        self.layer.mask = maskLayer
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    

}
