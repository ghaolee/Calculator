//
//  ViewController.swift
//  Calculator
//
//  Created by G Hao Lee on 5/20/18.
//  Copyright © 2018 leopard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen: Double = 0
    var previousNum: Double = 0
    var storeTag: Int = 0
    var storeNumbers = [Double]()
    var storeButtons = [Int]()
    var i: Int = 0
    var j: Int = 0
    
    @IBOutlet weak var labelTest: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: 
        UIButton) {
        if (label.text == "/" || label.text == "x" || label.text == "+" || label.text == "-") {
            label.text = ""
        }
        if (storeTag == 16) {
            label.text = ""
            storeTag = 0
        }
        label.text = label.text! + String(sender.tag - 1)
        numberOnScreen = Double(label.text!)!
    }
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            if sender.tag == 12 { //divide
                storeNumbers.append(numberOnScreen)
                i = i + 1
                storeButtons.append(12)
                j = j + 1
                label.text = "/"
                storeTag = 12
            }
            else if sender.tag == 13 { //multiply
                storeNumbers.append(numberOnScreen)
                i = i + 1
                storeButtons.append(13)
                j = j + 1
                label.text = "x"
                storeTag = 13
            }
            else if sender.tag == 14 { //subtract
                storeNumbers.append(numberOnScreen)
                i = i + 1
                storeButtons.append(14)
                j = j + 1
                label.text = "-"
                storeTag = 14
            }
            else if sender.tag == 15 { //add
                storeNumbers.append(numberOnScreen)
                i = i + 1
                storeButtons.append(15)
                j = j + 1
                label.text = "+"
                storeTag = 15
            }
        }
        else if sender.tag == 11 {
            label.text = ""
            storeTag = 0
        }
        else { //sender.tag == 16
            var algebra: Double = 0
            for (Int k = 0; k < j-1; k++) { //look through the button for PEMDAS
                
            }
            
//            if storeTag == 12 { //divide
//                algebra = previousNum / numberOnScreen
//            }
//            else if storeTag == 13 { //multiply
//                algebra = previousNum * numberOnScreen
//            }
//            else if storeTag == 14 { //subtract
//                algebra = previousNum - numberOnScreen
//            }
//            else if storeTag == 15 { //add
//                algebra = previousNum + numberOnScreen
//            }
            algebra = Double(Int(algebra * 1000000)) / 1000000.0

            label.text = String(algebra)
            storeTag = 16
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

