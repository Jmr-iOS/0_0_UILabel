//
//  ViewController.swift
//  0_0 - Empty Template (Swift)
//
//  Created by Justin Reina on 11/12/15.
//  Copyright © 2015 Jaostech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
        
        self.addLabel(self.view);
        
        self.addSecondLabel(self.view);
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();

        return;
    }
    
    
    func addLabel(view:UIView) {
        
        let myFirstLabel = UILabel();
        
        myFirstLabel.text = "I made a label on the screen #toogood4you";
        myFirstLabel.font = UIFont(name: "MarkerFelt-Thin", size: 45);
        myFirstLabel.textColor = UIColor.redColor();
        myFirstLabel.textAlignment = .Center;
        myFirstLabel.numberOfLines = 5;
        
        myFirstLabel.frame = CGRectMake(15, 54, 300, 500);
        
        myFirstLabel.translatesAutoresizingMaskIntoConstraints = false;
        
        view.addSubview(myFirstLabel);
        
        return;
    }
    
    
    func addSecondLabel(view: UIView) {
        
        
        let newLabel : UILabel = UILabel(frame: CGRect(x:245, y: 115, width: 55, height:  22));      //values selected emperically
        
        newLabel.font  =   UIFont(name: "HelveticaNeue", size: 13);
        newLabel.text  =   "4:30 PM";
        newLabel.textColor     = UIColor.blackColor();
        newLabel.textAlignment = NSTextAlignment.Left;
        newLabel.backgroundColor    = UIColor(red: 255/255, green:  60/255, blue:  60/255, alpha: 1);
        newLabel.clipsToBounds      = true; //required in order for clipping to show!
        newLabel.layer.cornerRadius = 12;
        
        view.addSubview(newLabel);
        
        return;
    }
}
