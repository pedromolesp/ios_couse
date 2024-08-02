//
//  main.swift
//  OptionalDemo
//
//  Created by Molina Espinosa, Pedro on 1/8/24.
//

import Foundation

struct MyOptional {
    var property = 123
    func method() {
        print(property)

    }
}
let myOptional: MyOptional?
myOptional = nil
print(myOptional?.property)

/*
let text: String = myOptional ?? "Default Value"
*/

/*
if myOptional != nil {
    let text: String = myOptional!
    let text2: String = myOptional!

}else{
    print("myOptional was not found")
}*/
/*
if let safeOptional = myOptional {
    let text: String = safeOptional
    let text2: String = safeOptional

}else{
    print("myOptional was not found")
}
*/

/*
 
print(myOptional!)
 */
