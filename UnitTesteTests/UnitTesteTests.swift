//
//  UnitTesteTests.swift
//  UnitTesteTests
//
//  Created by Kaue Ludovico on 27/04/23.
//

import XCTest
@testable import UnitTeste

final class UnitTesteTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    override class func setUp() {
        
    }

    func testExample() throws {
        let viewController = ViewController()
        viewController.changeBackgroundColorToBlue()
        XCTAssertEqual(viewController.currentColor, "Blue")
        XCTAssertNotEqual(viewController.currentColor, "Red")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
