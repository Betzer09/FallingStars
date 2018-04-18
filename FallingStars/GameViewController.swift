//
//  GameViewController.swift
//  FallingStars
//
//  Created by Austin Betzer on 4/17/18.
//  Copyright © 2018 Austin Betzer. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadGameView()
    }

    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // MARK: - Functions
    func loadGameView() {
        let scene = GameScene(size: self.view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
    }
}
