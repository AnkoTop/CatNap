//
//  BlockNode.swift
//  CatNap
//
//  Created by Anko Top on 16/04/16.
//  Copyright © 2016 Anko Top. All rights reserved.
//

import SpriteKit

class BlockNode: SKSpriteNode, CustomNodeEvents, InteractiveNode {

    func didMoveToScene() {
        userInteractionEnabled = true
    }

    func interact() {
        userInteractionEnabled = false
        
        runAction(SKAction.sequence([
            SKAction.playSoundFileNamed("pop.mp3", waitForCompletion: false),
            SKAction.scaleTo(0.8, duration: 0.1),
            SKAction.removeFromParent()
            ]))
        
    }
 
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        super.touchesEnded(touches, withEvent: event)
        interact()
    }
}
