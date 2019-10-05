import UIKit

/*:
 # 문제
 
 유저가 달성한 점수(score)에 따라 실시간 랭킹을 보여주는 랭킹 페이지가 있습니다. 랭킹 페이지는 한 페이지에 K명씩 닉네임을 보여주며, 랭킹이 산정되는 규칙은 다음과 같습니다.
 
 점수가 높은 유저의 랭킹이 더 높습니다.
 점수가 같다면 해당 점수를 먼저 달성한 유저의 랭킹이 높습니다.
 어떤 유저가 이전 기록보다 더 높은 점수를 달성하면, 이전 기록은 사라지고 새로운 기록이 랭킹에 반영됩니다.
 어떤 유저가 이전 기록보다 더 낮거나 같은 점수를 달성했다면 이 기록은 무시합니다.
 시즌이 바뀌면서 랭킹이 초기화되어 랭킹 페이지가 비어있는 상태가 됐습니다. 이때, 각 유저의 닉네임과 점수가 해당 점수를 달성한 순서대로 주어지면, 1페이지는 몇 번 바뀌는지 알아보려 합니다. 단, 랭킹 페이지에는 유저 닉네임만 표시되므로 점수 변화가 있더라도 랭킹에 변화가 없다면 랭킹 페이지는 바뀌지 않습니다.
 
 한 페이지에 닉네임이 올라가는 개수 K, 유저의 닉네임과 점수가 달성 순서대로 들어있는 배열 userscores가 매개변수로 주어질 때, _랭킹 1페이지는 몇 번 바뀌는지 return 하도록 solution 함수를 완성해주세요.
 
 ## 제한사항
 - K는 1 이상 100 이하인 자연수입니다.
 - user_scores의 길이는 1 이상 1,000 이하입니다.
 - user_scores의 각 원소는 유저 닉네임과 해당 유저가 달성한 점수로 이루어진 문자열입니다.
 - 유저 닉네임과 달성 점수는 닉네임 점수 형태의 문자열로 주어집니다.
 - 닉네임과 점수는 공백(스페이스 바) 한 개로 구분되어 주어집니다.
 - 닉네임은 알파벳 소문자와 숫자로만 이루어져 있으며, 길이는 1 이상 10 이하입니다.
 - 점수는 숫자로만 이루어져 있으며, 길이는 1 이상 9 이하이고 0으로 시작하지 않습니다.
 - 모든 유저는 닉네임 하나만 사용하며, 서로 다른 유저의 닉네임이 같은 경우는 없습니다.
 - user_scores에는 각 유저가 해당 점수를 달성한 순서대로 들어있습니다.
 - 따라서 같은 점수를 동시에 달성 한 유저는 없다고 가정해도 좋습니다.
 
 ## 입출력 예
 > K    user_scores    result
 >
 > 3    ["alex111 100", "cheries2 200", "coco 150", "luna 100", "alex111 120", "coco 300", "cheries2 110"]    4
 >
 > 3    ["alex111 100", "cheries2 200", "alex111 200", "cheries2 150", "coco 50", "coco 200"]    3
 >
 > 2    ["cheries2 200", "alex111 100", "coco 150", "puyo 120"]    3
 
 ## 입출력 예 #1
 
 랭킹 1페이지는 최대 3명까지 닉네임을 보여주고, 각 유저의 닉네임과 달성 점수는 순서대로 ["alex111 100", "cheries2 200", "coco 150", "luna 100", "alex111 120", "coco 300", "cheries2 110"]입니다. 실시간 랭킹을 보여주므로, 유저가 점수를 달성할 때마다 결과를 랭킹에 바로 반영하면 됩니다.
 
 처음에 랭킹 1페이지는 비어있습니다.
 3번째 유저까지 닉네임을 올려 3번 바뀐 후 모습은 아래와 같습니다.
 > 순위    닉네임
 >
 > 1    cheries2
 >
 > 2    coco
 >
 > 3    alex111
 
 다음으로 luna가 100점을 달성했습니다.
 alex111이 먼저 100점을 달성했기 때문에 랭킹 페이지는 바뀌지 않습니다.
 다음으로 alex111이 120점을 달성했습니다.
 coco의 150점보다는 낮은 점수이므로 1페이지는 바뀌지 않습니다.
 coco가 300점을 달성하여 새로운 1등이 되면 1페이지는 아래와 같이 바뀝니다.
 > 순위    닉네임
 >
 > 1    coco
 >
 > 2    cheries2
 >
 > 3    alex111
 
 마지막으로 cheries2가 110점을 달성했지만, 이전 기록이 더 좋으므로 무시됩니다.
 따라서 총 4번 바뀌었습니다.
 */

// 1번째 풀어본 방식
func solution1(_ input: Int) -> Bool {
    var result = false
    
    if String(input) == String(String(input).reversed()) {
        result = true
    } else {
        false
    }
    
    return result
}
solution1(12321)
solution1(21453)

// 2번째 풀어본 방식 - 조건문을 삼항연산자로 변경

func solution2(_ input: Int) -> Bool {
    
    return String(input) == String(String(input).reversed()) ? true : false
}
solution2(12321)
solution2(21453)
