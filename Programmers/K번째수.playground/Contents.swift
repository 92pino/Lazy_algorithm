import UIKit

/*:
 # K번쨰 수
 
 ## 문제
 배열 array의 i번째 숫자부터 j번쨰 숫자까지 자르고 정렬했을 때, k번쨰에 있는 수를 구하려 합니다.
 예를 들어 array가 [1,5,2,6,3,7,4], i = 2, j = 5, k = 3이라면
1. array의 2번쨰부터 5번쨰까지 자르면 [5,2,6,3]입니다.
2. 1에서 나온 배열을 정렬하면 [2,3,5,6]입니다.
3. 2에서 나온 배열의 3번째 숫자는 5입니다.
 
 배열 array,[i,j,k]를 원소로 가진 2차원 배열 commands가 매개변수로 주어질 때, commands의 모든 원소에 대해 앞서 설명한 연산을 적용했을 때 나온 결과를 배열에 담아 return 하도록 solution 함수를 작성해주세요.
 
 제한 조건
 - array의 길이는 1 이상 100 이하입니다.
 - array의 각 원소는 1 이상 100 이하입니다.
 - commands의 길이는 1 이상 50 이하입니다.
 - commands의 각 원소는 길이가 3입니다.
 
 ## 예 1)
 ### input:
 array : [1,5,2,6,3,7,4]
 commands : [[2,5,3],[4,4,1],[1,7,3]]
 ### output:
 [5,6,3]
 
*/

// 내 풀이
func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    var result: [Int] = []
    var cutArray: [Int] = []
    
    for i in 0..<commands.count {
        cutArray = []
        for j in commands[i][0]-1..<commands[i][1] {
            cutArray.append(array[j])
        }
        cutArray.sort()
        result.append(cutArray[commands[i][2]-1])
    }
    
    return result
}
solution([1,5,2,6,3,7,4], [[2,5,3],[4,4,1],[1,7,3]])

// 다른 풀이
func solution2(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    var result = [Int]()
    
    for temp in commands {
        let i = temp[0] - 1
        let j = temp[1] - 1
        let k = temp[2] - 1
        
        var tempArr = array[i...j]
        tempArr.sort{ $0 < $1 }
        
        let tempArr2 = Array(tempArr)
        result.append(tempArr2[k])
    }
    
    return result
}
solution2([1,5,2,6,3,7,4], [[2,5,3],[4,4,1],[1,7,3]])
