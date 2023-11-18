//
//  GameIsEndView.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 25.07.2023.
//

import UIKit

class GameIsEndView: UIView {
    
    private let backgroundTint = UIImageView(image: UIImage(named: Resources.Backgrounds.backgroundTint))

    public var playAgainButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.playAgainButton), for: .normal)
        return button
    }()
    
    public var menuButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.menuButton), for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        addSubview(backgroundTint)
        addSubview(playAgainButton)
        addSubview(menuButton)
        
        backgroundTint.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(10)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-10)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        playAgainButton.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(69)
            make.bottom.equalTo(backgroundTint.snp.bottom).inset(100)
            make.trailing.equalTo(backgroundTint.snp.centerX).inset(25)
        }
        
        menuButton.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(69)
            make.bottom.equalTo(backgroundTint.snp.bottom).inset(100)
            make.leading.equalTo(backgroundTint.snp.centerX).offset(20)
        }
    }
    
}
