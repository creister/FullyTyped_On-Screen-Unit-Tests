//
//  ViewTestCase.swift
//  OnScreenUnitTestsTests
//
//  Created by Colin Reisterer on 1/12/19.
//  Copyright © 2019 FullyTyped. All rights reserved.
//

import XCTest
import UIKit
@testable import OnScreenUnitTests

class ViewTestCase: XCTestCase {

  var rootView: UIView {
    return viewController.view
  }

  private var viewController: UIViewController!

  override func setUp() {
    viewController = UIViewController()

    appDelegate.window = UIWindow(frame: UIScreen.main.bounds)
    appDelegate.window!.rootViewController = viewController
    appDelegate.window!.makeKeyAndVisible()
  }

  override func tearDown() {
    viewController = nil
    appDelegate.window = nil
  }

}
