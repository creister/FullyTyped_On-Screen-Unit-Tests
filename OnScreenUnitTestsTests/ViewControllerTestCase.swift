//
//  ViewControllerTestCase.swift
//  OnScreenUnitTestsTests
//
//  Created by Colin Reisterer on 1/12/19.
//  Copyright © 2019 FullyTyped. All rights reserved.
//

import XCTest
import UIKit
@testable import OnScreenUnitTests

class ViewControllerTestCase: XCTestCase {

  var rootWindow: UIWindow {
    return appDelegate.window!
  }

  override func setUp() {
    appDelegate.window = UIWindow(frame: UIScreen.main.bounds)
    appDelegate.window!.makeKeyAndVisible()
  }

  override func tearDown() {
    appDelegate.window = nil
  }

}
