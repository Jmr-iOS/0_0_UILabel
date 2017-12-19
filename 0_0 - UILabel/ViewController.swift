/************************************************************************************************************************************/
/** @file       ViewController.swift
 *  @project    0_0 - UILabel
 *  @brief      example use of UILabel
 *  @details    x
 *
 *  @author     Justin Reina, Firmware Engineer, Jaostech
 *  @created    11/12/15
 *  @last rev   12/19/17
 *
 *  @section    Opens
 *      none current
 *
 *  @section    Legal Disclaimer
 *      All contents of this source file and/or any other Jaostech related source files are the explicit property on Jaostech
 *      Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


class ViewController: UIViewController {

    /********************************************************************************************************************************/
    /** @fcn        viewDidLoad()                                                                                                   */
    /*  @brief      x                                                                                                               */
    /********************************************************************************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
        
        self.addLabel(self.view);
        
        self.addSecondLabel(self.view);
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }

    

    

    /********************************************************************************************************************************/
    /** @fcn        addLabel(_ view:UIView)                                                                                         */
    /*  @brief      x                                                                                                               */
    /********************************************************************************************************************************/
    @objc func addLabel(_ view:UIView) {
        
        let myFirstLabel = UILabel();
        
        myFirstLabel.text = "I made a label on the screen #toogood4you";
        myFirstLabel.font = UIFont(name: "MarkerFelt-Thin", size: 45);
        myFirstLabel.textColor = UIColor.red;
        myFirstLabel.textAlignment = .center;
        myFirstLabel.numberOfLines = 5;
        
        myFirstLabel.frame = CGRect(x: 15, y: 54, width: 300, height: 500);
        
        myFirstLabel.translatesAutoresizingMaskIntoConstraints = true;
        
        view.addSubview(myFirstLabel);
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        addSecondLabel(_ view: UIView)                                                                                  */
    /*  @brief      x                                                                                                               */
    /********************************************************************************************************************************/
    @objc func addSecondLabel(_ view: UIView) {
        
        let newLabel : UILabel = UILabel(frame: CGRect(x:245, y: 115, width: 55, height:  22));      //values selected emperically
        
        newLabel.font  =   UIFont(name: "HelveticaNeue", size: 13);
        newLabel.text  =   "4:30 PM";
        newLabel.textColor     = UIColor.black;
        newLabel.textAlignment = NSTextAlignment.left;
        newLabel.backgroundColor    = UIColor(red: 255/255, green:  60/255, blue:  60/255, alpha: 1);
        newLabel.clipsToBounds      = true; //required in order for clipping to show!
        newLabel.layer.cornerRadius = 12;
        
        view.addSubview(newLabel);
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        didReceiveMemoryWarning()                                                                                       */
    /*  @brief      x                                                                                                               */
    /********************************************************************************************************************************/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        return;
    }
}

