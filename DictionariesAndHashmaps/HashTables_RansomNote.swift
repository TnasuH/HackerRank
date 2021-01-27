import Foundation

// Complete the checkMagazine function below.
func checkMagazine(magazine: [String], note: [String]) -> Void {
    let magazineSet = Set(magazine)
    let noteSet = Set(note)
    var magazineDic :[String:Int] = [:]
    var noteDic :[String:Int] = [:]
    
    for mag in magazineSet {
        magazineDic[mag] = 0
    }
    for note in noteSet {
        noteDic[note] = 0
    }
    
    for mag in magazine {
        magazineDic[mag] = magazineDic[mag]! + 1
    }
    for note in note {
        noteDic[note] = noteDic[note]! + 1
    }
    var found = false
    for note in noteDic {
        if(magazineDic[note.key] != nil && note.value <= magazineDic[note.key]!){
        }else{
            found = true
        }
    }
    if found {
        print("No")
    }else{
        print("Yes")
    }
}

guard let mnTemp = readLine() else { fatalError("Bad input") }
let mn = mnTemp.split(separator: " ").map{ String($0) }

guard let m = Int(mn[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let n = Int(mn[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let magazineTemp = readLine() else { fatalError("Bad input") }
let magazine: [String] = magazineTemp.split(separator: " ").map {
    String($0)
}

guard magazine.count == m else { fatalError("Bad input") }

guard let noteTemp = readLine() else { fatalError("Bad input") }
let note: [String] = noteTemp.split(separator: " ").map {
    String($0)
}

guard note.count == n else { fatalError("Bad input") }

checkMagazine(magazine: magazine, note: note)
