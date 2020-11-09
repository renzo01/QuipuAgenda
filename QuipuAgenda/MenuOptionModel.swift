//
//  MenuOptionModel.swift
//  QuipuAgenda
//
//  Created by Renzo Gomez on 11/8/20.
//  Copyright © 2020 Equipo Dinamita. All rights reserved.
//

import Foundation
import UIKit
class MenuOption{
    var OptionImage: UIImage
    var OptionLabel: String
    
    init(OptionImage:UIImage,OptionLabel: String) {
        self.OptionImage = OptionImage
        self.OptionLabel = OptionLabel
    }
}
