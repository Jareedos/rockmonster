//
//  DragImg.swift
//  rockMonster
//
//  Created by Jared Sobol on 5/1/16.
//  Copyright © 2016 Appmaker. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView {
    
    var originalPostion: CGPoint!
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalPostion = self.center
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            let postion = touch.locationInView(self.superview)
            self.center = CGPointMake(postion.x, postion.y)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.center = originalPostion
    }
}
