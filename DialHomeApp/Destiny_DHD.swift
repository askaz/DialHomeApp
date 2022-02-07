//
//  Destiny_DHD.swift
//  DialHome
//
//  Created by Andrew on 1/30/22.
//

import SwiftUI

extension Color {
  static let textColor = Color("TextColor")
}

struct Destiny_DHD: View {
    @EnvironmentObject var dial: Dialing
    @State var nearby_addresses = [String]()
    let gl = Glyph()
    //@State private var buttonTapped = false
    let destiny_glyphs =
    Array(1...36)
    //["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","9","8","7","6","5","4","3","2","1","0"]
    
    var body: some View {
        VStack {
            Text("Nearby Addresses").foregroundColor(.textColor)
            ForEach(nearby_addresses, id:\.self) { address in
                Button(action: {
                    print(address.replacingOccurrences(of: " ", with: ""))
                    print(gl.addr2nums(address: address.replacingOccurrences(of: " ", with: ""), gate: "Destiny"))
                    
                    //AutoDial
                }){
                Text(address).foregroundColor(.textColor)
                }.buttonStyle(Destiny_DHD_ButtonStyle(buttonTapped: true))
            }
        
        }.onAppear {
            nearby_addresses = generateAddresses(minNum: 3, maxNum: 8, glyphs: destiny_glyphs)
        }
 //VStack
    }// Body
    func generateAddresses(minNum: Int,maxNum: Int, glyphs: [Int]) -> ([String]){
        var Addresses = [String]()
        let num_addresses = Int.random(in: minNum..<maxNum)
        //print(num_addresses)
        for _ in 1...num_addresses {
            let shuffled_glyphs = glyphs.shuffled()
            let slice = shuffled_glyphs.prefix(7)
            var new_addr = " "
            for g in slice{
                new_addr.append(gl.translate(number: g, gate: "Destiny"))
                new_addr.append(" ")
            }
            //let new_addr = slice.joined(separator: " ")
            Addresses.append(new_addr)
        }
        return (Addresses)
    }
    
} //Destiny_DHD View

struct Destiny_DHD_ButtonStyle : ButtonStyle {
    var buttonTapped: Bool
    func makeBody(configuration: Configuration) -> some View {
        if buttonTapped == true{
            configuration.label
                .font(Font.custom("Stargate Universe", size: 36))
                .foregroundColor(.textColor)
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 10)
                                .stroke(configuration.isPressed
                                        ? Color.black : Color.white, lineWidth: 2)
                )
                .padding(.horizontal,20)
        }
        else{
            configuration.label
                .font(Font.custom("Stargate Universe", size: 36))
                .foregroundColor(Color.black)
                .padding(8)
                .background(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 2)
                )
                .padding(.top,5)
        }

    }
}

struct Destiny_DHD_Previews: PreviewProvider {
    static var previews: some View {
        Destiny_DHD()
    }
}
