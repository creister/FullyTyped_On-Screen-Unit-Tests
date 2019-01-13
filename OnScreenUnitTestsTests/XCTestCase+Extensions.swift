//
//  XCTestCase+Extensions.swift
//  OnScreenUnitTestsTests
//
//  Created by Colin Reisterer on 1/12/19.
//  Copyright © 2019 FullyTyped. All rights reserved.
//

import XCTest
@testable import OnScreenUnitTests

extension XCTestCase {

  var appDelegate: AppDelegate {
    return UIApplication.shared.delegate as! AppDelegate
  }

}
