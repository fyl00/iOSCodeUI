//
//  NoImage/button.swift
//
//
//  Created by SlowWalker on 03/07/2017.
//  Copyright © 2017 SlowWalker.me. All rights reserved.
//


class CloseButton: UIButton {
    
    override func draw(_ rect: CGRect) {
        
        let circleWidth: CGFloat = 28.0
        let circlePathX = (rect.width - circleWidth) / 2.0
        let circlePathY = (rect.height - circleWidth) / 2.0
        let circlePathRect = CGRect(x: circlePathX, y: circlePathY, width: circleWidth, height: circleWidth)
        let circlePath = UIBezierPath(ovalIn: circlePathRect)
        UIColor(white: 0.8, alpha: 1.0).setFill()
        circlePath.fill()
        
        let xPath = UIBezierPath()
        xPath.lineWidth = 2.0
        let offset: CGFloat = (bounds.width - circleWidth) / 2.0
        xPath.move(to: CGPoint(x: offset + circleWidth / 3.0, y: offset + circleWidth / 3.0))
        xPath.addLine(to: CGPoint(x: offset + 2.0 * circleWidth / 3.0, y: offset + 2.0 * circleWidth / 3.0))
        xPath.move(to: CGPoint(x: offset + circleWidth / 3.0, y: offset + 2.0 * circleWidth / 3.0))
        xPath.addLine(to: CGPoint(x: offset + 2.0 * circleWidth / 3.0, y: offset + circleWidth / 3.0))
        UIColor.white.setStroke()
        xPath.stroke()
    }
}
