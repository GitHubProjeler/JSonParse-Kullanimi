//
//  ViewController.swift
//  JSonParse Kullanimi
//
//  Created by fatih acar on 25.05.2018.
//  Copyright © 2018 fatih acar. All rights reserved.
//

import UIKit

//Eng-Tr Translate
let myUrl = "https://www.trkaynak.com/Dosyalar/kelimeListesi.php"
let url = URL(string:myUrl)!
let myData = try! Data(contentsOf:url)
var jsonDecoder = JSONDecoder()



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ceviriler = try? jsonDecoder.decode([Diller].self, from: myData)

        if let ceviri = ceviriler{
            print(ceviri)
        }
//        dump(ceviriler?.first)
        
        print("Kelime Sayısı : " + String(describing: ceviriler?.count) as Any )
    }

}

