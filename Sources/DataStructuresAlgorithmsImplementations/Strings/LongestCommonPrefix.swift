//
//  LongestCommonPrefix.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 31/05/26.
//

class LongestCommonPrefix {
    func findLongestCommonPrefix(strings: [String]) -> String {
        guard !strings.isEmpty else {
            return ""
        }
        
        guard strings.count > 1 else {
            return strings[0]
        }
        
        let sortedStrings = strings.sorted()
        guard let first = sortedStrings.first, let last = sortedStrings.last else {
            return ""
        }

        var commonPrefix = ""
        for i in 0 ..< min(first.count, last.count) {
            let index = first.index(first.startIndex, offsetBy: i)
            if first[index] != last[index] {
                break
            }

            commonPrefix += "\(first[index])"
        }
        
        
        return commonPrefix
    }
}
