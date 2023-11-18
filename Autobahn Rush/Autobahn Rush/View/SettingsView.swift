//
//  SettingsView.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 24.07.2023.
//

import UIKit

class SettingsView: UIView {

    private let backgroundImage = UIImageView(image: UIImage(named: Resources.Backgrounds.backgroundImage))
    private let backgroundTint = UIImageView(image: UIImage(named: Resources.Backgrounds.backgroundTint))
    public var soundSwitch: UIButton = {
        let swi = UIButton()
        swi.contentMode = .scaleAspectFit
        swi.imageView?.contentMode = .scaleAspectFill
        swi.setImage(UIImage(named: Resources.Switches.switchOn), for: .normal)
        return swi
    }()
    
    public var musicSwitch: UIButton = {
        let swi = UIButton()
        swi.contentMode = .scaleAspectFit
        swi.imageView?.contentMode = .scaleAspectFill
        swi.setImage(UIImage(named: Resources.Switches.switchOn), for: .normal)
        return swi
    }()
    
    public var languageSwitch: UIButton = {
        let swi = UIButton()
        swi.contentMode = .scaleAspectFit
        swi.imageView?.contentMode = .scaleAspectFill
        swi.setImage(UIImage(named: Resources.Switches.switchEng), for: .normal)
        return swi
    }()
    
    private var globalStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.spacing = 23
        sv.alignment = .fill
        sv.distribution  = .fillEqually
        return sv
    }()
    
    private let soundLabel: UILabel = {
        let label = UILabel()
        label.text = "SOUND"
        label.textAlignment = .center
        label.font = UIFont(name: Resources.Fonts.robotoBold, size: 20)
        label.textColor = Resources.Colors.greenLightColor
        return label
    }()
    
    private let musicLabel: UILabel = {
        let label = UILabel()
        label.text = "MUSIC"
        label.textAlignment = .center
        label.textColor = Resources.Colors.greenLightColor
        label.font = UIFont(name: Resources.Fonts.robotoBold, size: 20)
        return label
    }()
    
    private let languageLabel: UILabel = {
        let label = UILabel()
        label.text = "LANGUAGE"
        label.textAlignment = .center
        label.textColor = Resources.Colors.greenLightColor
        label.font = UIFont(name: Resources.Fonts.robotoBold, size: 20)
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
        let sv1 = UIStackView()
        let sv2 = UIStackView()
        let sv3 = UIStackView()
        
        addSubview(backgroundImage)
        addSubview(backgroundTint)
        addSubview(globalStackView)
        addSubview(arrowButton)
        
        globalStackView.addArrangedSubview(sv1)
        globalStackView.addArrangedSubview(sv2)
        globalStackView.addArrangedSubview(sv3)
        
        sv1.addArrangedSubview(soundLabel)
        sv1.addArrangedSubview(soundSwitch)
        
        sv2.addArrangedSubview(musicLabel)
        sv2.addArrangedSubview(musicSwitch)
        
        sv3.addArrangedSubview(languageLabel)
        sv3.addArrangedSubview(languageSwitch)
        
        backgroundImage.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        backgroundTint.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(10)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-10)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(20)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).offset(-20)
        }
        
        globalStackView.snp.makeConstraints { make in
            make.top.equalTo(backgroundTint.snp.top).offset(60)
            make.bottom.equalTo(backgroundTint.snp.bottom).inset(60)
            make.leading.equalTo(backgroundTint.snp.leading).offset(130)
            make.trailing.equalTo(backgroundTint.snp.trailing).inset(130)
        }
        
        arrowButton.snp.makeConstraints { make in
            make.leading.equalTo(backgroundTint.snp.leading).offset(28)
            make.bottom.equalTo(backgroundTint.snp.bottom).inset(20)
        }
        
        [sv1, sv2, sv3].forEach {
            $0.spacing = 49
            $0.axis = .horizontal
            $0.snp.makeConstraints { make in
                make.width.equalToSuperview()
                make.height.equalTo(60)
            }
        }
        [soundLabel, musicLabel, languageLabel].forEach{
            $0.snp.makeConstraints { make in
                make.width.equalTo(104)
                make.height.equalTo(23)
            }
        }
        
        [soundSwitch, musicSwitch, languageSwitch].forEach {
            $0.snp.makeConstraints { make in
                make.width.equalTo(145)
                make.height.equalTo(57)
            }
        }
        
    }
    
}

