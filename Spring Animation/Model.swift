//
//  Model.swift
//  Spring Animation
//
//  Created by Alexandru Brixencov on 08.11.2023.
//

import Foundation

struct Animation {
    var preset: String
    var curve: String
    var force: Double
    var duration: Double
    var delay = 1.0
}

extension Animation {
    static func getAnimation() -> Animation {
        let animationData = SpringAnimationData()
        
        let animationType = animationData.animationList.randomElement() ?? ""
        let curveType = animationData.curveList.randomElement() ?? ""
        
        
        let animation = Animation(preset: animationType, curve: curveType, force: Double.random(in: 0...1), duration: Double.random(in: 0...1))
        return animation
    }
}
