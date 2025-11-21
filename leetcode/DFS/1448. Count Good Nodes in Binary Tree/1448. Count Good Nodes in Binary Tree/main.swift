//
//  main.swift
//  1448. Count Good Nodes in Binary Tree
//
//  Created by Twayair on 11/21/25.
//

import Foundation

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

func buildTree(_ values: [Int?]) -> TreeNode? {
    guard !values.isEmpty else { return nil }
    let nodes: [TreeNode?] = values.map { $0 == nil ? nil : TreeNode($0!) }
    
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

func goodNodes(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }
    
    return dfs(root, root.val)
}

func dfs(_ node: TreeNode?, _ maxSoFar: Int) -> Int {
    guard let node else { return 0 }

    var good = 0

    let newMax = max(maxSoFar, node.val)

    if node.val >= maxSoFar {
        good = 1
    }

    let left = dfs(node.left, newMax)
    let right = dfs(node.right, newMax)

    return good + left + right
}


print(goodNodes(buildTree([3,3,nil,4,2])))
