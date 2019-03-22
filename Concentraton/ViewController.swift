//
//  ViewController.swift
//  Concentraton
//
//  Created by dre on 2019-03-21.
//  Copyright © 2019 dre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    

    @IBAction func touchCard(_ sender: UIButton) {
        
    flipCard(withEmoji:"👻" , on: button)
    }
    
    func flipCard(withEmoji emoji:String , on button:UIButton){
       
        if button.currentTitle == "👻"
        {
            button.setTitle(" ", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6043807131, blue: 0.1304958344, alpha: 1)
        }
        else
        {
            button.setTitle("👻", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

