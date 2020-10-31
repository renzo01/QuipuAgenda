//
//  LoginController.swift
//  QuipuAgenda
//
//  Created by Renzo Gomez on 10/31/20.
//  Copyright © 2020 Equipo Dinamita. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var tfCorreo: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnAbrir: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        btnAbrir.layer.cornerRadius = 25.0
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
