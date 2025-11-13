//
//  main.swift
//  735. Asteroid Collision
//
//  Created by Twayair on 11/14/25.
//

import Foundation

func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    var stack: [Int] = []
    
    for asteroid in asteroids {
        if stack.isEmpty || asteroid > 0 {
            stack.append(asteroid)
        } else {
            while !stack.isEmpty && stack.last! > 0 && stack.last! < abs(asteroid) {
                stack.removeLast()
            }
            
            if !stack.isEmpty && stack.last == abs(asteroid) {
                stack.removeLast()
            } else if stack.isEmpty || stack.last! < 0 {
                stack.append(asteroid)
            }
        }
    }
    
    return stack
}

print(asteroidCollision([3,5,-6,2,-1,4]))   // [-6,2,4]
