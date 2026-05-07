//
//  main.swift
//  ticTackToe(swift)
//
//  Created by Вавилов Илья on 7/5/26.
//

import Foundation

var map = """
1 | 2 | 3  
- | - | - 
4 | 5 | 6
- | - | -
7 | 8 | 9
"""

var field = [0, 0, 0, 0, 0, 0, 0, 0, 0]

let winsCombination = [
    [1, 1, 1, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 1, 1, 1, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 1, 1, 1],
    [1, 0, 0, 0, 1, 0, 0, 0, 1],
    [0, 0, 1, 0, 1, 0, 1, 0, 0],
    [0, 1, 0, 0, 1, 0, 0, 1, 0],
    [1, 0, 0, 1, 0, 0, 1, 0, 0],
    [0, 1, 0, 0, 1, 0, 0, 1, 0],
    [0, 0, 1, 0, 0, 1, 0, 0, 1]
]

func steps() {
    let step = readLine() ?? ""
    field[(Int(step) ?? 0) - 1] = 1
}

func printField() {
    let newField = """
    \(field[0] == 1 ? "X" : " ") | \(field[1] == 1 ? "X" : " ") | \(field[2] == 1 ? "X" : " ")  
    - | - | - 
    \(field[3] == 1 ? "X" : " ") | \(field[4] == 1 ? "X" : " ") | \(field[5] == 1 ? "X" : " ")
    - | - | -
    \(field[6] == 1 ? "X" : " ") | \(field[7] == 1 ? "X" : " ") | \(field[8] == 1 ? "X" : " ")
    """
    print(newField)
}

func checkWinOrLose() -> String {
    for i in field {
        if field == winsCombination[i] {
            return "win"
        }
    }
    return "lose"
}

func main() {
    print("Добро пожаловать в крестики нолики")
    print(map)
    print("Выше указаны номера полей")
    for _ in 0..<10 {
        print("Ваш ход: ")
        steps()
        printField()
        if checkWinOrLose() == "win" {
            print("Победа!")
            break
        }
    }
}

main()

// пользователь может вводить 10 или 0 это выдаст ошибку и падение программы

