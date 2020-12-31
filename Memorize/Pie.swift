//
//  Pie.swift
//  Memorize
//
//  Created by chenxiaoshuang on 2020/12/21.
//

import SwiftUI

struct Pie: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool = false
    func path(in rect: CGRect) -> Path {
        let center = CGPoint.init(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2.0
        let start = CGPoint(x: center.x + radius * cos(CGFloat(startAngle.radians)), y:  center.y + radius * sin(CGFloat(startAngle.radians)))
        var p = Path()
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        return p
    }
}
