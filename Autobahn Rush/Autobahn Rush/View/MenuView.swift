//
//  MenuView.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 24.07.2023.
//

import UIKit

class MenuView: UIView {
    
    private let backgroundImage = UIImageView(image: UIImage(named: Resources.Backgrounds.backgroundImage))
    var boardButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.boardButtonImage), for: .normal)
        return button
    }()
    
    var rulesButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.rulesButtonImage), for: .normal)
        return button
    }()
    
    var settingsButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.settingsButtonImage), for: .normal)
        return button
    }()
    
    var playButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.playButtonImage), for: .normal)
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
        
        let sv = UIStackView()
        sv.spacing = 16
        sv.axis = .vertical
        sv.distribution = .fillEqually
        addSubview(sv)
        sv.addArrangedSubview(boardButton)
        sv.addArrangedSubview(rulesButton)
        sv.addArrangedSubview(settingsButton)
        addSubview(playButton)
        
        
        backgroundImage.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        sv.snp.makeConstraints { make in
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(16)
            make.top.equalToSuperview().offset(16)
            make.bottom.equalTo(snp.centerY)
            make.width.equalTo(120)
        }
        
        boardButton.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(37)
        }
        rulesButton.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(37)
        }
        settingsButton.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(37)
        }
        
        playButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(25)
            make.bottom.equalToSuperview().inset(25)
            make.height.equalTo(50)
            make.width.equalTo(142)
        }
    }
    
}
