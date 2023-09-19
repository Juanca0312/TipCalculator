//
//  AmmountView.swift
//  tip-calculator
//
//  Created by Juan Carlos Hernandez Castillo on 17/09/23.
//

import UIKit

class AmmountView: UIView {
    
    private let title: String
    private let textAlignment: NSTextAlignment
    
    private lazy var titleLabel : UILabel = {
        LabelFactory.build(
            text: title,
            font: ThemeFont.regular(ofSize: 18),
            textColor: ThemeColor.text,
            textAlignment: textAlignment)
    }()
    
    private lazy var ammountLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = ThemeColor.primary
        label.textAlignment = textAlignment
        let text = NSMutableAttributedString(
            string: "$0",
            attributes: [
                .font: ThemeFont.bold(ofSize: 24)
            ])
        text.addAttributes([
            .font: ThemeFont.bold(ofSize: 16)],
                           range: NSMakeRange(0, 1))
        label.attributedText = text
        return label
    }()
    
    private lazy var vStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            titleLabel,
            ammountLabel
        ])
        stackView.axis = .vertical
        return stackView
    }()
    

    
    init(title: String, textAlignment: NSTextAlignment) {
        self.title = title
        self.textAlignment = textAlignment
        
        super.init(frame: .zero)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout(){
        addSubview(vStackView)
        
        vStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

