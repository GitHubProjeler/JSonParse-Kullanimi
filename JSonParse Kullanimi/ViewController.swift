//
//  ViewController.swift
//  JSonParse Kullanimi
//
//  Created by fatih acar on 25.05.2018.
//  Copyright © 2018 fatih acar. All rights reserved.
//

import UIKit

let myUrl = "http://www.trkaynak.com/Dosyalar/kelimeListesi.php"
let url = URL(string:myUrl)!
let myData = try! Data(contentsOf:url)
var jsonDecoder = JSONDecoder()

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ceviri = try? jsonDecoder.decode([Ceviriler].self, from: myData)
        dump(ceviri?.first)
    }

    


}

