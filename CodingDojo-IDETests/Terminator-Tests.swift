//
//  Terminator-Tests.swift
//  CodingDojo-IDETests
//
//  Created by Maxime Tournier on 19/11/2019.
//  Copyright © 2019 Maxime Tournier. All rights reserved.
//

import XCTest
import CodingDojo_IDE
@testable import CodingDojo_IDE

class Terminator_Tests: XCTestCase {

    override func setUp() {
        // Maybe we could instanciate a Terminator here and remove all static keywords 🤔
    }

    override func tearDown() {
        // 💥
    }
    
    func testCalculateSpaceXPathWithWind() {
        XCTAssertTrue(Terminator.calculateSpaceXPath(first: 2, second: 3, third: 7, wind: 28) == 95)
    }
    
    func testCalculateSpaceXPathAvoidBirdsCollision() {
        XCTAssertTrue(Terminator.calculateSpaceXPath(first: 2, second: 3, third: 7, wind: 28, birds: 12) == 83)
    }
    
    func testCalculateSpaceXPathAvoidBirdsCollisionForSunny() {
        XCTAssertTrue(Terminator.calculateSpaceXPath(first: 2, second: 3, third: 7, wind: 28, meteo: .sunny) == 91)
    }
    
    func testCalculateSpaceXPathAvoidBirdsCollisionForCloudy() {
        XCTAssertTrue(Terminator.calculateSpaceXPath(first: 2, second: 3, third: 7, wind: 28, meteo: .cloudy) == 92)
    }
    
    func testCalculateSpaceXPathAvoidBirdsCollisionForStormy() {
        XCTAssertTrue(Terminator.calculateSpaceXPath(first: 2, second: 3, third: 7, wind: 28, meteo: .stormy) == 93)
    }
    
    func testGetIntensityForMotorMerlin() {
        XCTAssertTrue(Terminator.getIntensit(for: .merlin) == 1)
    }
    
    func testGetIntensityForMotorDraco() {
        XCTAssertTrue(Terminator.getIntensit(for: .draco) == 12)
    }
    
    func testGetIntensityForMotorDragonV2() {
        XCTAssertTrue(Terminator.getIntensit(for: .dragonv2) == 42)
    }
    
    func testGetIntensityForMotorKestrel() {
        XCTAssertTrue(Terminator.getIntensit(for: .kestrel) == 54)
    }
    
    func testGetIntensityForMotorRaptor() {
        XCTAssertTrue(Terminator.getIntensit(for: .raptor) == 18)
    }
    
    func testHeadacheCalcul() {
        XCTAssertTrue(Terminator.headacheCalcul() == 59)
    }
    
    func testHeadacheCalcul2() {
        XCTAssertTrue(Terminator.headacheCalcul2() == 57)
    }
    
    func testInitT800() {
        XCTAssertNotNil(T800())
    }
    
    // Should pass if succes is called, fail if 'fail' is called
    func testLaunchCriticalSystem() {
        // TODO: crapy test
        XCTAssert(false)
    }
}
