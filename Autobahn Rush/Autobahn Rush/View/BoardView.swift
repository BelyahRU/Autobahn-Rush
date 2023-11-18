//
//  BoardView.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 25.07.2023.
//

import UIKit

class BoardView: UIView {
    
    private let backgroundImage = UIImageView(image: UIImage(named: Resources.Backgrounds.backgroundImage))
    private let backgroundTint = UIImageView(image: UIImage(named: Resources.Backgrounds.backgroundTint))
    
    public var arrowButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: Resources.Buttons.arrowButton), for: .normal)
        return button
    }()
    
    public var statisticTableView: UITableView = {
        let tab = UITableView()
        tab.showsVerticalScrollIndicator = false
        tab.backgroundColor = .clear
        tab.separatorColor = .white
        tab.register(BoardTableViewCell.self, forCellReuseIdentifier: BoardTableViewCell.reuseId)
        return tab
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
        addSubview(statisticTableView)
        
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
        
        statisticTableView.snp.makeConstraints { make in
            make.leading.equalTo(arrowButton.snp.trailing).offset(5)
            make.bottom.equalTo(backgroundTint.snp.bottom).inset(25)
            make.top.equalTo(backgroundTint.snp.top).inset(15)
            make.trailing.equalTo(backgroundTint.snp.trailing).inset(25)
        }
    }
    
}
