//
//  ViewController.swift
//  Jest Algılıyıcılar
//
//  Created by NİMET APAYDIN on 15.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var zamanLabel: UILabel!
    
    
    @IBOutlet weak var baslaButton: UIButton!
    
    
    
    var ankara = false
    
    var timer = Timer()
    
    var kalanzaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
    
        imageView.addGestureRecognizer(gestureRecognizer)
        
        kalanzaman = 15
        zamanLabel.text = "Zaman : \(kalanzaman)"
    }
    
    @objc func gorselDegistir(){
        
        
        
        if ankara == false{
            imageView.image = UIImage(named: "ankara")
            label.text = "Ankara"
            ankara = true
            
        }else{
            imageView.image = UIImage(named: "istanbul")
            label.text = "istanbul"
            ankara = false
        }
    }
    
    @IBAction func baslatTiklandi(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
    }
    
    @objc func timerFonksiyonu(){
        zamanLabel.text = "Zaman : \(kalanzaman)"
        kalanzaman = kalanzaman - 1
        
        if kalanzaman == 0 {
            zamanLabel.text = "Süre Bitti"
            timer.invalidate()
            kalanzaman = 15
        }
    }
    
    
}

