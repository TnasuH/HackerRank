import Foundation

// Complete the arrayManipulation function below.
func arrayManipulation(n: Int, queries: [[Int]]) -> Int64 {
    var resArr:[Int] = Array(repeating: 0, count: (n + 2))
    for query in queries {
        let a = query[0]
        let b = query[1]
        let k = query[2]
        resArr[a] = resArr[a] + k
        resArr[(b + 1)] = resArr[(b + 1)] - k
    }
    
    var foundMax:Int64 = Int64.min
    var sum:Int64 = 0
    for val in 0...(n + 1) {
        sum = sum + Int64(resArr[val])
        foundMax = max(sum, foundMax)
    }
    return foundMax
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let nmTemp = readLine() else { fatalError("Bad input") }
let nm = nmTemp.split(separator: " ").map{ String($0) }

guard let n = Int(nm[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let m = Int(nm[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

let queries: [[Int]] = AnyIterator{ readLine() }.prefix(m).map {
    let queriesRow: [Int] = $0.split(separator: " ").map {
        if let queriesItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
            return queriesItem
        } else { fatalError("Bad input") }
    }

    guard queriesRow.count == 3 else { fatalError("Bad input") }

    return queriesRow
}

guard queries.count == m else { fatalError("Bad input") }

let result = arrayManipulation(n: n, queries: queries)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
