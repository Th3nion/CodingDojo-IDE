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
    
    func headacheCalcul() -> Int {
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
    
    func headacheCalcul2() -> Int {
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
    
    
    func methodWichCall() -> Int {
        
        return self.methodWichDontExist()
    }
    
}
