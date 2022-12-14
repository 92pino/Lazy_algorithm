import Cocoa

let graph = [
    [],
    [2, 3],
    [1, 4, 5],
    [1, 6, 7],
    [2],
    [2],
    [3],
    [3, 8],
    [7]
]

var visited = Array.init(repeating: false, count: graph.count)
print(visited)

func dfs(start: Int) {
    visited[start] = true   // 시작점
    
    print(start, terminator: " ")
    
    for i in graph[start] {
        if !visited[i] {
            dfs(start: i)
        }
    }
}

dfs(start: 1)

struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func enquque(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
}

var queue = Queue<Int>()

func bfs(start: Int) {
    queue.enquque(start)    // 시작점에 큐 넣기
    visited[start] = true   // 시작점 방문으로 체크
    
    while !queue.isEmpty {
        guard let element = queue.dequeue() else { return }
        print(element, terminator: " ")
        
        for i in graph[element] {
            if !visited[i] {
                queue.enquque(i)
                visited[i] = true
            }
        }
    }
}

bfs(start: 1)
