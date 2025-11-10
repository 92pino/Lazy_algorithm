//
//  main.swift
//  String Compression
//
//  Created by Twayair on 11/10/25.
//

import Foundation

let N = Array(readLine()!.split(separator: ",").map { String($0) })

func compress(_ chars: inout [Character]) -> Int {
    var write = 0
    var read = 0
    
    while read < chars.count {
        let current = chars[read]
        var count = 0
        
        print(read, current)
        while read < chars.count && chars[read] == current {
            read += 1
            count += 1
        }
        
        chars[write] = current
        write += 1
        
        if count > 1 {
            for c in String(count) {
                chars[write] = c
                write += 1
            }
        }
    }
    
    return write
}
