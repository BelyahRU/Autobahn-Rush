//
//  SettingsViewController.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 24.07.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private let settingsView = SettingsView()
    private var soundSwitch = UIButton()
    private var musicSwitch = UIButton()
    private var languegeSwitch = UIButton()
    private var backButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.addSubview(settingsView)
        settingsView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        soundSwitch = settingsView.soundSwitch
        musicSwitch = settingsView.musicSwitch
        languegeSwitch = settingsView.languageSwitch
        soundSwitch.addTarget(self, action: #selector(soundPressed), for: .touchUpInside)
        musicSwitch.addTarget(self, action: #selector(musicPressed), for: .touchUpInside)
        languegeSwitch.addTarget(self, action: #selector(languagePressed), for: .touchUpInside)
        
        backButton = settingsView.arrowButton
        backButton.addTarget(self, action: #selector(backPressed), for: .touchUpInside)
    }
    

}

extension SettingsViewController {
    @objc func soundPressed() {
        if soundSwitch.currentImage == UIImage(named: Resources.Switches.switchOn) {
            soundSwitch.setImage(UIImage(named: Resources.Switches.switchOff), for: .normal)
        } else {
            soundSwitch.setImage(UIImage(named: Resources.Switches.switchOn), for: .normal)
        }
    }
    
    @objc func musicPressed() {
        if musicSwitch.currentImage == UIImage(named: Resources.Switches.switchOn) {
            musicSwitch.setImage(UIImage(named: Resources.Switches.switchOff), for: .normal)
        } else {
            musicSwitch.setImage(UIImage(named: Resources.Switches.switchOn), for: .normal)
        }
    }
    
    @objc func languagePressed() {
        if languegeSwitch.currentImage == UIImage(named: Resources.Switches.switchEng) {
            languegeSwitch.setImage(UIImage(named: Resources.Switches.switchRu), for: .normal)
        } else {
            languegeSwitch.setImage(UIImage(named: Resources.Switches.switchEng), for: .normal)
        }
    }
    
    @objc func backPressed() {
        navigationController?.popViewController(animated: true)
    }
}
