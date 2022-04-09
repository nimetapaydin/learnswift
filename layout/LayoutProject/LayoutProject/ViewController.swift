//
//  ViewController.swift
//  LayoutProject
//
//  Created by NİMET APAYDIN on 7.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var sifreText: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func kontrolettiklandi(_ sender: Any) {
        performSegue(withIdentifier: "toikinciVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toikinciVC"{
            aaaa
        }
    }
}

