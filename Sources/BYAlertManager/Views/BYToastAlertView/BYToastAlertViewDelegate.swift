//
//  BYToastAlertViewDelegate.swift
//  
//
//  Created by Enes Buğra Yenidünya on 20.02.2022.
//

import UIKit

protocol BYToastAlertViewProtocol {
    var primaryButtonAction: (() -> Void)? { get }
    var dismissButtonAction: (() -> Void)? { get }
}
