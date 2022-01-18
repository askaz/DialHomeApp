//
//  Pegasus_Database.swift
//  Swift_UI_DEMO
//
//  Created by Andrew on 1/5/22.
//

import SwiftUI

struct Pegasus_Database: View {
    var addresses: [Address] = []
    let gl = Glyph()
    var body: some View {
    NavigationView {
        List(addresses) { address in
            NavigationLink(destination: Text(address.more_info)) {
            VStack(alignment: .leading){
                Text(gl.address_to_glyphs(add_array: address.symbols, galaxy: "Old Pegasus")).font(Font.custom("Stargate Address Glyphs Atl", size: 32))
                HStack(alignment: .bottom){
                Text(address.name).bold()
                //Image(systemName: "chevron.right.circle")
                } // Hstack
            } //Vstack
            }
        }.navigationBarHidden(true)//.navigationBarTitle(Text("Pegasus Gates"))
        // List
        
    }// Navigation View
    } //Body View
}

struct Pegasus_Database_Previews: PreviewProvider {
    static var previews: some View {
        Pegasus_Database(addresses: Pegasus_Addresses)
            .previewInterfaceOrientation(.portrait)
    }
}
