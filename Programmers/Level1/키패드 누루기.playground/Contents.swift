import Cocoa

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    
    var leftHandPosition = 10
    var rightHandPosition = 12
    for number in numbers {
        if number == 1 || number == 4 || number == 7 {
            result += "L"
            leftHandPosition = number
        } else if number == 3 || number == 6 || number == 9 {
            result += "R"
            rightHandPosition = number
        } else {
            let leftTemp = (number - leftHandPosition).magnitude
            let rightTemp = (number - rightHandPosition).magnitude
            
            let leftDistance = (leftTemp / 3) + (leftTemp % 3)
            let rightDistance = (rightTemp / 3) + (rightTemp % 3)
            
            print(leftDistance, rightDistance)
            if leftDistance == rightDistance {
                result += hand == "right" ? "R" : "L"
            } else if leftDistance > rightDistance {
                result += "R"
            } else {
                result += "L"
            }
        }
    }
    
    print(result)
    return ""
}

solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right")
