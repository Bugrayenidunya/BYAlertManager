//
//  File.swift
//  
//
//  Created by Enes Buğra Yenidünya on 26.02.2022.
//

import Foundation

public protocol BYToastAlertViewProtocol {
    var primaryButtonAction: (() -> Void)? { get }
    var dismissButtonAction: (() -> Void)? { get }
}
