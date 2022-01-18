//
//  Destiny_Database.swift
//  Swift_UI_DEMO
//
//  Created by Andrew on 1/6/22.
//

import SwiftUI

struct Destiny_Database: View {
    var addresses: [Address] = []
    let sgu_glyph = Glyph()
    var body: some View {
        //NavigationView {
        List(addresses) { address in
            //NavigationLink(destination: Text(address.more_info)) {
                HStack(alignment: .center){
                Text(sgu_glyph.address_to_glyphs(add_array: address.symbols, galaxy: "Destiny")).font(Font.custom("Stargate Universe", size: 36))
                    if address.name != "Unknown"{
                        Text(address.name).bold()
                    }
            } //Vstack
            //} //Navigation Link
        }//.navigationBarTitle(Text("Destiny Gates")) // List
        //} //NavigationView
    } // Body
}

struct Destiny_Database_Previews: PreviewProvider {
    static var previews: some View {
        Destiny_Database(addresses: Destiny_Addresses)
.previewInterfaceOrientation(.portrait)
    }
}
