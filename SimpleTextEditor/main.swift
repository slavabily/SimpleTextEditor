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
        
        if  pref == "1" {
            var suff = operation.suffix(from: pref.endIndex)
            suff.removeFirst()
            let s = String(suff)
            S.append(s)
            print(S)
        }
        if pref == "2" {
            S.removeLast(2)
            print(S)
        }
    }
    Q += 1
}



 


