//
//  ContentView.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/16.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    var body: some View {
        Grid(viewModel.cards) { card in
            return CardView(card: card).onTapGesture {
                self.viewModel.choose(card: card)
            }
        }.foregroundColor(.orange).font(.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: 30).fill().foregroundColor(.white)
                    RoundedRectangle(cornerRadius:cornerRadius).stroke(lineWidth:edgeLineWidth)
                    Text(card.content)
                } else {
                    RoundedRectangle(cornerRadius: cornerRadius)
                }
            }.font(Font.system(size: min(geometry.size.width, geometry.size.height) * fontScaleFactor))
        }
    }
    
    private let cornerRadius: CGFloat = 10
    private let edgeLineWidth: CGFloat = 3
    private let fontScaleFactor: CGFloat = 0.75
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
