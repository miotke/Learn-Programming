//: Playground - noun: a place where people can play

import UIKit
import GameplayKit

var str = "Hello, playground"

print(GKRandomSource.sharedRandom().nextInt(upperBound: 6))

// to save to disk
// good performance and good randomization
let arc4 = GKARC4RandomSource()
arc4.nextInt(upperBound: 20)

// maximum randomness of number
// best randomization but lowest performance
let mersenee = GKMersenneTwisterRandomSource()
mersenee.nextInt(upperBound: 100)

// best performance but lowest randomization
let linearCongruential = GKLinearCongruentialRandomSource()
linearCongruential.nextInt(upperBound: 1024)


let d6 = GKRandomDistribution.d6()
d6.nextInt()

let d20 = GKRandomDistribution.d20()
d20.nextInt()

let crazy = GKRandomDistribution(lowestValue: 1, highestValue: 11539)
crazy.nextInt()

// GKGaussianDistribution
let gaussian = GKGaussianDistribution.d20()
gaussian.nextInt()

let fixedLotteryBalls = [Int](1...49)
let fixedShuffledBalls = GKMersenneTwisterRandomSource(seed: 1001).arrayByShufflingObjects(in: fixedLotteryBalls)
print(fixedShuffledBalls[0])
print(fixedShuffledBalls[1])
print(fixedShuffledBalls[2])
print(fixedShuffledBalls[3])
print(fixedShuffledBalls[4])
print(fixedShuffledBalls[5])
