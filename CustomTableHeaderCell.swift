//
//  CustomTableHeaderCell.swift
//  TestCellSwiftVersion
//
//  Created by tomfriwel on 20/04/2017.
//  Copyright © 2017 tomfriwel. All rights reserved.
//

import Cocoa

class CustomTableHeaderCell: NSTableHeaderCell {
    override init(textCell: String) {
        super.init(textCell: textCell)
        self.font = NSFont.boldSystemFont(ofSize: 28) // Or set NSFont to your choice
        self.textColor = NSColor.red
        self.backgroundColor = NSColor.red
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(withFrame cellFrame: NSRect, in controlView: NSView) {
        // skip super.drawWithFrame(), since that is what draws borders
        self.drawInterior(withFrame: cellFrame, in: controlView)
    }
    
    override func drawInterior(withFrame cellFrame: NSRect, in controlView: NSView) {
        let titleRect = self.titleRect(forBounds: cellFrame)
        self.attributedStringValue.draw(in: titleRect)
    }
}
