//
//  BYToastAlertViewModel.swift
//  
//
//  Created by Enes Buğra Yenidünya on 20.02.2022.
//

import UIKit
import SwiftEntryKit

public struct BYToastAlertViewModel: BYToastAlertShowable {
    
    public var image: UIImage
    
    public var title: String?
    
    public var content: String
    
    public var titleFont: UIFont
    
    public var contentFont: UIFont
    
    public var backgroundColor: UIColor
    
    public var iconBackgroundColor: UIColor
    
    public var dismissButtonAction: (() -> Void)?
    
    public var primaryButtonAction: (() -> Void)?
    
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

