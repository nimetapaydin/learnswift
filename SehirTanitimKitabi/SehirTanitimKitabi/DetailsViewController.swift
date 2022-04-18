//
//  DetailsViewController.swift
//  SehirTanitimKitabi
//
//  Created by NİMET APAYDIN on 18.04.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var sehirIsmiLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var sehirBolgesiLabel: UILabel!
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sehirIsmiLabel.text = secilenSehir?.isim
        sehirBolgesiLabel.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel
        
    }
    


}
