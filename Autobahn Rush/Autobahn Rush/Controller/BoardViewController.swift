//
//  BoardViewController.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 25.07.2023.
//

import UIKit

class BoardViewController: UIViewController {
    
    private var boardView = BoardView()
    private var backButton = UIButton()
    
    private var resultsArray = Board.shared.resultsArray
    private var tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        setupTableView()
    }
    
    private func setupTableView() {
        tableView = boardView.statisticTableView
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func configureView() {
        view.addSubview(boardView)
        
        boardView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        backButton = boardView.arrowButton
        backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
    }
}

extension BoardViewController {
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
}

extension BoardViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultsArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BoardTableViewCell.reuseId, for: indexPath) as? BoardTableViewCell  else {
            fatalError("Erorr")
        }
        cell.nameLabel.text = resultsArray[indexPath.row].name
        cell.resultLabel.text = String(resultsArray[indexPath.row].result)
        cell.numberLabel.text = "\(indexPath.row+1)."
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 25
    }
    

    
    
}
