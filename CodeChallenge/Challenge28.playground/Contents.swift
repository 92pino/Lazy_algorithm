import UIKit

/*:
 # 2019.10.15 - Hackingwithswift
 
 ## Challenge 28 : Log a message
 __Difficulty__ : Easy
 
 Write a logging function that accepts a path to a log file on disk as well as a new log message. Your function should open the log file (or create it if it does not already exist), then append the new message to the log along with the current time and date.
 
 __Tip__ : It's important that you add line breaks along with each message, otherwise the log will just become jumbled.
 
 ---
 
 ### Sample input and output
 - If the file does not exist, running your function should create it and save the new message.
 - If it does exist, running your function should load the existing content and append the message to the end, along with suitable line breaking.
 
*/

func challenge28(fileName: String, msg: String) {
    
    let fm = FileManager.default
    let docDirectory = fm.urls(for: .documentDirectory, in: .userDomainMask).first!
    let dataPath = docDirectory.appendingPathComponent(fileName)
    
    do {
        // 파일 이름을 기존의 경로에 추가
        
        if !fm.fileExists(atPath: dataPath.path) {
            try fm.createDirectory(atPath: dataPath.path, withIntermediateDirectories: false, attributes: nil)
        }
        
        let file:FileHandle? = FileHandle(forReadingAtPath: dataPath.path)
        file?.seekToEndOfFile()
        
        let currDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ko_KR")
        
        guard let data = (" \(dateFormatter.string(from: currDate)) : \(msg)").data(using: String.Encoding.utf8) else { return }
        
        file?.write(data)
    } catch let error as NSError {
        print("Error Writing File : \(error.localizedDescription)")
    }
    
}
challenge28(fileName: "example.log", msg: "test swift file write example")

// solution
func challenge28a(log message: String, to logFile: String) {
    var existingLog = (try? String(contentsOfFile: logFile)) ?? ""
    existingLog.append("\(Date()): \(message)\n")
    
    do {
        try existingLog.write(toFile: logFile, atomically: true, encoding: .utf8)
    } catch {
        print("Failed to write to log: \(error.localizedDescription)")
    }
}
challenge28a(log: "example.log", to: "test swift file write example")
