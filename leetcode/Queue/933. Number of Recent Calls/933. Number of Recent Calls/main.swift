//
//  main.swift
//  933. Number of Recent Calls
//
//  Created by Twayair on 11/18/25.
//

import Foundation


class RecentCounter {
    private var queue: [Int] = []
    
    init() {
        
    }
    
    func ping(_ t: Int) -> Int {
        queue.append(t)
        
        while queue.first! < t - 3000 {
            queue.removeFirst()
        }
        
        return queue.count
    }
}

let counter = RecentCounter()
print(counter.ping(1))
print(counter.ping(100))
print(counter.ping(3001))
print(counter.ping(3002))
