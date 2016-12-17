//
//  settingController.swift
//  tipCal
//
//  Created by Jake Vo on 12/12/16.
//  Copyright © 2016 Jake Vo. All rights reserved.
//

import UIKit

protocol DataEnterDelegate {
    func UserDidUpdateTip (tipPer: String)
}

class settingController: UIViewController {
    
    
    @IBOutlet weak var updateTipButton: UIButton!
    @IBOutlet weak var tipNew: UITextField!
    var delegate:DataEnterDelegate? = nil
    
    //save and update the tip to first viewController
    @IBAction func updateTip(_ sender: Any) {
        
        //first user not enter anything, display current tip perecent
        if delegate != nil {
            
            if (tipNew.text?.isEmpty)! {
                tipNew.text = "15"
            }
            let tip: String = tipNew.text!
            delegate!.UserDidUpdateTip(tipPer: tip)
            self.navigationController?.popViewController(animated: false)
        }
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        
        tipNew.text = "15"
        
        tipNew.becomeFirstResponder()
        
        super.viewDidLoad()
        
        //make the navigationbar translucent
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(),
        for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        // Do any additional setup after loading the view.
    }


    
   
}
