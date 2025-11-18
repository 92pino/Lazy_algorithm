//
//  main.swift
//  649. Dota2 Senate
//
//  Created by Twayair on 11/18/25.
//

import Foundation

func predictPartyVictory(_ senate: String) -> String {
    var queueR: [Int] = []
    var queueD: [Int] = []
    let n = senate.count
    let chars = Array(senate)
    
    for (i, ch) in chars.enumerated() {
        if ch == "R" {
            queueR.append(i)
        } else {
            queueD.append(i)
        }
    }
    
    while !queueR.isEmpty && !queueD.isEmpty {
        let r = queueR.removeFirst()
        let d = queueD.removeFirst()

        if r < d {
            queueR.append(r + n)
        } else {
            queueD.append(d + n)
        }
    }
    
    return queueR.isEmpty ? "Dire" : "Radiant"
}

//print(predictPartyVictory("RD"))
print(predictPartyVictory("RDD"))
//print(predictPartyVictory("DDR"))
print(predictPartyVictory("DDRRR"))
