//
//  BedNode.swift
//  CatNap
//
//  Created by Anko Top on 13/04/16.
//  Copyright © 2016 Anko Top. All rights reserved.
//

import SpriteKit

class BedNode: SKSpriteNode, CustomNodeEvents {
    
    func didMoveToScene() {
        print("bed added to scene")
        let bedBodySize = CGSize(width: 40.0, height: 30.0)
        physicsBody = SKPhysicsBody(rectangleOfSize: bedBodySize)
        physicsBody!.dynamic = false
    }
    
}
