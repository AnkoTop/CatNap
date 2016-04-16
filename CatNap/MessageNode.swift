//
//  MessageNode.swift
//  CatNap
//
//  Created by Anko Top on 16/04/16.
//  Copyright © 2016 Anko Top. All rights reserved.
//

import SpriteKit
class MessageNode: SKLabelNode {
    
    var numberOfBounces = 0
    
    
    convenience init(message: String) {
        self.init(fontNamed: "AvenirNext-Regular")
        text = message
        fontSize = 256.0
        fontColor = SKColor.grayColor()
        zPosition = 100
        let front = SKLabelNode(fontNamed: "AvenirNext-Regular")
        front.text = message
        front.fontSize = 256.0
        front.fontColor = SKColor.whiteColor()
        front.position = CGPoint(x: -2, y: -2)
        addChild(front)
        
        physicsBody = SKPhysicsBody(circleOfRadius: 10)
        physicsBody!.collisionBitMask = PhysicsCategory.Edge
        physicsBody!.categoryBitMask = PhysicsCategory.Label
        physicsBody!.contactTestBitMask = PhysicsCategory.Edge
        physicsBody!.restitution = 0.7
    }
    
    func didBounce() {
        numberOfBounces += 1
        if numberOfBounces == 4 {
            //print("remove message")
            removeFromParent()
        }
    }
    
}
