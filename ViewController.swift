/************************************************************************************************************************************/
/** @file       ViewController.swift
 *  @project    0_0 - UILabel
 *  @brief      example use of UILabel
 *  @details    x
 *
 *  @author     Justin Reina, Firmware Engineer, Jaostech
 *  @created    11/12/15
 *  @last rev   1/2/18
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
        
        //Init
        let myFirstLabel = UILabel();                                               /* init                                         */
        
        //Setup
        myFirstLabel.font = UIFont(name: "MarkerFelt-Thin", size: 45);              /* font selection                               */
        myFirstLabel.textColor = UIColor.red;                                       /* color of text                                */
        myFirstLabel.backgroundColor = UIColor.gray;                                /* color of background                          */
        myFirstLabel.textAlignment = .center;                                       /* x-alignment of text                          */
        myFirstLabel.numberOfLines = 5;                                             /* max num lines, '0' for Inf                   */
        myFirstLabel.frame = CGRect(x: 15, y: 154, width: 300, height: 400);        /* location in view                             */
        myFirstLabel.translatesAutoresizingMaskIntoConstraints = true;              /* allow constraints                            */

        //Text
        myFirstLabel.text = "I made a label on the screen #toogood4you";            /* set the displayed text                       */
        
        //Add to view
        view.addSubview(myFirstLabel);                                              /* add to view                                  */
        
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        addSecondLabel(_ view: UIView)                                                                                  */
    /*  @brief      showing init(frame) and other options                                                                           */
    /********************************************************************************************************************************/
    @objc func addSecondLabel(_ view: UIView) {
        
        let textColor  = UIColor.black;
        let bkgndColor = UIColor(red: 255/255, green:  60/255, blue:  60/255, alpha: 1);
        let labelFrame = CGRect(x:245, y: 170, width: 55, height:  22);
        
        //Init
        let newLabel : UILabel = UILabel(frame: labelFrame);
        
        //Setup
        newLabel.font  =   UIFont(name: "HelveticaNeue", size: 13);                 /* font selection                               */
        newLabel.textColor     = textColor;                                         /* color of text                                */
        newLabel.textAlignment = NSTextAlignment.left;                              /* x-alignment of text                          */
        newLabel.backgroundColor    = bkgndColor;                                   /* color of background                          */
        newLabel.clipsToBounds      = true;                                         /* needed for corners                           */
        newLabel.layer.cornerRadius = 12;                                           /* apply rounded corners to view edges          */
        
        //Text
        newLabel.text  =   "4:30 PM";                                               /* set the displayed text                       */
        
        //Add to view
        view.addSubview(newLabel);                                                  /* add to view                                  */
        
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

