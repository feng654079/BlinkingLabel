//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by feng654079 on 12/15/2017.
//  Copyright (c) 2017 feng654079. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {
    
    var isBlinking = false;
    let blinkLabel = BlinkingLabel(frame:CGRect(x:10,y:20,width:200,height:30))
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setup the BlinkingLabel
        blinkLabel.text = "I blink"
        blinkLabel.font = UIFont.systemFont(ofSize:20)
        view.addSubview(blinkLabel)
        isBlinking = true
        
        //Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame:CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal);
        toggleButton.setTitleColor(UIColor.red, for: .normal);
        toggleButton.addTarget(self, action: #selector(self.toggleBlinking(_sender:)), for: .touchUpInside)
        view.addSubview(toggleButton);
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: actions
   @objc func toggleBlinking(_sender: UIButton?) {
        if (isBlinking) {
            blinkLabel.stopBlinking();
        } else {
            blinkLabel.startBlinking();
        }
        isBlinking = !isBlinking;
    }
    
}

