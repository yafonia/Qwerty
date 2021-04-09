//
//  ViewController.swift
//  Qwerty
//
//  Created by Yafonia Hutabarat on 06/04/21.
//

import UIKit

class RiwayatSemuaViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
       @IBOutlet var navBar: UINavigationBar!
       @IBOutlet var segmentedControl: UISegmentedControl!

<<<<<<< HEAD
       private let riwayatData = RiwayatData.getRiwayat()
       let cellSpacingHeight: CGFloat = 5
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           self.navigationController?.navigationItem.title = "Riwayat"
           
           tableView.delegate = self
           tableView.dataSource = self
           
           
           let color = #colorLiteral(red: 0, green: 0.3771588206, blue: 0.6474069953, alpha: 1)
           let titleTextAttributesNormal = [NSAttributedString.Key.foregroundColor: UIColor.white]
           let titleTextAttributesSelected = [NSAttributedString.Key.foregroundColor: color]
           segmentedControl.layer.borderWidth = 0.4
           segmentedControl.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
           segmentedControl.setTitleTextAttributes(titleTextAttributesNormal, for: .normal)
           segmentedControl.setTitleTextAttributes(titleTextAttributesSelected, for: .selected)
       }
   }
=======
    private let riwayatData = HistoryService().getHistory(filter: "All")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Riwayat"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        
        
        // Do any additional setup after loading the view.
    }

}
>>>>>>> d993da91f44dec7a8610b4d746be44fd11b74e7f

   extension RiwayatSemuaViewController: UITableViewDelegate {
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
       }
   }

   extension RiwayatSemuaViewController: UITableViewDataSource {
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return riwayatData.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RiwayatSemuaTableViewCell
           cell.riwayat = riwayatData[indexPath.row]
           return cell
       }
       
   }
