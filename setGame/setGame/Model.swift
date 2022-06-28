    //
    //  Model.swift
    //  setGame
    //
    //  Created by wonderland on 6/21/22.
    //

import Foundation
import SwiftUI



struct ModelSetGame<Shape, Color, Shading, Number> where
Shape: CaseIterable,
Color: CaseIterable,
Shading: CaseIterable,
Number: CaseIterable {
    private(set) var cardsInDeck: [Card]
    private(set) var cardsOnBoard: [Card]
    
    init(){
        self.cardsInDeck = []
        for s in Shape.allCases {
            for c in Color.allCases {
                for shd in Shading.allCases {
                    for n in Number.allCases {
                        self.cardsInDeck.append(Card(shape: s,
                                                color: c,
                                                shading: shd,
                                                number: n))
                    }
                }
            }
        }
        self.cardsOnBoard = []
    }
    struct Card{
        public private(set) var shape: Shape
        public private(set) var color: Color
        public private(set) var shading: Shading
        public private(set) var number: Number
            //        private var numberRaw: Int {number.rawValue}
            //        private var shapeRaw: Int {shape.rawValue}
            //        private var colorRaw: Int {color.rawValue}
            //        private var shadingRaw: Int {shading.rawValue}
            //        static let properties : [KeyPath<Card, Int>] = [\Card.numberRaw, \Card.shapeRaw, \Card.colorRaw, \Card.shapeRaw]
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


