//
//  main.swift
//  BOJ-1260
//
//  Created by EE201201 on 2022/10/25.
//

import Foundation

let R = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = R[0], M = R[1], V = R[2]

var graph = [[Int]](repeating: [Int](), count: N + 1)
print(graph)

for _ in 0..<M {
    let readline = readLine()!.split(separator: " ").map { Int($0)! }
    let src = readline[0]
    let dest = readline[1]
    graph[src].append(dest)
    graph[dest].append(src)
}

func DFS(start: Int) {
    var visited = [Int]()
    var stack = [start]

    while !stack.isEmpty {
        let node = stack.removeLast()

        if !visited.contains(node) {
            visited.append(node)
            print(node, terminator: " ")
            stack.append(contentsOf: graph[node].sorted(by: >))
        }
    }
}

func BFS(start: Int) {
    var visited = [Int]()
    var queue = [start]

    while !queue.isEmpty {
        let node = queue.removeFirst()

        if !visited.contains(node) {
            visited.append(node)
            print(node, terminator: " ")
            queue.append(contentsOf: graph[node].sorted())
        }
    }
}

DFS(start: V)
print()
BFS(start: V)

