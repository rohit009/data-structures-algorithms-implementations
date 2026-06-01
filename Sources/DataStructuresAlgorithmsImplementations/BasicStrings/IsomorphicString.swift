//
//  IsomorphicString.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 31/05/26.
//

class IsomorphicString {
    func areIsomorphicStrings(string: String, target: String) -> Bool {
        guard string.count == target.count else {
            return false
        }
        
        var targetToStringMap = Dictionary<Character, Character>()
        var stringToTargetMap = Dictionary<Character, Character>()

        for (stringChar, targetChar) in zip(string, target) {
            let targetKey = targetChar
            let expectedTargetValue = stringChar
            let stringKey = stringChar
            let expectedStringValue = targetChar
            
            if targetToStringMap[targetKey] == nil && stringToTargetMap[stringKey] == nil {
                targetToStringMap[targetKey] = expectedTargetValue
                stringToTargetMap[stringKey] = expectedStringValue
            } else if targetToStringMap[targetKey] != nil && stringToTargetMap[stringKey] != nil {
                if targetToStringMap[targetKey] != expectedTargetValue
                    || stringToTargetMap[stringKey] != expectedStringValue {
                    return false
                }
            } else {
                return false
            }
        }
        
        return true
    }
}
