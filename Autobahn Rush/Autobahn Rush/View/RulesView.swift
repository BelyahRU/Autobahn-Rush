//
//  RulesView.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 25.07.2023.
//

import UIKit

class RulesView: UIView {
    private let backgroundImage = UIImageView(image: UIImage(named: Resources.Backgrounds.backgroundImage))
    private let backgroundTint = UIImageView(image: UIImage(named: Resources.Backgrounds.backgroundTint))
    
    private let rulesLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.text = "TURN OVER ALL YOUR RIVALS' CARS AND STAY ON THE WHEELS YOURSELF."
        label.font = UIFont(name: Resources.Fonts.robotoBold, size: 32)
        label.textColor = Resources.Colors.greenLightColor
        return label
    }()
    
    public var arrowButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.arrowButton), for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubview(backgroundImage)
        addSubview(backgroundTint)
        addSubview(arrowButton)
        addSubview(rulesLabel)
        
        backgroundImage.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        backgroundTint.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(10)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-10)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        arrowButton.snp.makeConstraints { make in
            make.leading.equalTo(backgroundTint.snp.leading).offset(28)
            make.bottom.equalTo(backgroundTint.snp.bottom).inset(20)
        }
        rulesLabel.snp.makeConstraints { make in
            make.leading.equalTo(backgroundTint.snp.leading).offset(130)
            make.trailing.equalTo(backgroundTint.snp.trailing).inset(130)
            make.top.equalTo(backgroundTint.snp.top).offset(70)
            make.bottom.equalTo(backgroundTint.snp.bottom).inset(70)
        }
    }
}
