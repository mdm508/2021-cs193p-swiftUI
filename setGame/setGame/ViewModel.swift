////
////  ViewModel.swift
////  setGame
////
////  Created by wonderland on 6/21/22.
////
//
import Foundation
import SwiftUI




/*
 - Bind view to model so changes in model cause view to react and be rebuilt
 - interpreter
 - gatekeeper (only access to model appropriately)
 - view model gets data from model via VM proxy.
 - doesn't store data
 - looks for changes in the model
 - process intent from view
 
 */

class ViewModelSetGame: ObservableObject {
    typealias SetGame = ModelSetGame<Shape, Color, Shading, Number>
    typealias Card = SetGame.Card

    @Published private var model = createSetGame()

    
    private static func createSetGame() -> SetGame {
        ModelSetGame()
    }
    
    var cardsOnBoard: [Card] {
        model.cardsOnBoard
    }

    
        // put functions that show user intent in the viewModel
        // MARK: - Intent(s)
//
//    func choose(_ card: Card) {
//        model.choose(card)
//    }
    
    enum Shape: Int, CaseIterable {
        case round, box, point
    }
    enum Color: Int, CaseIterable {
        case white, green, red
    }
    enum Shading: Int, CaseIterable {
        case none, fill, stripe
    }
    enum Number: Int, CaseIterable{
        case one,two, three
    }
}


