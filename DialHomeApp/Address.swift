//
//  Address.swift
//  Swift_UI_DEMO
//
//  Created by Andrew on 1/5/22.
//
import SwiftUI

struct Address: Identifiable {
    var id = UUID()
    var symbols: [Int]
    var name: String
    var more_info: String
}


let MilkyWay_Addresses = [
Address(symbols: [27,7,15,32,12,30], name: "Abydos", more_info: "Closest gate to Earth"),
Address(symbols: [33,31,27,37,35,34], name: "Alpha Site", more_info: "P4X-650"),
Address(symbols: [29,8,18,22,4,25], name: "Altair", more_info: "P3X-989"),
Address(symbols: [19,21,2,16,15,8,20], name: "Atlantis", more_info: "Located in the Pegasus galaxy"),
Address(symbols: [20,2,35,8,26,15], name: "Camelot", more_info: "PX1-767"),
Address(symbols: [29,3,6,9,12,16], name: "Castiana", more_info: "Taoth Vaclarush"),
Address(symbols: [35,33,28,38,29,40], name: "Cimmeria", more_info: "P3X-974"),
Address(symbols: [9,2,23,15,37,20], name: "Chulak", more_info: "The Jaffa homeworld"),
Address(symbols: [14,21,16,11,30,7], name: "Clava Thessara Infinitas", more_info: "N/A"),
Address(symbols: [16,28,3,8,33,4], name: "Dakara", more_info: "Birthplace of the Jaffa"),
Address(symbols: [28,26,5,36,11,29], name: "Earth", more_info: "Stargate Command"),
Address(symbols: [6,17,21,31,35,24,5,11,1], name: "Destiny", more_info: "Only nine-chevron address possible"),
Address(symbols: [28,38,35,9,15,3], name: "Edora", more_info: "P5C-768"),
Address(symbols: [20,9,7,5,18,19], name: "Erebus", more_info: "N/A"),
Address(symbols: [30,27,9,7,18,16], name: "Euronda", more_info: "N/A"),
Address(symbols: [9,19,26,17,22,5], name: "Gaia", more_info: "P3X-774"),
Address(symbols: [18,33,4,14,21,16], name: "Galar", more_info: "N/A"),
Address(symbols: [20,18,11,38,10,32], name: "Goa'uld Homeworld", more_info: "Apophis' base"),
Address(symbols: [3,32,16,8,10,12], name: "Goa'uld Mothership", more_info: "N/A"),
Address(symbols: [8,35,20,31,28,30], name: "Hak'tyl", more_info: "N/A"),
Address(symbols: [21,13,26,17,5,37], name: "Hanka", more_info: "P8X-987"),
Address(symbols: [28,32,33,31,35,16], name: "Hebridan", more_info: "N/A"),
Address(symbols: [29,8,18,22,4,25], name: "Juna", more_info: "P3X-729"),
Address(symbols: [6,16,8,3,26,25], name: "Kallana", more_info: "Collapsed by a black hole"),
Address(symbols: [26,35,6,8,23,14], name: "Kheb", more_info: "Location of the Harsesis"),
Address(symbols: [18,2,30,12,26,33], name: "K'Tau", more_info: "Freyr's protected world"),
Address(symbols: [25,3,11,12,21,16], name: "Langara", more_info: "P2S-4C3"),
Address(symbols: [16,34,28,12,4,7], name: "Latona", more_info: "P2A-018"),
Address(symbols: [27,32,34,36,40,29], name: "Madrona", more_info: "PX7-941"),
Address(symbols: [24,12,32,7,11,34], name: "Martin's Homeworld", more_info: "Destroyed by the Goa'uld"),
Address(symbols: [38,28,15,35,3,19], name: "NID Off-World Base", more_info: "Rogue off-world operation center"),
Address(symbols: [11,27,23,16,33,3,9], name: "Othala", more_info: "Asgard homeworld"),
Address(symbols: [18,15,11,4,19,31], name: "Pangar", more_info: "N/A"),
Address(symbols: [28,8,16,33,13,31], name: "P2X-555", more_info: "N/A"),
Address(symbols: [38,9,28,15,35,3], name: "P34-353J", more_info: "Desert Tok'ra base"),
Address(symbols: [19,8,4,37,26,16], name: "P3W-451", more_info: "Danger! Black hole planet"),
Address(symbols: [21,13,26,17,4,32], name: "P3X-116", more_info: "N/A"),
Address(symbols: [9,26,34,37,17,21], name: "P3X-118", more_info: "N/A"),
Address(symbols: [26,2,13,38,10,32], name: "P3X-797", more_info: "N/A"),
Address(symbols: [29,5,36,6,23,8], name: "P3X-984", more_info: "Original Alpha site"),
Address(symbols: [25,8,18,29,4,22], name: "P9C-372", more_info: "N/A"),
Address(symbols: [12,36,23,18,7,27], name: "P5B-926", more_info: "Desert world"),
Address(symbols: [35,3,31,29,5,17], name: "Proclarush Taonas", more_info: "Also known as the Lost City"),
Address(symbols: [29,18,19,20,21,22], name: "Sahal", more_info: "Valos Cor"),
Address(symbols: [30,19,34,9,33,18], name: "Sangreal Planet", more_info: "Location of the Holy Grail"),
Address(symbols: [33,28,23,26,16,31], name: "Tartarus", more_info: "Anubis' base"),
Address(symbols: [6,33,27,37,11,18], name: "Tollan", more_info: "Destroyed Tollan homeworld"),
Address(symbols: [4,29,8,22,18,25], name: "Tollana", more_info: "New Tollan homeworld"),
Address(symbols: [3,8,2,12,19,30], name: "Vagon Brei", more_info: "N/A"),
Address(symbols: [3,10,9,14,36,19], name: "Velona", more_info: "P4X-636"),
Address(symbols: [30,35,27,39,21,16], name: "Vis Uban", more_info: "P4T-3G6"),
Address(symbols: [29,5,36,6,23,6], name: "Vorash", more_info: "N/A"),
Address(symbols: [9,18,27,15,21,36], name: "Unknown", more_info: "N/A"),
]

let Pegasus_Addresses = [
Address(symbols:[28,3,2,25,16,14], name: "Lantea", more_info: "Location of the city of Atlantis"),
Address(symbols:[9,18,12,18,21,3], name: "Asura", more_info: "Replicator Homeworld"),   //Incorrect Address
Address(symbols: [32,30,35,24,10,29,22], name: "Earth", more_info: "8 Symbol Address to reach Stargate Command in the Milky Way galaxy"),
Address(symbols: [20,27,35,16,19,14], name: "Michael's Hive Ship", more_info: "N/A"),
Address(symbols: [20,18,17,15,29,28], name: "M4X-337", more_info: "N/A"),
Address(symbols: [24,15,17,26,19,36], name: "Genii Homeworld", more_info: "N/A"),
Address(symbols: [17,16,19,7,30,11], name: "Time Dilation Planet", more_info: "N/A"),
Address(symbols: [7,13,14,17,21,29], name: "Sateda", more_info: "Ronin Dex's homeworld"),
Address(symbols: [25,12,32,27,7,16], name: "M7G-677", more_info: "Planet run by children"),
Address(symbols: [16,13,14,27,7,34], name: "M6H-491", more_info: "N/A"),
Address(symbols: [7,17,2,34,12,8], name: "Taranan Homeworld", more_info: "N/A"),
Address(symbols: [32,19,27,9,16,21], name: "Ancient Outpost 1", more_info: "ZPM Planet 1"),
Address(symbols: [16,9,21,34,29,19], name: "Ancient Outpost 2", more_info: "ZPM Planet 2"),
Address(symbols: [28,21,32,34,27,36], name: "Ancient Outpost 3", more_info: "ZPM Planet 3"),
Address(symbols: [16,33,21,19,27,1], name: "Ancient Outpost 4", more_info: "ZPM Planet 4")
]

let Destiny_Addresses = [
Address(symbols: [6,34,8,26,35,21], name: "Destiny", more_info: "N/A"),
Address(symbols: [3,34,12,7,19,10], name: "Unknown", more_info: "Gravel Pit Planet"),
Address(symbols: [7,8,14,17,32,15], name: "Unknown", more_info: "Desert Planet"),
Address(symbols: [4,20,23,28,5,33], name: "Unknown", more_info: "Foggy Planet"),
Address(symbols: [15,31,8,22,35,29], name: "Unknown", more_info: "Hoth"),
Address(symbols: [3,34,12,7,19,10], name: "Unknown", more_info: "Jungle Planet"),
Address(symbols: [10,12,14,23,32,6], name: "Unknown", more_info: "Ruins Planet"),
Address(symbols: [18,24,8,26,13,21], name: "Unknown", more_info: "N/A"),
Address(symbols: [10,34,32,4,2,6], name: "Unknown", more_info: "N/A"),
Address(symbols: [13,34,8,19,35,21], name: "Unknown", more_info: "N/A"),
Address(symbols: [2,7,18,21,31,28], name: "Unknown", more_info: "N/A"),
Address(symbols: [4,17,23,32,36,12], name: "Unknown", more_info: "N/A"),
Address(symbols: [1,13,17,19,34,8], name: "Unknown", more_info: "N/A"),
Address(symbols: [2,14,18,23,7,3], name: "Unknown", more_info: "N/A"),
Address(symbols: [5,17,23,25,33,11], name: "Unknown", more_info: "N/A"),
Address(symbols: [29,6,11,27,34,15], name: "Unknown", more_info: "N/A")
]
