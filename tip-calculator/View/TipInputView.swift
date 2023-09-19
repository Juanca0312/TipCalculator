//
//  TipInputView.swift
//  tip-calculator
//
//  Created by Juan Carlos Hernandez Castillo on 17/09/23.
//

import UIKit

class TipInputView: UIView {
    
    private let headerView: HeaderView = {
        let view = HeaderView()
        view.configure(
            topText: "Choose",
            bottomText: "your tip")
        return view
    }()
    
    private lazy var tenPercentTipButton: UIButton = {
        let button = buildTipButton(tip: .tenPercent)
        return button
    }()
    
    private lazy var fifteenPercentTipButton: UIButton = {
        let button = buildTipButton(tip: .fiftenPercent)
        return button
    }()
    
    private lazy var twentyPercentTipButton: UIButton = {
        let button = buildTipButton(tip: .twentyPercent)
        return button
    }()
    
    private lazy var customTipButton: UIButton = {
        let button = UIButton()
        button.setTitle("Custom tip", for: .normal)
        button.titleLabel?.font = ThemeFont.bold(ofSize: 20)
        button.backgroundColor = ThemeColor.primary
        button.tintColor = .white
        button.addConerRadius(radius: 8)
        return button
    }()
    
    private lazy var buttonHStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            tenPercentTipButton,
            fifteenPercentTipButton,
            twentyPercentTipButton
        ])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 16
        
        return stackView
    }()
    
    private lazy var buttonVStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            buttonHStackView,
            customTipButton
        ])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 16
        
        return stackView
    }()
    
    init() {
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        [headerView, buttonVStackView].forEach(addSubview(_:))
        
        buttonVStackView.snp.makeConstraints { make in
            make.top.bottom.trailing.equalToSuperview()
        }
        
        headerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalTo(buttonVStackView.snp.leading).offset(-24)
            make.width.equalTo(68)
            make.centerY.equalTo(buttonHStackView.snp.centerY)
        }
    }
    
    private func buildTipButton(tip: Tip) -> UIButton {
        let button = UIButton(type: .custom)
        button.backgroundColor = ThemeColor.primary
        button.addConerRadius(radius: 8)
        let text = NSMutableAttributedString(
            string: tip.stringValue,
            attributes: [
                .font: ThemeFont.bold(ofSize: 20),
                .foregroundColor: UIColor.white
            ])
        text.addAttributes([
            .font: ThemeFont.demiBold(ofSize: 14)
        ], range: NSMakeRange(2,1))
        button.setAttributedTitle(text, for: .normal)
        return button
    }
    
}

