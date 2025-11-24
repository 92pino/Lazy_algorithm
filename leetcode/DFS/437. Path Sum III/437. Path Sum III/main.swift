//
//  main.swift
//  437. Path Sum III
//
//  Created by Twayair on 11/21/25.
//

import Foundation

func buildTree(_ values: [Int?]) -> TreeNode? {
    guard !values.isEmpty else { return nil }
    var nodes: [TreeNode?] = values.map { $0 == nil ? nil : TreeNode($0!) }
    
    var i = 0
    var j = 1
    
    while j < nodes.count {
        if let node = nodes[i] {
            node.left = nodes[j]
            j += 1
            if j < nodes.count {
                node.right = nodes[j]
                j += 1
            }
        }
        i += 1
    }
    return nodes[0]
}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func pathSum(_ root: TreeNode?, _ targetSum: Int) -> Int {
    var prefixCount: [Int: Int] = [0: 1]
    var result = 0
    
    dfs(root, targetSum, 0, &prefixCount, &result)
    
    return result
}

func dfs(_ node: TreeNode?, _ targetSum: Int, _ currentSum: Int, _ prefixCount: inout [Int: Int], _ result: inout Int) {
    guard let node else { return }

    let newSum = currentSum + node.val

    if let count = prefixCount[newSum - targetSum] {
        result += count
    }

    prefixCount[newSum, default: 0] += 1

    dfs(node.left, targetSum, newSum, &prefixCount, &result)
    dfs(node.right, targetSum, newSum, &prefixCount, &result)

    prefixCount[newSum]! -= 1
}

print(pathSum(buildTree([10,5,-3,3,2,nil,11,3,-2,nil,1]), 8))
