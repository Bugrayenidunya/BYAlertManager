//
//  BYToastAlertView.swift
//  
//
//  Created by Enes Buğra Yenidünya on 20.02.2022.
//

import UIKit

final class BYToastAlertView: UIView, BYToastAlertViewProtocol {
    
    // MARK: Properties
    internal var primaryButtonAction: (() -> Void)?
    internal var dismissButtonAction: (() -> Void)?
    
    // MARK: Views
    private let containerView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()

    private let iconWrapperView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        return view
    }()

    private let iconImageView: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    private let titlenLabel: UILabel = {
        let label = UILabel()
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()

    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()

    private lazy var dismissButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.addTarget(self, action: #selector(dismissButtonPressed), for: .touchUpInside)
        return button
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layoutViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with viewModel: BYToastAlertShowable) {
        iconImageView.image = viewModel.image
        titlenLabel.text = viewModel.title
        descriptionLabel.text = viewModel.content
        
        titlenLabel.font = viewModel.titleFont
        titlenLabel.textColor = viewModel.titleColor
        descriptionLabel.font = viewModel.contentFont
        descriptionLabel.textColor = viewModel.contentColor
        backgroundColor = viewModel.backgroundColor
        iconWrapperView.backgroundColor = viewModel.iconBackgroundColor
    }
}

// MARK: - Helpers
private extension BYToastAlertView {
    @objc
    func dismissButtonPressed() {
        dismissButtonAction?()
    }
    
    func layoutViews() {
        addSubview(containerView)
        containerView.addSubview(iconWrapperView)
        iconWrapperView.addSubview(iconImageView)
        containerView.addSubview(descriptionLabel)
        containerView.addSubview(dismissButton)
        
        layoutConstraints()
    }
    
    func layoutConstraints() {
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        iconWrapperView.snp.makeConstraints { make in
            make.height.width.equalTo(42)
            make.centerY.equalTo(containerView.snp.centerY)
            make.leading.equalTo(containerView.snp.leading).offset(8)
        }

        iconImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(8)
        }

        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(containerView.snp.top).offset(16)
            make.leading.equalTo(iconWrapperView.snp.trailing).offset(16)
            make.bottom.equalTo(containerView.snp.bottom).offset(-16)
            make.trailing.equalTo(dismissButton.snp.leading).offset(-16)
        }

        dismissButton.snp.makeConstraints { make in
            make.height.width.equalTo(32)
            make.centerY.equalTo(containerView.snp.centerY)
            make.trailing.equalTo(containerView.snp.trailing).offset(-16)
        }
    }
}
