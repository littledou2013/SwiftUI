//
//  Grid.swift
//  Memorize
//
//  Created by 陈小双 on 2020/12/20.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View{
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }
    var body: some View {
        GeometryReader { geometry in
            return ForEach(items) { item in
                body(for: GridLayout(itemCount: items.count, in: geometry.size))
            }
        }
        
    }
    
    private func body(for layout: GridLayout) -> some View {
        return ForEach(items) { item in
            body(for: item, in: layout)
        }
    }

    private func body(for item: Item, in layout: GridLayout) -> some View {
        let index = items.firstIndex(matching: item)!
        return viewForItem(item).frame(width: layout.itemSize.width, height: layout.itemSize.height).position(layout.location(ofItemAt: index))
    }
}



enum FastFoodMenuItem {
    case hamburger(numberOfPatties: Int)
    case fries(size: CGSize)
    case drink(String, ounces: Int)
    case cookie
}





















//
//struct Grid_Previews: PreviewProvider {
//    static var previews: some View {
//        Grid()
//    }
//}
