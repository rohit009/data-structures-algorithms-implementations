//
//  CheckPrimeRecursion.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 29/06/26.
//
import Foundation

class CheckPrimeRecursion {
    func isPrime(num: Int) -> Bool {
        if num <= 1 {
            return false
        }
        
        if num == 2 {
            return true
        }
        
        return checkPrimeRecursively(num: num, divisor: 2)
    }
    
    func checkPrimeRecursively(num: Int, divisor: Int) -> Bool {
        if divisor == (Int(ceil(sqrt(Double(num)))) + 1) {
            return true
        }
        
        if num % divisor == 0 {
            return false
        }
        
        return checkPrimeRecursively(num: num, divisor: divisor + 1)
    }
}
