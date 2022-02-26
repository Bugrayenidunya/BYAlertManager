//
//  BYAlertManager.swift
//
//
//  Created by Enes Buğra Yenidünya on 20.02.2022.
//

import UIKit
import SnapKit
import SwiftEntryKit

public final class BYAlertManager: BYAlertManagerProtocol {
    
    // MARK: Properties
    public static let shared: BYAlertManager = .init()
    
    /// Use this function for showing toast messages.
    /// You can create your own ViewModel that confirms `BYToastAlertShowable` and pass in this function.
    /// You can declare behaviour of your alert using `attributes`
    public func show(_ toast: BYToastAlertShowable) {
        let toastAlertView = BYToastAlertView()
        toastAlertView.configure(with: toast)
        
        var entryAttributes = EKAttributes()
        entryAttributes.position = toast.position
        entryAttributes.windowLevel = toast.windowLevel
        entryAttributes.displayDuration = toast.displayDuration
        entryAttributes.positionConstraints = toast.positionConstraints
        entryAttributes.screenInteraction = toast.screenInteraction
        entryAttributes.entryInteraction = toast.entryInteraction
        entryAttributes.scroll = toast.scrollBehaviour
        entryAttributes.entranceAnimation = toast.entranceAnimation
        entryAttributes.exitAnimation = toast.exitAnimation
        
        SwiftEntryKit.display(entry: toastAlertView, using: entryAttributes, presentInsideKeyWindow: true, rollbackWindow: .main)
        
        toastAlertView.dismissButtonAction = {
            SwiftEntryKit.dismiss {
                toast.dismissButtonAction?()
            }
        }
    }
    
    func show(_ popup: BYPopupAlertShowable) {
        
    }
}
