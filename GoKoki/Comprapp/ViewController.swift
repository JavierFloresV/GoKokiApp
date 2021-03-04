//
//  ViewController.swift
//  Comprapp
//
//  Created by Francisco Flores on 03/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalPriceLbl: UILabel!
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = ""
    }
    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTxt.text!)!
        
        let totalSalesTax = price * salesTax
        let fullPrice = price + totalSalesTax
        totalPriceLbl.text = "$\(fullPrice)"
    }
}
