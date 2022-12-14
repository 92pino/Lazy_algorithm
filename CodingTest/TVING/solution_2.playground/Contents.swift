import Cocoa

func solution(_ card:[String], _ word:[String]) -> [String] {
    var result = [String]()
    var cardArr = card.map { String($0).map { String($0) } }
    word.forEach {
        let a = $0.map { String($0) }.filter { char in
            let a = cardArr.map { $0.contains(String(char)) }.filter { $0 }.first ?? false
            print(a)
            return true
        }
        print(a)
    }
    
    return result
}

solution(["ABACDEFG", "NOPQRSTU", "HIJKLKMM"], ["GPQM", "GPMZ", "EFU", "MMNA"]) // ["GPQM", "MMNA"]
