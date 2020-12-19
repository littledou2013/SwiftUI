//
//  MemoryGame.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/19.
//

import Foundation

struct MemoryGame<ContentType> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
        
    }
    
    init(numberOfPairsOfCards: Int, contentCardFactory: (Int) -> ContentType) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = contentCardFactory(pairIndex)
            cards.append(Card.init(isFaceUp: true, isMatched: false, content: content, id: pairIndex * 2))
            cards.append(Card.init(isFaceUp: true, isMatched: false, content: content, id: pairIndex * 2 + 1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: ContentType
        var id: Int
    }
}


