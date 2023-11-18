//
//  GameIsEndViewController.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 25.07.2023.
//

import UIKit

class GameIsEndViewController: UIViewController {
    
    private let gameIsEndView = GameIsEndView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        configure()
    }
    
    private func configure() {
        view.addSubview(gameIsEndView)
        
        gameIsEndView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
    }
    

}
