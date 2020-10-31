//
//  ViewController.swift
//  QuipuAgenda
//
//  Created by Renzo Gomez on 10/21/20.
//  Copyright © 2020 Equipo Dinamita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnGo: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //0, 119,255
        btnGo.layer.cornerRadius = 25.0
    }

    @available(iOS 13.0, *)
    @IBAction func btnGoPressed(_ sender: Any) {
        btnGo.backgroundColor = UIColor.blue
        
        
    }
    
}

