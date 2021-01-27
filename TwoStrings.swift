import Foundation

// Complete the twoStrings function below.
func twoStrings(s1: String, s2: String) -> String {
    let alphabetSet = Set(Array(s1.lowercased()))
    let phraseSet = Set(Array(s2.lowercased()))
    let alphabetCount = alphabetSet.count
    let mergedSet = alphabetSet.union(phraseSet)
    if(mergedSet.count == (alphabetSet.count + phraseSet.count)){
        return "NO"
    }else{
        return "YES"
    }
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for qItr in 1...q {
    guard let s1 = readLine() else { fatalError("Bad input") }

    guard let s2 = readLine() else { fatalError("Bad input") }

    let result = twoStrings(s1: s1, s2: s2)

    fileHandle.write(result.data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}
