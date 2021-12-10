//
//  main.swift
//  SimpleTextEditor
//
//  Created by slava bily on 08.12.2021.
//

import Foundation

var S = ""
var Q = 0
var U = [String]()

print("Please, enter the number of operations:")

if let Q = readLine() {
    let q = Int(Q)!
    var n = 0
    
    while n < q {
        print("Please enter operation:")
        
        if var operation = readLine() {
            
            var pref = operation.prefix(1)
            
            var s: String.SubSequence {
                var suff = operation.suffix(from: pref.endIndex)
                suff.removeFirst()
                return suff
            }
            if  pref == "1" {
                U.append(operation)
                let st = String(s)
                S.append(st)
                print(S)
            }
            if pref == "2" {
                U.append(operation)
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
            if pref == "4" {
                print("Undo...")
                U.removeLast()
                S.removeAll()
                if U.isEmpty == false {
                    for i in U {
                        operation = i
                        pref = operation.prefix(1)
                        if  pref == "1" {
                            let st = String(s)
                            S.append(st)
                            print(S)
                        } else if pref == "2" {
                            S.removeLast(Int(s)!)
                            print(S)
                        }
                    }
                }
            }
        }
        n += 1
    }
}
print(U)



 


