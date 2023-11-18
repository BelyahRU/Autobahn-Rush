//
//  RulesViewController.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 25.07.2023.
//

import UIKit

class RulesViewController: UIViewController {
    
    private let rulesView = RulesView()
    private var backButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        // Do any additional setup after loading the view.
    }
    
    private func configure() {
        view.addSubview(rulesView)
        rulesView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        backButton = rulesView.arrowButton
        backButton.addTarget(self, action: #selector(backPressed), for: .touchUpInside)
    }
    

}
extension RulesViewController {
    @objc func backPressed() {
        navigationController?.popViewController(animated: true)
    }
}
