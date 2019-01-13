//
//  UIColor+Random.swift
//  UnitTestWithoutApp
//
//  Created by Colin Reisterer on 1/8/19.
//  Copyright © 2019 FullyTyped. All rights reserved.
//

import UIKit
import GameplayKit

extension UIColor {

  static func random() -> UIColor {
    return UIColor(
      hue: .random(in: 0...1),
      saturation: .random(in: 0...1),
      brightness: .random(in: 0.5...1),
      alpha: 1.0)
  }

}

protocol ColorGenerator {
  func newColor() -> UIColor
}

class RandomColorGenerator: ColorGenerator {
  func newColor() -> UIColor {
    return UIColor(
      hue: .random(in: 0...1),
      saturation: .random(in: 0...1),
      brightness: .random(in: 0.5...1),
      alpha: 1.0)
  }
}

class SeededRandomColorGenerator: ColorGenerator {

  private var rng = GKMersenneTwisterRandomSource(seed: 1234)

  func newColor() -> UIColor {
    var rng = GKMersenneTwisterRandomSource(seed: 1234)
//    return UIColor(
//      hue: .random(in: 0...1),
//      saturation: .random(in: 0...1),
//      brightness: .random(in: 0.5...1),
//      alpha: 1.0)

    return UIColor(
      hue: .random(in: 0...1, using: &rng),
      saturation: .random(in: 0...1, using: &rng),
      brightness: .random(in: 0.5...1, using: &rng),
      alpha: 1.0)
  }

}

extension GKMersenneTwisterRandomSource: RandomNumberGenerator {

  public func next() -> UInt64 {
    return 0
  }

}
