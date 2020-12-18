//
//  ContentView.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView()
            }
        }.foregroundColor(.orange).padding(.top, 100).font(.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 30).fill().foregroundColor(.white)
                RoundedRectangle(cornerRadius:30).stroke(lineWidth:3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 30)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
