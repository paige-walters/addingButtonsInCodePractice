//
//  ViewController.swift
//  buttonInCode
//
//  Created by Paige Walters on 8/11/16.
//  Copyright © 2016 Paige Walters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonTitles = ["Paige", "Ben", "Dave", "Trent"]
    var buttonY: CGFloat = 20
    var buttonX: CGFloat = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for entry in buttonTitles {
            print(entry)
            let button = UIButton(frame: CGRect(x: buttonX, y: buttonY, width: 100, height: 50))
            buttonY = buttonY + 50
            buttonX = buttonX + 50
            button.layer.cornerRadius = 10
            button.backgroundColor = .blueColor()
            button.setTitle("\(entry)", forState: .Normal)
            button.addTarget(self, action: "buttonAction:", forControlEvents: .TouchUpInside)
            
            self.view.addSubview(button)
        }
    
    }
    
    func buttonAction(sender: UIButton!) {
        print("Button tapped")
        print(sender.titleLabel?.text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

