//
//  ViewController.swift
//  Spring Animation
//
//  Created by Alexandru Brixencov on 08.11.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    var animation = Animation.getAnimation()
    
    
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var mainView: SpringView!
    
    @IBOutlet weak var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainButton.setTitle(animation.preset, for: .normal)
    }
    
    @IBAction func makeAnimationButton() {
        presentViewAnimation()
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(animation.force)
        durationLabel.text = String(animation.duration)
        delayLabel.text = String(animation.delay)
        animation = Animation.getAnimation()
        mainButton.setTitle(animation.preset, for: .normal)
        
    }
    
    
    private func presentViewAnimation() {
        mainView.animation = animation.preset
        mainView.curve = animation.curve
        mainView.force = (animation.force)
        mainView.duration = (animation.duration)
        mainView.delay = (animation.delay)
        
        mainView.animate()
    }
}
