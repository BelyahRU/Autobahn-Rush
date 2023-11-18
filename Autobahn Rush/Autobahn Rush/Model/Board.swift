//
//  Board.swift
//  Autobahn Rush
//
//  Created by Александр Андреев on 25.07.2023.
//

import Foundation
class Board {
    public static let shared = Board()
    
    public var resultsArray = [Result]()
    
    private init() {
        generateArray()
    }
    
    private func generateArray() {
        resultsArray.append(Result(name: "sofa", result: 4))
        resultsArray.append(Result(name: "kitzen", result: 6))
        resultsArray.append(Result(name: "musaka", result: 2))
        resultsArray.append(Result(name: "sanem", result: 1))
        resultsArray.append(Result(name: "snow", result: 1))
        resultsArray.append(Result(name: "jan", result: 0))
        resultsArray.append(Result(name: "pusya111", result: 2))
        resultsArray.append(Result(name: "garry", result: 2))
        resultsArray.append(Result(name: "goofy", result: 2))

    }
}

struct Result {
    let name: String
    var result: Int
}
