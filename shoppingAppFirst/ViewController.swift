//
//  ViewController.swift
//  shoppingAppFirst
//
//  Created by Andy on 2018/7/22.
//  Copyright © 2018年 Andy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let jumperPrice: Int = 899
    let redShirtPrice: Int = 399
    let tshirtPrice: Int = 199
    
    var totalAmount = 0
    var totalQuantity = 0
    var jumperQty = 0
    var redShirtQty = 0
    var tshirtQty = 0
    
    func totalCheck(){
        totalQuantity = (jumperQty + redShirtQty + tshirtQty)
        totalAmount = jumperQty * jumperPrice + redShirtQty * redShirtPrice + tshirtQty * tshirtPrice
        outputTotalQty.text = totalQuantity.description
        outputTotalAmt.text = totalAmount.description
    }
    
    @IBAction func changeJumperQty(_ sender: UIStepper) {
        jumperQty = Int(sender.value)
        totalCheck()
    }
    
    @IBAction func changeRedShirtQty(_ sender: UIStepper) {
        redShirtQty = Int(sender.value)
        totalCheck()
    }
    
    @IBAction func changeTshirtQty(_ sender: UIStepper) {
        tshirtQty = Int(sender.value)
        totalCheck()
    }
    
    
    @IBOutlet weak var outputJumperQty: UITextField!
    @IBOutlet weak var outputRedShirtQty: UITextField!
    @IBOutlet weak var outputTshirtQty: UITextField!
    @IBOutlet weak var outputTotalQty: UITextField!
    @IBOutlet weak var outputTotalAmt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

