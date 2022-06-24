//
//  Model.swift
//  setGame
//
//  Created by wonderland on 6/21/22.
//

import Foundation
import SwiftUI



struct ModelSetGame<Symbol, Color, Shading> where Symbol: CaseIterable, Color: CaseIterable, Shading: CaseIterable
{
    private(set) var cardsInDeck: [Card]
    
    init(makeSymbol: (Card.Number, Color, Shading) -> Symbol){
        cardsInDeck = []
        for number in Card.Number.allCases {
            for color in Color.allCases {
                for shading in Shading.allCases {
                    cardsInDeck.append(Card(number: number, color: color, shading: shading, symbol: makeSymbol(number, color, shading)))
                }
            }
        }
    }
    struct Card{
        enum Number: CaseIterable{
            case one,two, three
        }
        var number: Number
        var color: Color
        var shading: Shading
        var symbol: Symbol
    }
}



/*
What changes?
- which cards are selected
- cards in the deck
- cards on the board
 */

/*
 Model notes
 - Completly UI Independent
 - Data + Logic
 - Data: The cards that I store
 - Logic: What happens when user chooses a card
 - Single source of truth
 - 
 

 
 */


