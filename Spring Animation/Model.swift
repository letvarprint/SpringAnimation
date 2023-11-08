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
    var force: Int
    var duration: Int
    var delay = 1
}

extension Animation {
    static func getAnimation() -> Animation {
        let animationData = SpringAnimationData()
        
        let animationType = animationData.animationList.randomElement() ?? ""
        let curveType = animationData.curveList.randomElement() ?? ""
        
        
        let animation = Animation(preset: animationType, curve: curveType, force: Int.random(in: 0...1), duration: Int.random(in: 0...1))
        return animation
    }
}
