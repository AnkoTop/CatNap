//
//  CatNode.swift
//  CatNap
//
//  Created by Anko Top on 13/04/16.
//  Copyright © 2016 Anko Top. All rights reserved.
//

import SpriteKit

class CatNode: SKSpriteNode, CustomNodeEvents {
    
    func didMoveToScene() {
        print("cat added to scene")
    }
    
}
