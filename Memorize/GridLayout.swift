//
//  GridLayout.swift
//  Memorize
//
//  Created by 陈小双 on 2020/12/20.
//

import SwiftUI

struct GridLayout {
    var size: CGSize
    var rowCount: Int = 0
    var columnCount: Int = 0
    
    init(itemCount: Int, nearAspectRatio desiredAspectRatio: Double = 1, in size: CGSize) {
        self.size = size
    }
    
    var itemSize: CGSize {
        CGSize.zero
    }
    
    func location(ofItemAt index: Int) -> CGPoint {
        CGPoint.zero
    }
}
