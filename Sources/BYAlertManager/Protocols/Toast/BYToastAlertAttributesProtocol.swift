//
//  BYToastAlertAttributesProtocol.swift
//  
//
//  Created by Enes Buğra Yenidünya on 26.02.2022.
//

import SwiftEntryKit
    
public protocol BYToastAlertAttributesProtocol {
    
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
