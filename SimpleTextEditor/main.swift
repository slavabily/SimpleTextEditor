//
//  main.swift
//  SimpleTextEditor
//
//  Created by slava bily on 08.12.2021.
//

import Foundation

var S = ""
var Q = 0
while Q < 3 {
    
    print("Please enter operation:")
    
    if let operation = readLine() {
        
        let pref = operation.prefix(1)
        
        var s: String.SubSequence {
            var suff = operation.suffix(from: pref.endIndex)
            suff.removeFirst()
            return suff
        }
        if  pref == "1" {
            let st = String(s)
            S.append(st)
            print(S)
        }
        if pref == "2" {
            S.removeLast(Int(s)!)
            print(S)
        }
        if pref == "3" {
            guard let k = Int(s) else { print("Incorrect command"); break }
            let arr = Array(S)
            for i in 0..<arr.count {
               if i == k - 1 {
                print(arr[i])
               }
            }
        }
        
        
    }
    Q += 1
}



 


