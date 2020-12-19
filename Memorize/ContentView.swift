//
//  ContentView.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/16.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        HStack {
            return ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }.foregroundColor(.orange).padding(.top, 100).font(.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 30).fill().foregroundColor(.white)
                RoundedRectangle(cornerRadius:30).stroke(lineWidth:3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 30)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
