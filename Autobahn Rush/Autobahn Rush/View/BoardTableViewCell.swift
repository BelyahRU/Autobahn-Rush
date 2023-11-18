//
//  BoardTableViewCell.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 25.07.2023.
//

import UIKit

class BoardTableViewCell: UITableViewCell {

    static let reuseId = "BoardTableViewCell"
    var numberLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.backgroundColor = .clear
        label.font = UIFont(name: Resources.Fonts.robotoRegular, size: 15)
        label.textColor = Resources.Colors.greenLightColor
        return label
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.backgroundColor = .clear
        label.textColor = .white
        label.font = UIFont(name: Resources.Fonts.robotoRegular, size: 15)
        return label
    }()
    
    var resultLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.backgroundColor = .clear
        label.font = UIFont(name: Resources.Fonts.robotoRegular, size: 15)
        label.textColor = Resources.Colors.greenLightColor
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        contentView.addSubview(numberLabel)
        contentView.addSubview(nameLabel)
        contentView.addSubview(resultLabel)
        backgroundColor = .clear
        
        //contentView.backgroundColor = .clear
        
        numberLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(18)
            make.width.equalTo(30)
            make.centerY.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints { make in
            make.height.equalTo(18)
            make.leading.equalToSuperview().offset(100)
            make.width.equalTo(100)
            make.centerY.equalToSuperview()
        }
        
        resultLabel.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(70)
            make.height.equalTo(18)
            make.width.equalTo(30)
            make.centerY.equalToSuperview()
        }
    }
    
}
