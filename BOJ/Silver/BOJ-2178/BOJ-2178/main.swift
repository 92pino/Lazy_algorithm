//
//  main.swift
//  BOJ-2178
//
//  Created by EE201201 on 2022/10/25.
//

import Foundation

/**********************************

    최소값을 구하는것 ==> BFS

 **********************************/

let readline = readLine()!.split(separator: " ").map { Int(String($0))! }
let x = readline[0]
let y = readline[1]

var graph = [[Int]]()   // 미로
var queue = [(0, 0)]    // 경로의 좌표 값을 담을 큐

let dx = [-1, 1, 0, 0], dy = [0, 0, -1, 1]
for _ in 0..<x {
    graph.append(readLine()!.map { Int(String($0))! })
}

while !queue.isEmpty {
    print("@@@@@@@@@@@@@@@ : ", queue)
    let (a, b) = queue.removeFirst()    // FIFO로 큐의 첫 번째 pop
    print("@@@@@@# : ", a, b)

    // 상, 하, 좌, 우 검색을 위해 0부터 3까지 총 4번 반복
    for i in 0..<4 {
        let nx = a + dx[i]
        let ny = b + dy[i]

        // nx, ny가 주어진 미로의 크기를 벗어나거나, 검색할 자리가 0 일 경우 continue
        if nx < 0 || ny < 0 || nx >= x || ny >= y || graph[nx][ny] == 0 { continue }

        if graph[nx][ny] == 1 {
            graph[nx][ny] = graph[a][b] + 1

            queue.append((nx, ny))
        }
    }
}

print(graph[x - 1][y - 1])
