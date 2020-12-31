//
//  Array+Only.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
