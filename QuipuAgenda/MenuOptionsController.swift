//
//  MenuOptionsController.swift
//  QuipuAgenda
//
//  Created by Renzo Gomez on 11/8/20.
//  Copyright © 2020 Equipo Dinamita. All rights reserved.
//

import UIKit

class MenuOptionsController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var options:[MenuOption] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        options = createArray()
    }
    func createArray() ->[MenuOption]{
        var tempArray:[MenuOption] = []
        
        let option1 = MenuOption(OptionImage: UIImage(named: "inicio 1")!, OptionLabel: "INICIO")
        let option2 = MenuOption(OptionImage: UIImage(named: "p2")!, OptionLabel: "MI HORARIO")
        let option3 = MenuOption(OptionImage: UIImage(named: "p1")!, OptionLabel: "CALCULANOTAS")
        let option4 = MenuOption(OptionImage: UIImage(named: "RESPUESTAS 1")!, OptionLabel: "MIS RESPUESTAS")
        let option5 = MenuOption(OptionImage: UIImage(named: "p4")!, OptionLabel: "MI PERFIL")
        let option6 = MenuOption(OptionImage: UIImage(named: "p5")!, OptionLabel: "CONTRASEÑA")
        let option7 = MenuOption(OptionImage: UIImage(named: "logo")!, OptionLabel: "ACERCA DE CQ")
        
        tempArray.append(option1)
        tempArray.append(option2)
        tempArray.append(option3)
        tempArray.append(option4)
        tempArray.append(option5)
        tempArray.append(option6)
        tempArray.append(option7)
        
        return tempArray
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
extension MenuOptionsController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let option = options[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell") as! MenuOptionCell
        cell.setMenuOption(menuOption: option)
        return cell
    }
}
