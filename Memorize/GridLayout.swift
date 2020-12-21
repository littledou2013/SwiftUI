//
//  GridLayout.swift
//  Memorize
//
//  Created by 陈小双 on 2020/12/20.
//

import SwiftUI

struct GridLayout {
    private var size: CGSize
    private var rowCount: Int = 0
    private var columnCount: Int = 0
    
    init(itemCount: Int, nearAspectRatio desiredAspectRatio: Double = 1, in size: CGSize) {
        self.size = size
        config(itemCount:itemCount, nearAspectRatio:desiredAspectRatio)
    }
    
    private mutating func config(itemCount: Int, nearAspectRatio desiredAspectRatio: Double) {
        guard size.height > 0 , size.width > 0 else {
            return
        }
        let aspect = size.height * CGFloat(desiredAspectRatio) /  size.width
        if aspect > 1 {
            rowCount = Int(CGFloat(itemCount) / aspect)
            columnCount = (itemCount + rowCount - 1) / rowCount
        } else {
            rowCount = Int(CGFloat(itemCount) * aspect)
            columnCount = (itemCount + rowCount - 1) / rowCount
        }
    }
    var itemSize: CGSize {
        guard columnCount > 0 , rowCount > 0 else {
            return CGSize.zero
        }
        return CGSize.init(width: size.width / CGFloat(columnCount), height: size.height / CGFloat(rowCount))
    }
    
    func location(ofItemAt index: Int) -> CGPoint  {
        guard columnCount > 0 , rowCount > 0 else {
            return CGPoint.zero
        }
        let row = index / columnCount
        let column = index % columnCount
        return CGPoint.init(x: self.itemSize.width * (CGFloat(column) + 0.5), y: self.itemSize.height * (CGFloat(row) + 0.5))
        
    }
}
