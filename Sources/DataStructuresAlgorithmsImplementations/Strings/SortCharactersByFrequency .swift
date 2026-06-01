//
//  SortCharactersByFrequency .swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 31/05/26.
//

class SortCharactersByFrequency {
    func sort(string: String) -> [Character] {
        guard !string.isEmpty else {
            return []
        }
        
        var frequencyCharTable = [(Int, Character)](repeating: (0, "a"), count: 26)
        for (index, _) in frequencyCharTable.enumerated() {
            frequencyCharTable[index].1 = Character(UnicodeScalar(Character("a").asciiValue! + UInt8(index)))
        }
        
        for character in string {
            guard let charAscii = character.asciiValue, let firstAscii = Character("a").asciiValue else {
                return []
            }
            
            frequencyCharTable[Int(charAscii - firstAscii)].0 += 1
        }
        
        frequencyCharTable.sort { element1, element2 in
            if element1.0 > element2.0 {
                return true
            } else if element1.0 < element2.0 {
                return false
            } else {
                return element1.1 < element2.1
            }
        }
        
        var outputArray = [Character]()
        for element in frequencyCharTable {
            guard element.0 > 0 else {
                continue
            }
            
            outputArray.append(element.1)
        }
        
        return outputArray
    }
}
