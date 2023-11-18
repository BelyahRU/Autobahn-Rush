//
//  MenuViewController.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 24.07.2023.
//

import UIKit
import SnapKit

class MenuViewController: UIViewController {
    
    private let menuView = MenuView()
    private var playButton = UIButton()
    private var boardButton = UIButton()
    private var rulesButton = UIButton()
    private var settingsButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
    }
    
    private func configure() {
        view.addSubview(menuView)
        menuView.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalToSuperview()
        }
        
        playButton = menuView.playButton
        boardButton = menuView.boardButton
        rulesButton = menuView.rulesButton
        settingsButton = menuView.settingsButton
        
        
        navigationController?.isNavigationBarHidden = true
        playButton.addTarget(self, action: #selector(playPressed), for: .touchUpInside)
        boardButton.addTarget(self, action: #selector(boardPressed), for: .touchUpInside)
        rulesButton.addTarget(self, action: #selector(rulesPressed), for: .touchUpInside)
        settingsButton.addTarget(self, action: #selector(settingsPressed), for: .touchUpInside)
        
    }

}

extension MenuViewController {
    @objc func playPressed() {
        
    }
    @objc func boardPressed() {
        let vc = BoardViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func rulesPressed() {
        let vc = RulesViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func settingsPressed() {
        let vc = SettingsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
