//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by Matthew on 6/10/22.
//

import Foundation
import SwiftUI

/*
 going to create the model
 */
class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["🈚️","🈸","🈯️","🈴",
                  "🈲","㊙️","🈺","🈶",
                  "🈷","🈳","㊗️","🉐",
                  "🈂️"
    ]
    private static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numberOfPairsOfCards: 10){pairIndex in
            Self.emojis[pairIndex]}
    }
    @Published private(set) var model = createMemoryGame()

    var cards: Array<Card> {
        model.cards
    }
    
    // Mark: - Intent(s)
    func choose(_ card: Card){
        model.choose(card)
    }
    
}
