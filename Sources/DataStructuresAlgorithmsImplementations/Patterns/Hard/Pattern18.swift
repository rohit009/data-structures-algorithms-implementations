//
//  Untitled.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 13/04/26.
//

class Pattern18 {

    /**
     Pattern 18
     For n = 4
     The following pattern should output:
     
     D
     C D
     B C D
     A B C D
     
     */
    func createPattern(numberOfLines: Int) {
        guard numberOfLines > 0 else {
            return
        }

        guard let aAsciiValue = Character("A").asciiValue else {
            return
        }
        
        let elementAsciiValue = Int(aAsciiValue) + numberOfLines - 1
        for row in 0..<numberOfLines {
            for charAsciiValue in (elementAsciiValue - row)...elementAsciiValue {
                guard let unicodeScalar = UnicodeScalar(charAsciiValue) else {
                    continue
                }
                
                print(Character(unicodeScalar), terminator: " ")
            }
            
            print()
        }
    }
}
