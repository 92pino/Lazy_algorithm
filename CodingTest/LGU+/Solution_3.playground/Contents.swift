import Cocoa

func solution(_ train:[String]) -> Int {
    var map = [[String]]()
    var count = 0
    
    train.enumerated().forEach { (index, str) in
        let arr = str.map { String($0) }
        var newArr = [String]()
        for (index, direction) in arr.enumerated() {
            switch direction {
            case "W":
                if index != 0 {
                    if arr[index - 1] == "E" {
                        newArr.append("E")
                        count += 1
                    } else {
                        newArr.append(direction)
                    }
                } else {
                    newArr.append(direction)
                }
            default:
                newArr.append(direction)
            }
        }
        
        if map.isEmpty {
            map.append(newArr)
        } else {
            for (idx, item) in newArr.enumerated() {
                if map[index - 1][idx] == "S" {
                    if item == "N" {
                        newArr[idx] = "S"
                        count += 1
                    }
                }
            }
            map.append(newArr)
        }
    }
    
    print(count)
    return count
}

solution(["SSSS", "NNNN", "NNNN", "NNNN"])
solution(["WEW", "WEW", "WEW"])
solution(["SSS", "NNN", "NNN", "NNN"])
//solution(["ESS", "EEW", "NNW"])
//solution(["EW", "EW", "EW"])
//solution(["NSN", "ESW", "ENW", "NNN"])
//solution(["EEE", "WWW"])
