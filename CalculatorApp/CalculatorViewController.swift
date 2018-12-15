//
//  CalculatorViewController.swift
//  CalculatorApp
//
//  Created by Artem Karmaz on 12/15/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var calculatorActions = Calculate()
//    var count: Int = 0 {
//        didSet {
//            resultLabel.text = "\(count)"
//        }
//    }

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet var calculatorButtonNumbers: [UIButton]!
    
    
    @IBAction func calculateNumberButton(_ sender: UIButton) {
        if let buttonNumber = calculatorButtonNumbers.index(of: sender) {
            print("Button Number = \(buttonNumber)")
        } else {
            print ("error")
        }
        resultLabel.text = calculatorActions.setNumber(sender.titleLabel?.text! ?? "0")
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        resultLabel.text = calculatorActions.pressAc()
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        resultLabel.text = calculatorActions.pressPlus()
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
        resultLabel.text = calculatorActions.getResult()
    }
    //    var flipCount: Int = 0 {
//        didSet {
//            flipCountLabel.text = "Flips: \(flipCount)"
//        }
//    }
//    @IBOutlet weak var flipCountLabel: UILabel!
//    @IBOutlet var cardButtons: [UIButton]!
//    var emojiChoices = ["👻", "🎃", "👻", "🎃"]
//    @IBAction func touchCard(_ sender: UIButton) {
//        flipCount += 1
//        if let cardNumber = cardButtons.index(of: sender) {
//            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
//            print("cardnumber = \(cardNumber)")
//        } else {
//            print("choosen cards not in list")
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
