//
//  SettingsView.swift
//  Swift_UI_DEMO
//
//  Created by Andrew on 1/12/22.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var set: Settings
    @EnvironmentObject var dial: Dialing
 
    var body: some View {
        VStack{
            Picker("Choose Gate System", selection: $set.gateSystem){//$dial.gateSystem) {
                        Text("Milky Way").tag(0)
                        Text("Pegasus ").tag(1)
                        Text("Universe").tag(2)
        }.onChange(of: set.gateSystem) { _ in
            print(set.gateSystem)
            dial.gateSystem = set.gateSystem
            print(dial.gateSystem)
           
        }.pickerStyle(.segmented)
        }
}
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
