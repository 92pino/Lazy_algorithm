//
//  main.swift
//  2390. Removing Stars From a String
//
//  Created by Twayair on 11/14/25.
//

import Foundation

func removeStars(_ s: String) -> String {
    var result = [String]()
    
    for i in s {
        if i != "*" {
            result.append(String(i))
        } else {
            result.removeLast()
        }
    }
    
    return result.joined()
}

print(removeStars("leet**cod*e"))
print(removeStars("erase*****"))
