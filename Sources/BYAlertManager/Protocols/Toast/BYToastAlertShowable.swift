//
//  BYToastAlertShowable.swift
//  
//
//  Created by Enes Buğra Yenidünya on 20.02.2022.
//

import UIKit
import SwiftEntryKit

public protocol BYToastAlertShowable: BYAlertDismissable, BYToastAlertAttributesProtocol {
    
    var image: UIImage { get }
    
    var title: String? { get }
    
    var content: String { get }
    
    var titleFont: UIFont { get }
    
    var contentFont: UIFont { get }
    
    var backgroundColor: UIColor { get }
    
    var iconBackgroundColor: UIColor { get }
    
    var titleColor: UIColor { get }
    
    var contentColor: UIColor { get }
    
    var primaryButtonAction: (() -> Void)? { get }
    
    var position: EKAttributes.Position { get }
    
    var windowLevel: EKAttributes.WindowLevel { get }
    
    var displayDuration: EKAttributes.DisplayDuration { get }
    
    var positionConstraints: EKAttributes.PositionConstraints { get }
    
    var screenInteraction: EKAttributes.UserInteraction { get }
    
    var entryInteraction: EKAttributes.UserInteraction { get }
    
    var scrollBehaviour: EKAttributes.Scroll { get }
    
    var entranceAnimation: EKAttributes.Animation { get }
    
    var exitAnimation: EKAttributes.Animation { get }
    
}
