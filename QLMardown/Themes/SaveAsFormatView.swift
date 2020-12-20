//
//  SaveAsFormatView.swift
//  QLMardown
//
//  Created by Sbarex on 18/12/20.
//

import Cocoa

class SaveAsFormatView: NSView {
    @IBOutlet weak var popupButton: NSPopUpButton!
    @IBOutlet weak var contentView: NSView!
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        setup()
    }

    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        setup()
    }
    
    private func setup() {
        let bundle = Bundle(for: type(of: self))
        let nib = NSNib(nibNamed: .init(String(describing: type(of: self))), bundle: bundle)!
        nib.instantiate(withOwner: self, topLevelObjects: nil)
        
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.width, .height]
    }
}
