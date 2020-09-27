//
//  ViewController.swift
//  X-O
//
//  Created by Sarah Almarii on 9/27/20.
//  Copyright © 2020 fajer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var TurnLabel: UILabel!
    
    @IBOutlet weak var XcounterLabel: UILabel!
    @IBOutlet weak var OcounterLabel: UILabel!
    var count = 0
    var Ocounter = 0
    var Xcounter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var buttons:[UIButton] = []
    @IBAction func Click(_ sender: UIButton) {
        if count % 2 == 0
        {
            sender.setTitle("X", for: .normal)
            TurnLabel.text = "O's Turn"
        }else{
            sender.setTitle("O", for: .normal)
                 TurnLabel.text = "X's Turn"
        }
       checkWinner(winner: "O")
        checkWinner(winner: "X")
        sender.isUserInteractionEnabled = false
        count += 1
    }
    func restartGame(){
        let buttons:[UIButton] = [b1,b2,b3,b4,b5,b6,b7,b8,b9]
        for button in buttons{
            print(button)
            button.setTitle("", for: .normal)
            button.titleLabel?.text = ""
            button.isUserInteractionEnabled = true
        }
        count = 0
        TurnLabel.text = "X's-Turn"
    }
    func checkWinner(winner : String)
    {
        if (b1.titleLabel?.text == winner && b2.titleLabel?.text == winner && b3.titleLabel?.text == winner) ||
           (b4.titleLabel?.text == winner && b5.titleLabel?.text == winner && b6.titleLabel?.text == winner) ||
           (b7.titleLabel?.text == winner && b8.titleLabel?.text == winner && b9.titleLabel?.text == winner) ||
           (b1.titleLabel?.text == winner && b4.titleLabel?.text == winner && b7.titleLabel?.text == winner) ||
           (b2.titleLabel?.text == winner && b5.titleLabel?.text == winner && b8.titleLabel?.text == winner) ||
           (b3.titleLabel?.text == winner && b6.titleLabel?.text == winner && b9.titleLabel?.text == winner) ||
           (b1.titleLabel?.text == winner && b5.titleLabel?.text == winner && b9.titleLabel?.text == winner) ||
           (b3.titleLabel?.text == winner && b5.titleLabel?.text == winner && b7.titleLabel?.text == winner)
        {
            if winner == "O"
            {
                Ocounter += 1
                OcounterLabel.text = String(Ocounter)
            }
            else if winner == "X"
            {
                Xcounter += 1
                XcounterLabel.text = String(Xcounter)

            }
            let alerController = UIAlertController(title: "\(winner)فاز ", message: " قم بضغط الزر لإعادة اللعب ", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "reset", style: .cancel){
                (alert) in  self.restartGame()
                
            }
            alerController.addAction(restartAction)
            present(alerController, animated: true, completion: nil)
            }
        }
        
    

    @IBAction func Reset(_ sender: UIButton) {
    
        restartGame()
    }


}
