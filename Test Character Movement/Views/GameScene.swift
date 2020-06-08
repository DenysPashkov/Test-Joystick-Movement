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
	
	let moveJoystick = TLAnalogJoystick(withDiameter: 50)
	
//	MARK: Start Stuff
	
	override func didMove(to view: SKView) {

		//MARK: Setup
		self.backgroundColor =  backgroundCustomColor
		
		joystickManager()
		spawnPlayer()
		
		view.isMultipleTouchEnabled = true

	}
	
//	MARK: Preparation Zone
	
	func joystickManager(){
		var image = UIImage(named: "jStick")
		moveJoystick.handleImage = image
		image = UIImage(named: "jSubstrate")
		moveJoystick.baseImage = image
		let moveJoystickHiddenArea = TLAnalogJoystickHiddenArea(rect: CGRect(x: 0, y: 0, width: frame.midX, height: frame.height))
		moveJoystickHiddenArea.strokeColor = UIColor.black.withAlphaComponent(0)
		moveJoystickHiddenArea.joystick = moveJoystick
		moveJoystick.isMoveable = true
		addChild(moveJoystickHiddenArea)
		
		moveJoystick.on(.move) { [unowned self] joystick in
			guard let player = self.player else {
				return
			}

			let pVelocity = joystick.velocity;
			let speed = CGFloat(0.12)

			player.position = CGPoint(x: player.position.x + (pVelocity.x * speed), y: player.position.y + (pVelocity.y * speed))

		}
		
	}
//	Create player ( a cube in this case ) 
	func spawnPlayer() {
		player = SKSpriteNode(color: playerColor, size: playerSize)
		player?.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
		
		self.addChild(player!)
	}
	
}
