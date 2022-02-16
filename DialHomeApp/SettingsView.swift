//
//  SettingsView.swift
//  Swift_UI_DEMO
//
//  Created by Andrew on 1/12/22.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var dial: Dialing
 
    var body: some View {
        VStack{
        Picker("What is your favorite color?", selection: $dial.gateSystem) {
                        Text("Milky Way").tag(0)
                        Text("Pegasus ").tag(1)
                        Text("Universe").tag(2)
                    }
                    .pickerStyle(.segmented)
        }
}
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
