//
//  MemoryGame.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/19.
//

import Foundation

struct MemoryGame<ContentType> where ContentType : Equatable {
    private(set) var cards: Array<Card>
    private var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get {
            cards.indices.filter {
                cards[$0].isFaceUp
            }.only
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = index == newValue
            }
        }
    }
    
    mutating func choose(card: Card) {
        print("card chosen: \(card)")
        if let chooseIndex = cards.firstIndex(matching: card), cards[chooseIndex].isFaceUp == false, cards[chooseIndex].isMatched == false {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[potentialMatchIndex].content == cards[chooseIndex].content {
                    cards[potentialMatchIndex].isMatched = true
                    cards[chooseIndex].isMatched = true
                }
                cards[chooseIndex].isFaceUp = true
            } else {
                indexOfTheOneAndOnlyFaceUpCard = chooseIndex
            }
        }
        cards = []
    }
    
    init(numberOfPairsOfCards: Int, contentCardFactory: (Int) -> ContentType) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = contentCardFactory(pairIndex)
            cards.append(Card.init(content: content, id: pairIndex * 2))
            cards.append(Card.init(content: content, id: pairIndex * 2 + 1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: ContentType
        var id: Int
    }
}


