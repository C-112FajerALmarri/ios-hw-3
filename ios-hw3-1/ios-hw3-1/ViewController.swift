//
//  ViewController.swift
//  ios-hw3-1
//
//  Created by Sarah Almarii on 9/26/20.
//  Copyright © 2020 fajer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var wrightFeild: UITextField!

    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func BMI(weight:Double,height:Double)-> Double {
        
return(weight/height*height)
        
    }
   
    
    
    @IBAction func Bmi(_ sender: Any) {
        let w = Double(wrightFeild.text!)
        let h = Double(heightField.text!)
        
var bmi = w!/(h!*h!)
        
        bmiLabel.text = String(format: "%.2f", bmi)
        
        if bmi<20
        {
        statusLabel.text = "ضعيف"
        }
         else  if bmi<25 {
            statusLabel.text = "جيد"
            }
        else if bmi>25
        {
            statusLabel.text = "سمين"
        }
        else{
            statusLabel.text = "خطأ"
        }
        
        
    }
    
}

