//
//  ViewController.swift
//  LayoutProject
//
//  Created by NİMET APAYDIN on 7.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var birinciLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    var alinansifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func kontrolettiklandi(_ sender: Any) {
        
        alinansifre = textField.text!
        
        if alinansifre == "Nimet"{
            performSegue(withIdentifier: "toikinciVC", sender: nil)
        }else{
            birinciLabel.text = "Şifreniz Yanlıştır"
        }
        
       
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toikinciVC" {
            let destinationVC = segue.destination as! IkinciViewController
            destinationVC.verilenSifre = alinansifre
        
        }
    }
}

