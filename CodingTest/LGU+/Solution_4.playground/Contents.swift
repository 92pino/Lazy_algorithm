import Cocoa

func solution(_ players: [Int]) -> Int {
    var result = 0
    
    let proCount = players.filter { $0 == 1}.count + 1
    
    if (players.count / 2) <= proCount {
        result = playGame(players.count)
    } else {
        result = playGame2(players.count, players.count)
    }
    
    return result
}

func playGame2(_ players: Int, _ num: Int) -> Int {
    var sum = 0
    var result = players
    
    while result > 2 {
        sum += 1
        result /= 2
    }
    
    print(sum + 1)
    return 0
}

func playGame(_ num: Int) -> Int {
    var sum = 0
    var result = num
    
    while result / 2 >= 1 {
        sum += (result / 2)
        result /= 2
    }
    
    print(sum)
    return sum
}

solution([1, 0, 0, 0])
solution([1, 1, 1, 1, 1, 0, 1, 0])  // 7
solution([0, 0, 0, 1])
solution([1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]) // 1 ==> 3, 2 ==> 5, 3 ==> 6>
