//
//  ViewController.swift
//  Calculator
//
//  Created by Rk on 06/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    var IsTypingNumber = false
//    var firstnumber = 0
//    var secondnumber = 0
//    var output = " "
    var firstNum = 0
    var secondNum = 0
    var oPer = " "
    var re = 0

    @IBOutlet weak var textResult: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func functionOnclick(_ sender: Any) {
        let number = (sender as AnyObject).currentTitle
        textResult.text = textResult.text!+number!!
    }
    
    
    @IBAction func operatorClick(_ sender: Any) {
        

        
        
        
        
        firstNum = Int(textResult.text!)!
        //print(firstNum)
        textResult.text = ""
//        let oPer = (sender as AnyObject).currentTitle
//        print(oPer!!)
        oPer = (sender as AnyObject).currentTitle!!
        
    
    }
    
    @IBAction func funcCalculate(_ sender: Any) {

        
        secondNum = Int(textResult.text!)!
        
        if(oPer == "+"){
            
            re = firstNum+secondNum
           // print(re)
            textResult.text = " "
            textResult.text = "\(re)"

        }
        else if(oPer == "-"){
            //print("b")
            re = firstNum-secondNum
            //print(re)
            textResult.text = " "
            textResult.text = "\(re)"
        }
        else if(oPer == "*"){
            //print("c")
            re = firstNum*secondNum
            textResult.text = " "
            textResult.text = "\(re)"

        }
        else if(oPer == "/"){
            if(secondNum != 0){
                re = firstNum/secondNum
                textResult.text = " "
                textResult.text = "\(re)"

            }
            else{
                print("devide by zero")
                textResult.text = "0"
                
        }
        textResult.text = ""
        
        textResult.text="\(re)"
        
        
    
    }
    }
    @IBAction func clearFunction(_ sender: Any) {
        textResult.text = ""
    }
}

