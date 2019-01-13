//
//  RandomColorsViewControllerTests.swift
//  OnScreenUnitTestsTests
//
//  Created by Colin Reisterer on 1/12/19.
//  Copyright © 2019 FullyTyped. All rights reserved.
//

import XCTest
import SnapshotTesting
@testable import OnScreenUnitTests

class RandomColorsViewControllerTests: ViewControllerTestCase {

  func DISABLED_testManually() {
    let vc = RandomColorsViewController()
    let nc = UINavigationController(rootViewController: vc)
    rootWindow.rootViewController = nc
    wait(timeout: 1000)
  }

  func testEmptyState() {
    let vc = RandomColorsViewController()
    let nc = UINavigationController(rootViewController: vc)
    rootWindow.rootViewController = nc
    assertSnapshot(matching: nc, as: .image)
  }

  // TODO: Add tests for generating colors...

}
