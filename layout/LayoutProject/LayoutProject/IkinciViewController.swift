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
        
        if emailTextField.text == "" {
            //email ini girmemişsin
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Email eksik")
        } else if passwordTextField.text == "" {
            //parolanı girmemişsin
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parola Eksik")
        } else if passwordTextField.text != password2TextField.text{
            //parolalar uyuşmuyor
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parolalar uyuşmuyor")
        } else {
            //başarılı kayıt ettik seni
            alertOlustur(titleGirdisi: "Tebrikler!", messageGirdisi: "Kullanıcı oluşturuldu")
        }
        
        
        
        func alertOlustur(titleGirdisi: String, messageGirdisi: String){
            let uyariMesaji = UIAlertController(title:titleGirdisi , message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
                //OK Buttonuna tıklanınca olacaklar
                
                print("ok button tiklandi")
            }
            
            uyariMesaji.addAction(okButton)
            self.present(uyariMesaji, animated: true, completion: nil)
        }
        
        
        
    }
}
