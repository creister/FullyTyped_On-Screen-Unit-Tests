//
//  RandomColorsViewControllerTests.swift
//  OnScreenUnitTestsTests
//
//  Created by Colin Reisterer on 1/12/19.
//  Copyright © 2019 FullyTyped. All rights reserved.
//

import XCTest
@testable import OnScreenUnitTests

class RandomColorsViewControllerTests: ViewControllerTestCase {

  func testManually() {
    let vc = RandomColorsViewController()
    let nc = UINavigationController(rootViewController: vc)
    rootWindow.rootViewController = nc
    wait(timeout: 1000)
  }

}
