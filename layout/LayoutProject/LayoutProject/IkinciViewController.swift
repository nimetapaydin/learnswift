//
//  IkinciViewController.swift
//  LayoutProject
//
//  Created by NİMET APAYDIN on 8.04.2022.
//

import UIKit

class IkinciViewController: UIViewController {
    
    @IBOutlet weak var bulunansifreText: UILabel!

    var verilenSifre = ""
    
    override func viewDidLoad() {
        
        sifreText.text = verilenSifre
        super.viewDidLoad()

       
    }
    

}
