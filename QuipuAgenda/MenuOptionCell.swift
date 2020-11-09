//
//  MenuOptionCell.swift
//  QuipuAgenda
//
//  Created by Renzo Gomez on 11/8/20.
//  Copyright © 2020 Equipo Dinamita. All rights reserved.
//

import UIKit

class MenuOptionCell: UITableViewCell {
    
    @IBOutlet weak var OptionIV: UIImageView!
    @IBOutlet weak var OptionLbl: UILabel!
    
    func setMenuOption(menuOption: MenuOption){
        OptionIV.image = menuOption.OptionImage
        OptionLbl.text = menuOption.OptionLabel
    }
}
