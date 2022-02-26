//
//  BYToastAlertViewModel.swift
//  
//
//  Created by Enes Buğra Yenidünya on 20.02.2022.
//

import UIKit
import SwiftEntryKit

struct BYToastAlertViewModel: BYToastAlertShowable {
    
    var image: UIImage
    
    var title: String?
    
    var content: String
    
    var titleFont: UIFont
    
    var contentFont: UIFont
    
    var backgroundColor: UIColor
    
    var iconBackgroundColor: UIColor
    
    var dismissButtonAction: (() -> Void)?
    
    var primaryButtonAction: (() -> Void)?
    
    var position: EKAttributes.Position
    
    var windowLevel: EKAttributes.WindowLevel
    
    var displayDuration: EKAttributes.DisplayDuration
    
    var positionConstraints: EKAttributes.PositionConstraints
    
    var screenInteraction: EKAttributes.UserInteraction
    
    var entryInteraction: EKAttributes.UserInteraction
    
    var scrollBehaviour: EKAttributes.Scroll
    
    var entranceAnimation: EKAttributes.Animation
    
    var exitAnimation: EKAttributes.Animation
    
}

// MARK: - Init
extension BYToastAlertViewModel {
    /// Init with default animations
    init(
        image: UIImage,
        title: String?,
        content: String,
        titleFont: UIFont,
        contentFont: UIFont,
        backgroundColor: UIColor,
        iconBackgroundColor: UIColor,
        primaryButtonAction: (() -> Void)?,
        dismissButtonAction: (() -> Void)?
    ) {
        self.image = image
        self.title = title
        self.content = content
        self.titleFont = titleFont
        self.contentFont = contentFont
        self.backgroundColor = backgroundColor
        self.iconBackgroundColor = iconBackgroundColor
        self.primaryButtonAction = primaryButtonAction
        self.dismissButtonAction = dismissButtonAction
        position = .top
        windowLevel = .normal
        displayDuration = .infinity
        positionConstraints = .init(verticalOffset: 16, size: .init(width: .ratio(value: 90), height: .intrinsic), maxSize: .intrinsic)
        screenInteraction = .absorbTouches
        entryInteraction = .absorbTouches
        scrollBehaviour = .disabled
        entranceAnimation = .init(
            translate: .init(duration: 0.5, anchorPosition: .top, spring: .init(damping: 1, initialVelocity: 0)),
            scale: .init(from: 0.5, to: 1, duration: 0.5),
            fade: .init(from: 0.5, to: 1, duration: 0.3))
        exitAnimation = .init(
            translate: .init(duration: 0.3, anchorPosition: .bottom, spring: .init(damping: 1, initialVelocity: 0)),
            fade: .init(from: 0.5, to: 0.1, duration: 0.3))
    }
}

