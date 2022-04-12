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
    
    @IBOutlet weak var neyapacaksiniz: UITextField!
    
    @IBOutlet weak var nezaman: UITextField!
    
    @IBOutlet weak var yapilacakis: UILabel!
    
    @IBOutlet weak var yapilacakzaman: UILabel!
    
    var alinansifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        // as -> casting
        // as? yüzde yüz string , as! string olabilir
        
        if let gelenNot  = kaydedilenNot as? String {
            yapilacakis.text = "Yapılacak İş: \(gelenNot)"
        }
        
        if let gelenZaman = kaydedilenZaman as? String {
            yapilacakzaman.text = "Yapilacak Zaman: \(gelenZaman)"
        }
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
    
    @IBAction func kaydettiklandi(_ sender: Any) {
        
        UserDefaults.standard.set(neyapacaksiniz.text!, forKey: "not")
        UserDefaults.standard.set(nezaman.text!, forKey: "zaman")
        
        yapilacakis.text = "Yapılacak İş: \(neyapacaksiniz.text!)"
        yapilacakzaman.text = "Yapılacak Zaman: \(nezaman.text!)"
    }
    
    
    @IBAction func silTiklandi(_ sender: Any) {
      let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        
      let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if (kaydedilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            yapilacakis.text = "Yapilacak iş: "
        
         }
        
        if (kaydedilenZaman as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "zaman")
            yapilacakzaman.text = "Yapilacak Zaman :"
            
        }
    }
    
}

