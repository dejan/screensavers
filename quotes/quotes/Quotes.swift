//
//  Quotes.swift
//  Quotes
//
//  Created by Dejan on 11/02/16.
//  Copyright © 2016 dejan. All rights reserved.
//

import Cocoa
import ScreenSaver

class Quotes: ScreenSaverView {

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        let color = NSColor(red:randomColorVal(), green:randomColorVal(), blue:randomColorVal(), alpha:1)
        
        color.setFill()
        NSBezierPath.fillRect(dirtyRect)
    }
    
    func randomColorVal() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
    }
    
}