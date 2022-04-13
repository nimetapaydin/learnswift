//
//  IkinciViewController.swift
//  LayoutProject
//
//  Created by NİMET APAYDIN on 8.04.2022.
//

import UIKit

class IkinciViewController: UIViewController {
    
    
    @IBOutlet weak var bulunansifreText: UILabel!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var password2TextField: UITextField!
    
    var verilenSifre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bulunansifreText.text = verilenSifre
    }
    

    @IBAction func signUpTiklandi(_ sender: Any) {
    }
}
