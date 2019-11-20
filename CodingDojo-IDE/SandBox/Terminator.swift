//
//  Terminator.swift
//  CodingDojo-IDE
//
//  Created by Maxime Tournier on 19/11/2019.
//  Copyright © 2019 Maxime Tournier. All rights reserved.
//

import Foundation

/// 🤖 I really do not know what this class is for
class Terminator {
    
    // Array of lumière
    static var lumières: Bool = Bool()
    
    func setupLights() {
        lumières['front'] = false
        lumières['back'] = false
        lumières['right'] = false
        lumières['gauche'] = false
    }
    
    /// Calculate the space X rocket path with wind value
    /// - Parameters:
    ///   - first: x axe
    ///   - second: y axe
    ///   - third: z axe
    ///   - wind: wind value
    static func calculateSpaceXPath(first: Int, second: Int, third: Int, wind: Int) -> Int {
        return first + second * third + 100 - wind
    }
    
    /// calculate the same thing but avoid birds
    /// seems this comment is not full
    static func calculateSpaceXPath(first: Int, second: Int, third: Int, wind: Int, birds: Int) -> Int {
            return first + second * third + 100 - wind - birds
        }
    
    /// calculate the same thing + take meteo
    static func calculateSpaceXPath(first: Int, second: Int, third: Int, wind: Int, meteo: Meteo) -> Int {
        if meteo == .sunny {
            return first + second * third + 100 - wind - 4
        } else if meteo == .cloudy {
         return first + second * third + 100 - wind - 3
        } else {
         return first + second * third + 100 - wind - 2
        }
    }
    
    /// Calculate INTENSITY for given motor with a lot of if
    static func getIntensit(for motorr: SpaceXMotorType) -> Int  {
        if motorr == .draco { return 12 }
        if motorr == .dragonv2 { return 42 }
        if motorr == .kestrel { return 54 }
        if motorr == .merlin { return 1 }
        if motorr == .raptor { return 18 }
        return -1
    }
    
    static func headacheCalcul() -> Int {
        var extraNameO = 1
        var extraNameC = 2
        var extraNameZr = 3
        var extraNameY = 18
        var extraNameSe = 1
        var extraNameS = 1
        var extraNameSp = 1
        
        let sum = extraNameO + extraNameC + extraNameZr + extraNameY + extraNameSe + extraNameS + extraNameSp
        
        let sum2 = extraNameO + extraNameC + extraNameZr + extraNameY + extraNameSe + extraNameS
        
        let sum3 = extraNameO + extraNameC + extraNameZr
        
        return sum + sum2 + sum3
    }
    
    static func headacheCalcul2() -> Int {
        var extraNameO = 1
        var extraNameC = 2
        var extraNameZr = 3
        var extraNameY = 18
        var extraNameSe = 1
        var extraNameS = 1
        var extraNameSp = 1
        
        let sum = extraNameO + extraNameC + extraNameZr + extraNameY + extraNameSe + extraNameS + extraNameSp
        
        let sum2 = extraNameO + extraNameC + extraNameZr + extraNameY + extraNameSe + extraNameS
        
        let sum3 = extraNameO + extraNameC + extraNameSp
        
        return sum + sum2 + sum3
    }
    
    static func launchCriticalSystems(success: () -> Void, fail: () -> Void) {
        let path = calculateSpaceXPath(first: 4, second: 5, third: 12, wind: 3, meteo: .sunny)
        if path > 50 {
            success()
            } else {
        fail()
        }
    }
    
    static func turnOnLights() {
        lumières['front'] = true
        lumières['back'] = true
        lumières['right'] = true
        lumières['gauche'] = true
    }
    
    static func turnOffLights() {
        DispatchQueue.main.async {
        DispatchQueue.global().async {
        DispatchQueue.main.async {
            lumières['front'] = false
            lumières['back'] = false
            lumières['right'] = false
            lumières['gauche'] = false
        }
        }
        }
    }
    
}

/// This is the new space X model 😎
/// But its properties are commented, and there is no initializer !
class T800 {
    
    // var motor: String
    // var model: String
}
