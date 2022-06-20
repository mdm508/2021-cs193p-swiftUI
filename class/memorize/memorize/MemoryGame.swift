//
//  MemoryGame.swift
//  memorize
//
//  Created by Matthew on 6/10/22.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    private var indexOfOnyFaceUpCard: Int? {
        get {cards.indices.filter{i in cards[i].isFaceUp}.oneAndOnly}
        set {cards.indices.forEach{ i in cards[i].isFaceUp = newValue == i}}
    }
    struct Card: Identifiable {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
        let id: Int
 
    }
    mutating func choose(_ card: Card){
        if let chosenIndex = cards.firstIndex(where: {c in c.id == card.id}),
            !cards[chosenIndex].isFaceUp,
            !cards[chosenIndex].isMatched
        {
            if let potentialMaxIndex = indexOfOnyFaceUpCard {
                if cards[potentialMaxIndex].content == cards[chosenIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMaxIndex].isMatched = true
                }
                cards[chosenIndex].isFaceUp.toggle()

            } else {
                indexOfOnyFaceUpCard = chosenIndex
            }
            
        }
    }
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent){
        cards = []
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
        
    
    
    
}

extension Array {
    var oneAndOnly: Element? {
        if count == 1 {
            return first
        }
        return nil
    }
}
