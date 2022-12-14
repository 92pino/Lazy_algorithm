import Cocoa

// s : 시작지점
// e : 끝지점
func solution(_ location: [[Int]], _ s: [Int], _ e: [Int]) -> Int {
    return location.filter { point in
        print(point[0], s[0], e[0])
        if s[0] > e[0] {
            return point[0] >= e[0] && point[0] <= s[0]
        } else {
            return point[0] >= s[0] && point[0] <= e[0]
        }
    }.filter { point in
        if s[1] > e[1] {
            return point[1] >= e[1] && point[1] <= s[1]
        } else {
            return point[1] >= s[1] && point[1] <= e[1]
        }
    }.count
}

//solution([[0, 3], [1, 1], [1, 5], [2, 2], [3, 3], [4, 0]], [1, 4], [4, 1])  // 3
solution([[0, 3], [1, 1], [1, 5], [2, 2], [3, 3], [4, 0]], [3, 4], [0, 0])  // 4
