//
//  GameScene.swift
//  Test Character Movement
//
//  Created by admin on 18/03/2020.
//  Copyright © 2020 DenysPashkov. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
	var player : SKSpriteNode?
	var playerSize = CGSize(width:  50, height: 50)
	var playerColor = UIColor.orange
	
	var backgroundCustomColor = UIColor.blue
	
	func spawnPlayer() {
		player = SKSpriteNode(color: playerColor, size: playerSize)
		player?.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
		
		self.addChild(player!)
	}
	
	override func didMove(to view: SKView) {
		self.backgroundColor =  backgroundCustomColor
		
		spawnPlayer()
	}
    
    
    func touchDown(atPoint pos : CGPoint) {
        
		
		
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
		
		
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
		
		
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
		
		
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
		
		
		
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		
		
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
		
		
		
    }
    
    
    override func update(_ currentTime: TimeInterval) {
		
		
	}
}
