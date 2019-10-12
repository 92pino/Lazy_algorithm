import UIKit

/*:
 # 2019.10.10 - Hackingwithswift
 
 ## Challenge 27 : Print last lines
 __Difficulty__ : Easy
 
 Write a function that accepts a filename on disk, then prints its last N lines in reverse order, all on a single line separated by commas.
 
 ---
 
 ### Sample input and output
 - If asked to print the last 3 lines, your code should output "Twelfth Night, Othello, Macbeth".
 - If asked to print the last 100 lines, your code should output "Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony and Cleopatra".
 - If asked to print the last 0 lines, your could should print nothing.
 
*/
func challenge27(line: Int, _ input: [String]) -> String {
    var result = ""
    var arr = [String]()
    var reverse = [String](input.reversed())
    
    if input.count < line {
        result = reverse.joined(separator: ", ")
    } else if line == 0 {
        result = "empty"
    } else {
        result = reverse[0..<line].joined(separator: ", ")
    }
    
    return result
}

var arr = ["Antony And Cleopatra", "Coriolanus", "Cymbeline", "Hamlet", "Julisus Caesar", "King Lear", "Macbeth", "Othello", "Twelfth Night"]

challenge27(line: 3, arr)
challenge27(line: 100, arr)
challenge27(line: 0, arr)

// solution

func challenge27a(fileName: String, lineCount: Int){
    
    guard let input = try? String(contentsOfFile: fileName) else { return }
    
    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return }
    
    lines.reverse()
    
    var output = [String]()
    
    for i in 0..<min(lines.count, lineCount) {
        output.append(lines[i])
    }
    
    print(output.joined(separator: ", "))
}
challenge27a(fileName: "example", lineCount: 3)
