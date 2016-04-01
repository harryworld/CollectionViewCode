//
//  MyItemView.swift
//  CollectionViewCode
//
//  Created by Harry Ng on 31/3/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa

class MyItemView: NSView {
    
    var label: NSTextField!

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        label = NSTextField(frame: NSMakeRect(0, 0, 60, 30))
        label.stringValue = "Label"
        addSubview(label)
    }
    
}
