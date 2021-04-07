//
//  CreatePassViewController.swift
//  Qwerty
//
//  Created by Jonathan Herbert on 07/04/21.
//

import UIKit

class CreatePassViewController: UIViewController {

    var tempPass = ""
    
    @IBOutlet weak var circle1: UIImageView!
    @IBOutlet weak var circle2: UIImageView!
    @IBOutlet weak var circle3: UIImageView!
    @IBOutlet weak var circle4: UIImageView!
    @IBOutlet weak var circle5: UIImageView!
    @IBOutlet weak var circle6: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func passButton(_ sender: UIButton) {
        if tempPass.count < 6 {
            tempPass = tempPass + sender.currentTitle!
            imageLoad()
        }else{
            imageLoad()
        }
    }
    @IBAction func passDelete(_ sender: UIButton) {
        if tempPass.count > 0 {
            tempPass.removeLast()
            imageLoad()
        }else{
            imageLoad()
        }
    }
    
    func imageLoad(){
        if tempPass.count == 0{
            circle1.image = UIImage.init(systemName: "circle")
            circle2.image = UIImage.init(systemName: "circle")
            circle3.image = UIImage.init(systemName: "circle")
            circle4.image = UIImage.init(systemName: "circle")
            circle5.image = UIImage.init(systemName: "circle")
            circle6.image = UIImage.init(systemName: "circle")
        }else if tempPass.count == 1{
            circle1.image = UIImage.init(systemName: "circle.fill")
            circle2.image = UIImage.init(systemName: "circle")
            circle3.image = UIImage.init(systemName: "circle")
            circle4.image = UIImage.init(systemName: "circle")
            circle5.image = UIImage.init(systemName: "circle")
            circle6.image = UIImage.init(systemName: "circle")
        }else if tempPass.count == 2{
            circle1.image = UIImage.init(systemName: "circle.fill")
            circle2.image = UIImage.init(systemName: "circle.fill")
            circle3.image = UIImage.init(systemName: "circle")
            circle4.image = UIImage.init(systemName: "circle")
            circle5.image = UIImage.init(systemName: "circle")
            circle6.image = UIImage.init(systemName: "circle")
        }else if tempPass.count == 3{
            circle1.image = UIImage.init(systemName: "circle.fill")
            circle2.image = UIImage.init(systemName: "circle.fill")
            circle3.image = UIImage.init(systemName: "circle.fill")
            circle4.image = UIImage.init(systemName: "circle")
            circle5.image = UIImage.init(systemName: "circle")
            circle6.image = UIImage.init(systemName: "circle")
        }else if tempPass.count == 4{
            circle1.image = UIImage.init(systemName: "circle.fill")
            circle2.image = UIImage.init(systemName: "circle.fill")
            circle3.image = UIImage.init(systemName: "circle.fill")
            circle4.image = UIImage.init(systemName: "circle.fill")
            circle5.image = UIImage.init(systemName: "circle")
            circle6.image = UIImage.init(systemName: "circle")
        }else if tempPass.count == 5{
            circle1.image = UIImage.init(systemName: "circle.fill")
            circle2.image = UIImage.init(systemName: "circle.fill")
            circle3.image = UIImage.init(systemName: "circle.fill")
            circle4.image = UIImage.init(systemName: "circle.fill")
            circle5.image = UIImage.init(systemName: "circle.fill")
            circle6.image = UIImage.init(systemName: "circle")
        }else if tempPass.count == 6{
            circle1.image = UIImage.init(systemName: "circle.fill")
            circle2.image = UIImage.init(systemName: "circle.fill")
            circle3.image = UIImage.init(systemName: "circle.fill")
            circle4.image = UIImage.init(systemName: "circle.fill")
            circle5.image = UIImage.init(systemName: "circle.fill")
            circle6.image = UIImage.init(systemName: "circle.fill")
        }
    }

}
