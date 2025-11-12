//
//  main.swift
//  1732. Find the Highest Altitude
//
//  Created by Twayair on 11/13/25.
//

import Foundation

func largestAltitude(_ gain: [Int]) -> Int {
    var result = [0]
    
    for i in gain {
        result.append(result.last! + i)
    }
    
    return result.max()!
}

print(largestAltitude([-5,1,5,0,-7]))
