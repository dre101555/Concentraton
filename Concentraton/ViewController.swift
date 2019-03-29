//
//  ViewController.swift
//  Concentraton
//
//  Created by dre on 2019-03-21.
//  Copyright © 2019 dre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0{
        didSet{
          flipCounter.text = "FlipCount:\(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCounter: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    // create an array : make proj. data driven
    
    //Array of UIButtons
    @IBOutlet var CardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        
        var emojiChoices = ["👻","🎃","👻","🎃"]
        //flipCard(withEmoji: emojiChoices, on: <#T##UIButton#>)
        flipCount+=1
         if let cardNumber = CardButtons.index(of:sender)
         {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            
        }
         else{
            print("chosen card not found")
        }
        
    }
    
    func flipCard(withEmoji emoji:String , on button:UIButton){
       
        if button.currentTitle == emoji
        {
            button.setTitle(" ", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6043807131, blue: 0.1304958344, alpha: 1)
        }
        else
        {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

