//
//  SpringNode.swift
//  CatNap
//
//  Created by Anko Top on 16/04/16.
//  Copyright © 2016 Anko Top. All rights reserved.
//

import SpriteKit

class SpringNode: SKSpriteNode, CustomNodeEvents, InteractiveNode {

    func didMoveToScene() {
    
        userInteractionEnabled = true
    
    }

    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches, withEvent: event)
        interact()
    }

    func interact() {
        
        userInteractionEnabled = false
        physicsBody!.applyImpulse(CGVector(dx: 0, dy: 250), atPoint: CGPoint(x: size.width/2, y: size.height))
        runAction(SKAction.sequence([
            SKAction.waitForDuration(1),
            SKAction.removeFromParent()
            ]))
    
    }
    
    
}