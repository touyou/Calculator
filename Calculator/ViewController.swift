//
//  ViewController.swift
//  Calculator
//
//  Created by 藤井陽介 on 2016/01/31.
//  Copyright © 2016年 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var currentNumber: Int = 0
    var preNumber: Int = 0
    var opeNumber: Int = -1
    var operation: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 0~9までの数字選択
    func selects(n: Int) {
        if operation == 0 {
            currentNumber = currentNumber * 10 + n
        } else {
            currentNumber = n
        }
        label.text = String(currentNumber)
    }
    @IBAction func select1() {
        selects(1)
    }
    @IBAction func select2() {
        selects(2)
    }
    @IBAction func select3() {
        selects(3)
    }
    @IBAction func select4() {
        selects(4)
    }
    @IBAction func select5() {
        selects(5)
    }
    @IBAction func select6() {
        selects(6)
    }
    @IBAction func select7() {
        selects(7)
    }
    @IBAction func select8() {
        selects(8)
    }
    @IBAction func select9() {
        selects(9)
    }
    @IBAction func select0() {
        selects(0)
    }
    // 演算、この時点で入力されている数字をpreNumberに格納
    @IBAction func plus() {
        label.text = "0"
        operation = 1
        preNumber = currentNumber
        currentNumber = 0
    }
    @IBAction func minus() {
        label.text = "0"
        operation = 2
        preNumber = currentNumber
        currentNumber = 0
    }
    @IBAction func times() {
        label.text = "0"
        operation = 3
        preNumber = currentNumber
        currentNumber = 0
    }
    @IBAction func divs() {
        label.text = "0"
        operation = 4
        preNumber = currentNumber
        currentNumber = 0
    }
    // 標準の電卓の仕様にあわせる -> 要検討
    @IBAction func equal() {
        if opeNumber == -1 {
            opeNumber = currentNumber
        }
        if operation == 1 {
            label.text = String(currentNumber + preNumber)
            currentNumber = preNumber + opeNumber
        } else if operation == 2 {
            label.text = String(preNumber - currentNumber)
            currentNumber = preNumber - opeNumber
        } else if operation == 3 {
            label.text = String(currentNumber * preNumber)
            currentNumber = preNumber * opeNumber
        } else if operation == 4 {
            label.text = String(preNumber / currentNumber)
            currentNumber = preNumber / opeNumber
        }
        preNumber = currentNumber
        label.text = String(currentNumber)
    }
    @IBAction func clear() {
        currentNumber = 0
        preNumber = 0
        opeNumber = -1
        operation = 0
        label.text = "0"
    }
    
}

