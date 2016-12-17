//
//  ViewController.swift
//  guestCheck
//
//  Created by Jake Vo on 12/15/16.
//  Copyright © 2016 Jake Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataEnterDelegate {

    
    @IBOutlet weak var subBill: UITextField!
    
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var tipAmt: UILabel!
    @IBOutlet weak var totalBill: UILabel!
    @IBOutlet weak var eachPay: UILabel!
    @IBOutlet weak var splitNum: UITextField!
   
    var tipUpdate: Double = 15.0
    
    func UserDidUpdateTip(tipPer: String) {
        tipUpdate = Double (tipPer)!
        tipPercent.text = String (format: "%.f", tipUpdate)
        helper()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showSetting" {
            
            let settingCont:settingController = segue.destination as! settingController
            settingCont.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipPercent.isUserInteractionEnabled = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func splitChange(_ sender: Any) {
        helper()
    }
    
    @IBAction func billUpdate(_ sender: Any) {
        helper()
    }
    
    @IBAction func tipChange(_ sender: Any) {
        let tipPercentage = Double (tipPercent.text!)
        
        let subTotal = Double (subBill.text!) ?? 0
        
        let tip = ((tipPercentage!)/100) * subTotal
        
        let share = Double(splitNum.text!) ?? 1
        
        totalBill.text = String (format: "$%.2f", tip + subTotal)
        tipAmt.text = String (format: "$%.2f", tip)
        eachPay.text = String (format: "$%.2f", (subTotal + tip)/share)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    func helper() {
        let tipPercentage = Double (tipPercent.text!)
        
        let subTotal = Double (subBill.text!) ?? 0
        
        let tip = ((tipPercentage!)/100) * subTotal
        
        let share = Double(splitNum.text!) ?? 1
        
        //let amtPeople = Double (sp2
        totalBill.text = String (format: "$%.2f", tip + subTotal)
        tipAmt.text = String (format: "$%.2f", tip)
        eachPay.text = String (format: "$%.2f", (subTotal + tip)/share)
    }
    
    

}

