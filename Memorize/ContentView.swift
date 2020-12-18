//
//  ContentView.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack {
            ForEach(0..<4) { index in
                ZStack {
                    RoundedRectangle(cornerRadius: 30).fill().foregroundColor(.white)
                    RoundedRectangle(cornerRadius:30).stroke(lineWidth:3)
                    Text("👻")
                }
            }
        }.foregroundColor(.orange).padding(.top, 100).font(.largeTitle)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
