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

var engDil = [String]()

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ceviriler = try? jsonDecoder.decode([Diller].self, from: myData)

        if let ceviri = ceviriler{
            //print(ceviri)
            for c in ceviri{
                engDil.append(c.Eng)
                
            }
        }
    }
    
    //TableView metotları
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return engDil.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = engDil[indexPath.row]
        
        return cell
    }

}

