//
//  MilkyWay_Database.swift
//  Swift_UI_DEMO
//
//  Created by Andrew on 1/5/22.
//

import SwiftUI

struct MilkyWay_Database: View {
    @State var language = true
    @State var addr_info = false
    var addresses: [Address] = []
    let mw_glyph = Glyph()
    var body: some View {
        let (addr_font, info_font) = ChangeLanguage(lang: language)
        NavigationView {
        List(addresses) { address in
            Button(action: {
                print(address.symbols)
                //AutoDial
            }){
            VStack(alignment: .leading){
                Text(mw_glyph.address_to_glyphs(add_array: address.symbols, galaxy: "Milky Way")).font(Font.custom("Stargate SG-1 Address Glyphs", size: 32))
                Text(address.name).font(addr_font)
                    if addr_info{
                        if address.more_info != "N/A"{
                            Text(address.more_info).font(info_font)//.subheadline)
                        }
                    }
            }.foregroundColor(.black) //Button
            } //Vstack
            }.toolbar {
                HStack{
                Button(action: {
                    language.toggle()
                }) {
                    if language {
                    Image(systemName: "globe.americas")
                        .font(.title)
                        .foregroundColor(.gray)
                    }
                    else {
                        Image(systemName: "globe")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                }
                Button(action: {
                    addr_info.toggle()
                }) {
                    if addr_info {
                    Image(systemName: "info.circle")
                        .font(.title)
                        .foregroundColor(.blue)
                    }
                    else {
                        Image(systemName: "info.circle")
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                }
                }//Hstack
            }
        //}.navigationBarTitle(Text("Milky Way Gates")) // List
        } //NavigationView
    } // Body
    func ChangeLanguage(lang:Bool) -> (Font, Font){
        let sys_bold = Font.system(size: 18, weight: .bold)
        let ancient_bold = Font.custom("Anquietas", size: 24)
        let sys_thin = Font.system(size: 16, weight: .regular)
        let ancient_thin = Font.custom("Anquietas", size: 16)
        var addr_font: Font
        var info_font: Font
        if language == true {
            addr_font = sys_bold
            info_font = sys_thin
        }
        else {
            addr_font = ancient_bold
            info_font = ancient_thin
        }
        return (addr_font,info_font)
    }
} //View

struct MilkyWay_Database_Previews: PreviewProvider {
    static var previews: some View {
        MilkyWay_Database(addresses: MilkyWay_Addresses)
.previewInterfaceOrientation(.portrait)
    }
}
