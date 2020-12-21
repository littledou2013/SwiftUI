//
//  Grid.swift
//  Memorize
//
//  Created by 陈小双 on 2020/12/20.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View{
    var items: [Item]
    var viewForItem: ((Item) -> ItemView)?
    
    init(_ items: [Item], viewForItem: (Item) -> ItemView) {
        self.items = items
        for item in items {
            var _ =  viewForItem(item)
        }
      //  self.viewForItem = viewForItem
    }
    var body: some View {
        GeometryReader { geometry in
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}
    
//    func body(for layout: GridLayout) -> some View {
//        return ForEach(items) { item in
//            body(for: item, in: layout)
//        }
//    }
//
//    func body(for item: Item, in layout: GridLayout) -> someView {
//        let index = items.firstIndex(where: item)
//        return Group {
//            let index != nil {
//                viewForItem(item)
//                    .frame(width: layout.itemSize, height: <#T##CGFloat?#>, alignment: <#T##Alignment#>)
//            }
//        }
//    }
//}

























//
//struct Grid_Previews: PreviewProvider {
//    static var previews: some View {
//        Grid()
//    }
//}
