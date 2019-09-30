import UIKit

/*:
 # 2016년
 
 ## 문제
 2016년 1월 1일은 금요일입니다. 2016년 a월 b일은 무슨 요일일까요? 두 수 a,b를 입력받아 2016년 a월 b일이 무슨 요일인지 리턴하는 함수 solution을 완성하세요. 요일의 이름은 일요일부터 토요일까지 각각
 ```SUN, MON, TUE, WED, THU, FRI, SAT```
 입니다. 예를 들어 a = 5, b = 24라면 5월 24일은 화요일이므로 "TUE"를 반환하세요.
 
 제한 조건
 - 2016년은 윤년입니다.
 - 2016년 a월 b일은 실제로 있는 날입니다.(13월 26일이나 2월 45일같은 날짜는 주어지지 않습니다.)
 
 ## 예 1)
 ### input:
 a : 5, b : 24
 ### output:
 "TUEl"
 
 */

func solution(_ a: Int, _ b: Int) -> String {
    let calendar = Calendar(identifier: .gregorian)
    let days = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    
    let date: Date? = {
        let comps = DateComponents(calendar: calendar, year: 2016, month: a, day: b)
        
        return comps.date
    }()
    
    let day = calendar.dateComponents([.weekday], from: date!)
    let result = days[day.weekday! - 1]
    
    return result
}

solution(1, 3)

// 다른 사람 풀이

func solution2(_ a: Int, _ b: Int) -> String {
    var accumaltedDays = b - 1
    for i in 1..<a {
        accumaltedDays += numberOfDays(month: i)
    }
    
    let dayArray = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    
    return dayArray[accumaltedDays % 7]
}

func numberOfDays(month: Int) -> Int {
    switch month {
    case 1, 3, 5, 7, 8, 10, 12:
        return 31
    case 4, 6, 9, 11:
        return 30
    case 2:
        return 29
    default:
        return 0
    }
}
solution2(1, 1)
