//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/19.
//

import SwiftUI


class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🎃"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in emojis[pairIndex] }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    // MARK - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
