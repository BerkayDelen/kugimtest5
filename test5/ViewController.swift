//
//  ViewController.swift
//  test4
//
//  Created by ST13 on 16.12.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // class basliyor
    
    
    func notHesaplama(not:Double, kaldi:Double) -> String {
        let notDegeri:String
        let globaldeVar = "func"
        print(globaldeVar)
        if not < kaldi {
            notDegeri = "kaldi"
            return notDegeri
        } else if not < 55 {
            notDegeri = "az not aldi"
            return notDegeri
        } else if not < 70 {
            notDegeri = "eh iste"
            return notDegeri
        } else if not < 85 {
            notDegeri = "heh geldin sayilir"
            return notDegeri
        } else {
            notDegeri = "aferin"
            return notDegeri
        }
    }
    
    
    @IBOutlet weak var noteInfoOutlet: UILabel!
    
    @IBOutlet weak var noteOutlet: UITextField!
    
    @IBAction func calculateAction(_ sender: UIButton) {
        print(noteOutlet.text!)
        print("hesapla butona bastin")
        print(type(of: noteOutlet.text))
        let noteInputValue = noteOutlet.text!
        
        if noteInputValue != "" {
            
            if Double(noteInputValue)! >= 0.00 {
                noteInfoOutlet.text = notHesaplama(not: Double(noteInputValue)!, kaldi: 40.00)
            } else {
                noteInfoOutlet.text = "Notu Yalnis Girdiniz"
            }
            
        }
        // https://paste.ubuntu.com/26193991/
        // commit bir aciklama ister
        // degisiklik yaptim
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        noteInfoOutlet.text = "Daha Bilgi Girilmedi"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

