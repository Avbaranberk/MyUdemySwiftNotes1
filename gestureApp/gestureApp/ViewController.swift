//
//  ViewController.swift
//  gestureApp
//
//  Created by Baran Berk Kılıç on 22.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dune1İmage: UIImageView!
    @IBOutlet weak var mylabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dune1İmage.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer (target: self, action: #selector(changePic))
        dune1İmage.addGestureRecognizer(gestureRecognizer)
    }
    
    var isDune = true
   
    @objc func changePic() {
        if isDune == true{
        dune1İmage.image = UIImage(named: "dune21.jpeg")
            mylabel.text = "DUNE 2"
            isDune = false
        }else {
            dune1İmage.image = UIImage(named: "dune1.jpeg")
                mylabel.text = "DUNE 1"
                isDune = true
            
        }
        
    }

}

