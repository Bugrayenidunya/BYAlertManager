//
//  BYAlertManagerProtocol.swift
//  
//
//  Created by Enes Buğra Yenidünya on 20.02.2022.
//

import Foundation
import UIKit

protocol BYAlertManagerProtocol {
    
    func show(_ toast: BYToastAlertShowable)
    
    func show(_ popup: BYPopupAlertShowable)

}
