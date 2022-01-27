//
//  ViewController.swift
//  calculatorApp
//
//  Created by Baran Berk Kılıç on 16.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hesap Makinesi Uygulamasına Hoşgeldiniz")
        // Do any additional setup after loading the view.
    }

    @IBAction func sumButtonClicked(_ sender: Any) {
        if let first = Int(firstNumber.text!){
            if let second = Int(secondNumber.text!){
                let result = first + second
                resultLabel.text = String(result)
                
            }
        }
        
    }
    @IBAction func minusButtonClicked(_ sender: Any) {
        if let first = Int(firstNumber.text!){
            if let second = Int(secondNumber.text!){
                let result = first - second
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func multiplyButtonClicked(_ sender: Any) {
        if let first = Int(firstNumber.text!){
            if let second = Int(secondNumber.text!){
                let result = first * second
                resultLabel.text = String(result)
                
            }
        }
    }
    
   
    
    @IBAction func divideButtonClicked(_ sender: Any) {
        if let first = Int(firstNumber.text!) {
            if let second = Int(secondNumber.text!){
                if second != 0 {
                let result = first / second
                resultLabel.text = String(result)
                
                }else if second == 0 {
                    print("UYARI !!! \(first) sayısını sıfır ile bölemezsiniz")
                }
        }
    }
    
    }
}
