//
//  ViewController.swift
//  AlisVerisListesi
//
//  Created by NİMET APAYDIN on 18.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(eklemeButtonuTiklandi))
    
    }
    
    @objc func eklemeButtonuTiklandi(){
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
}
