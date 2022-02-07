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
    
    func addr2nums(address: String, gate: String) -> [Int]{
        let milkyway = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
                        "N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
                        "a","b","c","d","e","f","g","h","i","j","k","l","m","n"]
        
        let pegasusV2 = ["E","F","G","H","I","J","a","b","c","d","e","f","g","h","i",
                       "j","k","l","m","n","p","q","r","s","t","A","B","u","w","C",
                       "x","v","z","y","D"]
        
        let pegasusV1 = [" ","E","2","L","M","Q","Y","B","3","O","I","W","T",
                           "8","U","G","9","6","7","K","V","Z","N","R","0"," ",
                           "F","1","J","S","H","X","P","D","C","A","4","5"]
        
        let destinyV1 = ["Z","B","3","J","Q","K","L","M","V","N","O","6","D",
                         "C","W","Y","X","R","T","S","8","A","P","U","F","7",
                         "H","5","4","I","E","0","1","2","G","3"]
        
        let destinyV2 = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
                        "N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
                         "1","2","3","4","5","6","7","8","9","0"]
        var glyph_array = [String]()
        if gate == "Milky Way"{
            glyph_array = milkyway
        }
        else if gate == "Pegasus"{
            glyph_array = pegasusV2
        }
        else if gate == "Old Pegasus"{
            glyph_array = pegasusV1
        }
        else if gate == "Old Destiny"{
            glyph_array = destinyV1
        }
        else if gate == "Destiny"{
            glyph_array = destinyV2
        }
        var glyph_nums = [Int]()
        //let addr_chars = Array(address)
        
        for g in address {
            let idx = glyph_array.firstIndex(of: String(g)) ?? 0
            //let idx = glyph_array.firstIndex(where: { $0 == String(g) })
            glyph_nums.append(idx+1)
        }
        return glyph_nums
    }
    
    
    func translate(number: Int, gate: String) -> String{
        let milkyway = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
                        "N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
                        "a","b","c","d","e","f","g","h","i","j","k","l","m","n"]
        
        let pegasusV2 = ["E","F","G","H","I","J","a","b","c","d","e","f","g","h","i",
                       "j","k","l","m","n","o","p","q","r","s","t","A","B","u","w",
                         "C","x","v","z","y","D"]
        
        let pegasusV1 = [" ","E","2","L","M","Q","Y","B","3","O","I","W","T",
                           "8","U","G","9","6","7","K","V","Z","N","R","0"," ",
                           "F","1","J","S","H","X","P","D","C","A","4","5"]
        
        let destinyV1 = ["Z","B","3","J","Q","K","L","M","V","N","O","6","D",
                         "C","W","Y","X","R","T","S","8","A","P","U","F","7",
                         "H","5","4","I","E","0","1","2","G","3"]
        
        let destinyV2 = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
                        "N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
                         "1","2","3","4","5","6","7","8","9","0"]
        
        var font_glyph = ""
        
        if gate == "Milky Way"{
            font_glyph = milkyway[number-1]
        }
        else if gate == "Pegasus"{
            font_glyph = pegasusV2[number-1]
        }
        else if gate == "Old Pegasus"{
            font_glyph = pegasusV1[number-1]
        }
        else if gate == "Old Destiny"{
            font_glyph = destinyV1[number-1]
        }
        else if gate == "Destiny"{
            font_glyph = destinyV2[number-1]
        }
        return font_glyph
    }
} // Class Glyph

