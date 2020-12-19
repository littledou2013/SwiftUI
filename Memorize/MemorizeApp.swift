//
//  MemorizeApp.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/16.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let emojiMemoryGame = EmojiMemoryGame()
            ContentView(viewModel: emojiMemoryGame)
        }
    }
}
