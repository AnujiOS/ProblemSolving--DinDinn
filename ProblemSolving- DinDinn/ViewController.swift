//
//  ViewController.swift
//  ProblemSolving- DinDinn
//
//  Created by Anuj Joshi on 24/10/2020.
//

import UIKit

class ViewController: UIViewController {

    let value: Int = 122

    override func viewDidLoad() {
        super.viewDidLoad()
        measure(string: "abc", number: 2)
        measure(string: "abc", number: 28)
    }

    func measure(string: String, number: Int) {
        var inputString: String = ""

        for index in string.unicodeScalars {
            let asciiValue = Int(index.value)

            var duplicateNumber = number

            if asciiValue + number > value {
                duplicateNumber -= (value - asciiValue)
                duplicateNumber = duplicateNumber % 26
                inputString += "\(Character(UnicodeScalar(UInt8(96 + duplicateNumber))))"
            } else {
                inputString += "\(Character(UnicodeScalar(asciiValue + duplicateNumber)!))"
            }
        }
        print(inputString)
    }

}

