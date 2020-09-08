import Cocoa

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
  var board = board
  var resultArr: [Int] = []
  var result = 0
  
  moves.forEach {
    for i in 0..<board.count {
      if board[i][$0 - 1] > 0 {
        let doll = board[i][$0 - 1]
        // 크레인으로 옮겼으니 해당 위치의 인형은 0으로 바꿔준다.
        board[i][$0 - 1] = 0
        
        // 만약 같은 인형일 경우 마지막껄 지우고 인형 2개를 지운다.
        if !resultArr.isEmpty && resultArr.last == doll {
          resultArr.removeLast()
          result += 2
        } else {
          resultArr.append(doll)
        }
        break
      }
    }
  }
  
    return result
}

solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4])

// 0 1 1 3 0 3 0 2
// 11 33
