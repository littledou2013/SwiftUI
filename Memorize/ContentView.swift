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
            .padding(5)
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
                    Pie(startAngle: Angle.degrees(0), endAngle: Angle.degrees(110), clockwise: true).padding(5).opacity(0.4)
                   // Text(card.content).foregroundColor(Color(UIColor.blue))
                    Image(systemName:"printer.dotmatrix.fill").foregroundColor(.gray).imageScale(.small)
                } else {
                    if card.isMatched == false {
                        RoundedRectangle(cornerRadius: cornerRadius)
                    }
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
        let game = EmojiMemoryGame()
        game.choose(card: game.cards[3])
        return ContentView(viewModel: game)
    }
}
