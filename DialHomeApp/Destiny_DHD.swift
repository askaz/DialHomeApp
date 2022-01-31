//
//  Destiny_DHD.swift
//  DialHome
//
//  Created by Andrew on 1/30/22.
//

import SwiftUI
struct IdentifiableGameResult: Identifiable {
    var id = UUID()
    var score: Int
}

struct Destiny_DHD: View {
    @State var nearby_addresses = [String]()
    //@State private var buttonTapped = false
    let destiny_glyphs = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","9","8","7","6","5","4","3","2","1","0"]
    
    var body: some View {
        VStack {
            Text("Nearby Addresses")
            ForEach(nearby_addresses, id:\.self) { address in
                Button(action: {
                    print(address.replacingOccurrences(of: " ", with: ""))
                    //AutoDial
                }){
                Text(address)
                }.buttonStyle(Destiny_DHD_ButtonStyle(buttonTapped: true))
            }
        
        }.onAppear {
            nearby_addresses = generateAddresses(minNum: 3, maxNum: 8, glyphs: destiny_glyphs)
        }
 //VStack
    }// Body
    func generateAddresses(minNum: Int,maxNum: Int, glyphs: [String]) -> ([String]){
        var Addresses = [String]()
        let num_addresses = Int.random(in: minNum..<maxNum)
        print(num_addresses)
        for _ in 1...num_addresses {
            let shuffled_glyphs = glyphs.shuffled()
            let slice = shuffled_glyphs.prefix(7)
            let new_addr = slice.joined(separator: " ")
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
                .foregroundColor(Color.black)
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
