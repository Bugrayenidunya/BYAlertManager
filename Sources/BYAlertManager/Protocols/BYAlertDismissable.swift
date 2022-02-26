//
//  BYAlertDismissable.swift
//  
//
//  Created by Enes Buğra Yenidünya on 20.02.2022.
//

import Foundation

protocol BYAlertDismissable {
    
    var dismissButtonAction: (() -> Void)? { get }

}
