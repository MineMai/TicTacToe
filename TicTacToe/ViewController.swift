//
//  ViewController.swift
//  TicTacToe
//
//  Created by YenShao on 2017/2/23.
//  Copyright © 2017年 YenShao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showLabel: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var label5: UILabel!
    
    @IBOutlet weak var label6: UILabel!
    
    @IBOutlet weak var label7: UILabel!
    
    @IBOutlet weak var label8: UILabel!
    
    @IBOutlet weak var label9: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet weak var btn5: UIButton!
    
    @IBOutlet weak var btn6: UIButton!
    
    @IBOutlet weak var btn7: UIButton!
    
    @IBOutlet weak var btn8: UIButton!
    
    @IBOutlet weak var btn9: UIButton!
    
    
    var whoTurn = false
    var pressed = Array(repeating: false, count: 9)
    var playOne = [Int]()
    var playTwo = [Int]()
    let win1 = [1,2,3]
    let win2 = [4,5,6]
    let win3 = [7,8,9]
    let win4 = [1,4,7]
    let win5 = [2,5,8]
    let win6 = [3,6,9]
    let win7 = [1,5,9]
    let win8 = [3,5,7]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func Btn0(_ sender: UIButton) {
        
        if pressed[0] == false
        {
            if whoTurn == false
            {
                label1.text = "O"
                whoTurn = true
                playOne.append(1)
            }
            else
            {
                label1.text = "X"
                whoTurn = false
                playTwo.append(1)
            }
            
            checkAnswer()
            pressed[0] = true
        }
        else
        {
            alert()
        }
        
    }
    
    @IBAction func Btn1(_ sender: UIButton) {
        
        if pressed[1] == false
        {
            if whoTurn == false
            {
                label2.text = "O"
                whoTurn = true
                playOne.append(2)
            }
            else
            {
                label2.text = "X"
                whoTurn = false
                playTwo.append(2)
            }
            checkAnswer()
            pressed[1] = true
        }
        else
        {
            alert()
        }
        
    }
    
    @IBAction func Btn2(_ sender: UIButton) {
        
        if pressed[2] == false
        {
            if whoTurn == false
            {
                label3.text = "O"
                whoTurn = true
                playOne.append(3)
            }
            else
            {
                label3.text = "X"
                whoTurn = false
                playTwo.append(3)
            }
            checkAnswer()
            pressed[2] = true
        }
        else
        {
            alert()
        }
        
    }
    
    @IBAction func Btn3(_ sender: UIButton) {
        
        if pressed[3] == false
        {
            if whoTurn == false
            {
                label4.text = "O"
                whoTurn = true
                playOne.append(4)
            }
            else
            {
                label4.text = "X"
                whoTurn = false
                playTwo.append(4)
            }
            checkAnswer()
            pressed[3] = true
        }
        else
        {
            alert()
        }
        
    }

    @IBAction func Btn4(_ sender: UIButton) {
        
        if pressed[4] == false
        {
            if whoTurn == false
            {
                label5.text = "O"
                whoTurn = true
                playOne.append(5)
            }
            else
            {
                label5.text = "X"
                whoTurn = false
                playTwo.append(5)
            }
            checkAnswer()
            pressed[4] = true
        }
        else
        {
            alert()
        }
        
    }
    
    @IBAction func Btn5(_ sender: UIButton) {
        
        if pressed[5] == false
        {
            if whoTurn == false
            {
                label6.text = "O"
                whoTurn = true
                playOne.append(6)
            }
            else
            {
                label6.text = "X"
                whoTurn = false
                playTwo.append(6)
            }
            checkAnswer()
            pressed[5] = true
        }
        else
        {
            alert()
        }
        
    }
    
    @IBAction func Btn6(_ sender: UIButton) {
        
        if pressed[6] == false
        {
            if whoTurn == false
            {
                label7.text = "O"
                whoTurn = true
                playOne.append(7)
            }
            else
            {
                label7.text = "X"
                whoTurn = false
                playTwo.append(7)
            }
            checkAnswer()
            pressed[6] = true
        }
        else
        {
            alert()
        }
        
    }
    
    @IBAction func Btn7(_ sender: UIButton) {
        
        if pressed[7] == false
        {
            if whoTurn == false
            {
                label8.text = "O"
                whoTurn = true
                playOne.append(8)
            }
            else
            {
                label8.text = "X"
                whoTurn = false
                playTwo.append(8)
            }
            checkAnswer()
            pressed[7] = true
        }
        else
        {
            alert()
        }
        
    }
    
    @IBAction func Btn8(_ sender: UIButton) {
        
        if pressed[8] == false
        {
            if whoTurn == false
            {
                label9.text = "O"
                whoTurn = true
                playOne.append(9)
            }
            else
            {
                label9.text = "X"
                whoTurn = false
                playTwo.append(9)
            }
            checkAnswer()
            pressed[8] = true
        }
        else
        {
            alert()
        }
    }
    
    
    @IBAction func reSetBtn(_ sender: UIButton) {
        
        label1.text = ""
        label2.text = ""
        label3.text = ""
        label4.text = ""
        label5.text = ""
        label6.text = ""
        label7.text = ""
        label8.text = ""
        label9.text = ""
        playOne = []
        playTwo = []
        whoTurn = false
        finish(swish: true)
        pressed = Array(repeating: false, count: 9)
        showLabel.text = "TicTacToe"
        self.view.backgroundColor = UIColor.white
    }
    
    
    func checkAnswer()
    {
        let win = [win1,win2,win3,win4,win5,win6,win7,win8]
        print("playOne = \(playOne)")
        print("playTwo = \(playTwo)")
        for i in win
        {
            let winSet = Set(i)
            let playOneSet = Set(playOne)
            let playTwoSet = Set(playTwo)
            if winSet.intersection(playOneSet).count == 3
            {
                showLabel.text = "PlayOne WIN!!!"
                self.view.backgroundColor = UIColor.blue
                print("playOne WIN!!!")
                finish(swish: false)
                
            }
            if winSet.intersection(playTwoSet).count == 3
            {
                showLabel.text = "PlayTwo WIN!!!"
                self.view.backgroundColor = UIColor.green
                print("playTwo WIN!!!")
                finish(swish: false)
                
            }
        }
        
        //如果全部按鈕都被按下
        var count = 0
        for i in 0..<pressed.count
        {
            if pressed[i] == true
            {
                count = count + 1
            }
            if count == 8
            {
                showLabel.text = "Draw!"
                self.view.backgroundColor = UIColor.darkGray
                finish(swish: false)
            }
        }
    
    }
    
    func alert()
    {
        let alert = UIAlertController(title: "重複輸入！", message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    func finish(swish:Bool)
    {
        btn1.isEnabled = swish
        btn2.isEnabled = swish
        btn3.isEnabled = swish
        btn4.isEnabled = swish
        btn5.isEnabled = swish
        btn6.isEnabled = swish
        btn7.isEnabled = swish
        btn8.isEnabled = swish
        btn9.isEnabled = swish
    }
    
    

}












