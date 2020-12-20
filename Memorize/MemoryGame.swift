//
//  MemoryGame.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/19.
//

import Foundation

struct MemoryGame<ContentType> {
    private(set) var cards: Array<Card>
    
    mutating func choose(card: Card) {
        print("card chosen: \(card)")
        let index = self.index(of: card)
        cards[index].isFaceUp = !cards[index].isFaceUp
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if cards[index].id == card.id {
                return index
            }
        }
        return 0 // TODO: Bogus
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


