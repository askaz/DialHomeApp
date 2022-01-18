//  Glyph.swift
//  Mobile DHD
//
//  Created by Andrew on 1/3/22.
//

import UIKit
import AVFoundation
class Glyph: NSObject {
    @Published var language = true
    var network: String?
    var constellation: String?
    var number: Int?
    var text: String?
    
    func address_to_glyphs(add_array: [Int], galaxy:String) -> String{
        var translated_address = ""
        for num in add_array{
            let temp = translate(number: num, gate: galaxy)
            translated_address.append(contentsOf: temp)
        }
        return translated_address
    }
    func translate(number: Int, gate: String) -> String{
        var font_glyph = ""
        if gate == "Milky Way"{
            switch number {
            case 1:
                font_glyph = "A"
            case 2:
                font_glyph =  "B"
            case 3:
                font_glyph =  "C"
            case 4:
                font_glyph =  "D"
            case 5:
                font_glyph =  "E"
            case 6:
                font_glyph =  "F"
            case 7:
                font_glyph =  "G"
            case 8:
                font_glyph =  "H"
            case 9:
                font_glyph =  "I"
            case 10:
                font_glyph =  "J"
            case 11:
                font_glyph =  "K"
            case 12:
                font_glyph =  "L"
            case 13:
                font_glyph =  "M"
            case 14:
                font_glyph =  "N"
            case 15:
                font_glyph =  "O"
            case 16:
                font_glyph =  "P"
            case 17:
                font_glyph =  "Q"
            case 18:
                font_glyph =  "R"
            case 19:
                font_glyph =  "S"
            case 20:
                font_glyph =  "T"
            case 21:
                font_glyph =  "U"
            case 22:
                font_glyph =  "V"
            case 23:
                font_glyph =  "W"
            case 24:
                font_glyph =  "X"
            case 25:
                font_glyph =  "Y"
            case 26:
                font_glyph =  "Z"
            case 27:
                font_glyph =  "a"
            case 28:
                font_glyph =  "b"
            case 29:
                font_glyph =  "c"
            case 30:
                font_glyph =  "d"
            case 31:
                font_glyph =  "e"
            case 32:
                font_glyph =  "f"
            case 33:
                font_glyph =  "g"
            case 34:
                font_glyph =  "h"
            case 35:
                font_glyph =  "i"
            case 36:
                font_glyph =  "j"
            case 37:
                font_glyph =  "k"
            case 38:
                font_glyph =  "l"
            case 39:
                font_glyph =  "m"
            case 40:
                font_glyph =  "n"
            default:
                font_glyph =  "Unknown Glyph"
            }
        }
        else if gate == "Pegasus"{
            switch number {
            case 1:
                font_glyph = "E"
            case 2:
                font_glyph =  "F"
            case 3:
                font_glyph =  "G"
            case 4:
                font_glyph =  "H"
            case 5:
                font_glyph =  "I"
            case 6:
                font_glyph =  "J"
            case 7:
                font_glyph =  "a"
            case 8:
                font_glyph =  "b"
            case 9:
                font_glyph =  "c"
            case 10:
                font_glyph =  "d"
            case 11:
                font_glyph =  "e"
            case 12:
                font_glyph =  "f"
            case 13:
                font_glyph =  "g"
            case 14:
                font_glyph =  "h"
            case 15:
                font_glyph =  "i"
            case 16:
                font_glyph =  "j"
            case 17:
                font_glyph =  "k"
            case 18:
                font_glyph =  "l"
            case 19:
                font_glyph =  "m"
            case 20:
                font_glyph =  "n"
            case 21:
                font_glyph =  "o"
            case 22:
                font_glyph =  "p"
            case 23:
                font_glyph =  "q"
            case 24:
                font_glyph =  "r"
            case 25:
                font_glyph =  "s"
            case 26:
                font_glyph =  "t"
            case 27:
                font_glyph =  "A"
            case 28:
                font_glyph =  "B"
            case 29:
                font_glyph =  "u"
            case 30:
                font_glyph =  "w"
            case 31:
                font_glyph =  "C"
            case 32:
                font_glyph =  "x"
            case 33:
                font_glyph =  "v"
            case 34:
                font_glyph =  "z"
            case 35:
                font_glyph =  "y"
            case 36:
                font_glyph =  "D"
            default:
                font_glyph =  "Unknown Glyph"
            }
        }
        else if gate == "Old Pegasus"{
            switch number {
            case 1:
                font_glyph = "5"
            case 2:
                font_glyph =  "E"
            case 3:
                font_glyph =  "2"
            case 4:
                font_glyph =  "L"
            case 5:
                font_glyph =  "M"
            case 6:
                font_glyph =  "Q"
            case 7:
                font_glyph =  "Y"
            case 8:
                font_glyph =  "B"
            case 9:
                font_glyph =  "3"
            case 10:
                font_glyph =  "O"
            case 11:
                font_glyph =  "I"
            case 12:
                font_glyph =  "W"
            case 13:
                font_glyph =  "T"
            case 14:
                font_glyph =  "8"
            case 15:
                font_glyph =  "U"
            case 16:
                font_glyph =  "G"
            case 17:
                font_glyph =  "9"
            case 18:
                font_glyph =  "6"
            case 19:
                font_glyph =  "7"
            case 20:
                font_glyph =  "K"
            case 21:
                font_glyph =  "V"
            case 22:
                font_glyph =  "Z"
            case 23:
                font_glyph =  "N"
            case 24:
                font_glyph =  "R"
            case 25:
                font_glyph =  "0"
            case 26:
                font_glyph =  "4"
            case 27:
                font_glyph =  "F"
            case 28:
                font_glyph =  "1"
            case 29:
                font_glyph =  "J"
            case 30:
                font_glyph =  "S"
            case 31:
                font_glyph =  "H"
            case 32:
                font_glyph =  "X"
            case 33:
                font_glyph =  "P"
            case 34:
                font_glyph =  "D"
            case 35:
                font_glyph =  "C"
            case 36:
                font_glyph =  "A"
            default:
                font_glyph =  "Unknown Glyph"
            }
        }
        else if gate == "Destiny"{
            switch number {
            case 1:
                font_glyph =  "Z"
            case 2:
                font_glyph =  "B"
            case 3:
                font_glyph =  "3"
            case 4:
                font_glyph =  "J"
            case 5:
                font_glyph =  "Q"
            case 6:
                font_glyph =  "K"
            case 7:
                font_glyph =  "L"
            case 8:
                font_glyph =  "M"
            case 9:
                font_glyph =  "V"
            case 10:
                font_glyph =  "N"
            case 11:
                font_glyph =  "O"
            case 12:
                font_glyph =  "6"
            case 13:
                font_glyph =  "D"
            case 14:
                font_glyph =  "C"
            case 15:
                font_glyph =  "W"
            case 16:
                font_glyph =  "Y"
            case 17:
                font_glyph =  "X"
            case 18:
                font_glyph =  "R"
            case 19:
                font_glyph =  "T"
            case 20:
                font_glyph =  "S"
            case 21:
                font_glyph =  "8"
            case 22:
                font_glyph =  "A"
            case 23:
                font_glyph =  "P"
            case 24:
                font_glyph =  "U"
            case 25:
                font_glyph =  "F"
            case 26:
                font_glyph =  "7"
            case 27:
                font_glyph =  "H"
            case 28:
                font_glyph =  "5"
            case 29:
                font_glyph =  "4"
            case 30:
                font_glyph =  "I"
            case 31:
                font_glyph =  "E"
            case 32:
                font_glyph =  "0"
            case 33:
                font_glyph =  "1"
            case 34:
                font_glyph =  "2"
            case 35:
                font_glyph =  "G"
            case 36:
                font_glyph =  "3"
            default:
                font_glyph =  "Unknown Glyph"
            }
        }
        return font_glyph
    }
}
