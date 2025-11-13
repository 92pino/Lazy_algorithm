//
//  main.swift
//  2352. Equal Row and Column Pairs
//
//  Created by Twayair on 11/13/25.
//

import Foundation

//func equalPairs(_ grid: [[Int]]) -> Int {
//    let rowCount = grid.count
//    var verticalHash = Array(repeating: [Int](), count: rowCount)
//
//    var result = 0
//    
//    for item in grid {
//        for (i, item2) in item.enumerated() {
//            verticalHash[i].append(item2)
//        }
//    }
//    
//    grid.forEach { item in
//        verticalHash.forEach {
//            if item == $0 {
//                result += 1
//            }
//        }
//    }
//    
//    return result
//}

func equalPairs(_ grid: [[Int]]) -> Int {
    let n = grid.count
    var hashMap = [String: Int]()
    var result = 0
    
    for row in grid {
        let key = row.map(String.init).joined(separator: ",")
        hashMap[key, default: 0] += 1
    }
    
    for i in 0..<n {
        var col = [String]()
        
        for j in 0..<n {
            col.append(String(grid[j][i]))
        }
        let key = col.joined(separator: ",")
        print(key)
        if let count = hashMap[key] {
            result += count
        }
    }
    
    return result
}

print(equalPairs([[3,2,1],[1,7,6],[2,7,7]]))
print(equalPairs([[3,1,2,2],[1,4,4,4],[2,4,2,2],[2,5,2,2]]))    // 3
print(equalPairs([[3,1,2,2],[1,4,4,5],[2,4,2,2],[2,4,2,2]]))
