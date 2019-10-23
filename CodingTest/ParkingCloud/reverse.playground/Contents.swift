import UIKit

func reverse(_ param: String) -> Bool {
    
    var reverseString = ""
    
    for char in param {
        reverseString.insert(char, at: reverseString.startIndex)
    }
    
    if param == reverseString {
        return true
    } else {
        return false
    }
}
reverse("abc")
