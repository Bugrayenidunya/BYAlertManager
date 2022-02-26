//
//  File.swift
//  
//
//  Created by Enes Buğra Yenidünya on 26.02.2022.
//

import Foundation
import SwiftEntryKit

public struct BYToastAlertAttributesViewModel: BYToastAlertAttributesProtocol {
    
    public var position: EKAttributes.Position
    
    public var windowLevel: EKAttributes.WindowLevel
    
    public var displayDuration: EKAttributes.DisplayDuration
    
    public var positionConstraints: EKAttributes.PositionConstraints
    
    public var screenInteraction: EKAttributes.UserInteraction
    
    public var entryInteraction: EKAttributes.UserInteraction
    
    public var scrollBehaviour: EKAttributes.Scroll
    
    public var entranceAnimation: EKAttributes.Animation
    
    public var exitAnimation: EKAttributes.Animation
    
}
