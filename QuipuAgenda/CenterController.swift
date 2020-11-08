//
//  CenterController.swift
//  QuipuAgenda
//
//  Created by Renzo Gomez on 11/7/20.
//  Copyright © 2020 Equipo Dinamita. All rights reserved.
//
import SideMenu
import UIKit

class CenterController: UIViewController {
    var menu: SideMenuNavigationController?
    @IBOutlet weak var btnEditProfile: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        menu?.leftSide = true
        menu?.setNavigationBarHidden(true, animated: false)
        
        SideMenuManager.default.leftMenuNavigationController = menu
        
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        // Do any additional setup after loading the view.
        btnEditProfile.layer.cornerRadius = 15.0;
    }
    
    @IBAction func BtnMenuPressed(_ sender: Any) {
        present(menu!, animated: true)
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
class MenuListController: UITableViewController{
    var items = ["INICIO","MIS HORARIOS","CALCULADORA NOTAS","MIS RESPUESTAS","MI PERFIL","CONTRASEÑA","ACERCA DE CQ"]
    override func viewDidLoad() {
        tableView.backgroundColor = UIColor(red: 0/255.0, green: 209/255.0, blue: 211/255.0, alpha: 1)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = UIColor(red: 0/255.0, green: 209/255.0, blue: 211/255.0, alpha: 1)
        return cell
    }
}
