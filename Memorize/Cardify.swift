//
//  Cardify.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/21.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 30).fill().foregroundColor(.white)
                RoundedRectangle(cornerRadius:cornerRadius).stroke(lineWidth:edgeLineWidth)
                content
            } else {
                RoundedRectangle(cornerRadius: cornerRadius)
            }
        }
    }
    private let cornerRadius: CGFloat = 10
    private let edgeLineWidth: CGFloat = 3
    
}
