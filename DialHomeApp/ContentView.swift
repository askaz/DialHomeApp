import SwiftUI
import CoreData
import Combine
import AVFoundation
var player: AVAudioPlayer?

struct ContentView: View {
    @EnvironmentObject var dial: Dialing
    var body: some View {
        TabView {
            MilkyWay_Database(addresses: MilkyWay_Addresses)
            //DatabaseList() // Navigation View
             .tabItem {
                Image(systemName: "text.book.closed.fill")
                Text("Database")
              }
            //PegJumperDHD().environmentObject(Dialing())
            //AtlantisDHD().environmentObject(Dialing())
            //iPhoneDHD().environmentObject(Dialing())
            iPhoneDHD_MW()
             .tabItem {
                Image(systemName: "phone.fill")
                Text("DHD")
              }
            SettingsView().environmentObject(Dialing())
                .tabItem{
                Image(systemName: "gearshape")
                Text("Settings")
                }
        }.edgesIgnoringSafeArea(.bottom) // Tab View
    } //Body View
} //Content View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}

struct DHD_Button_MW: View {
    @EnvironmentObject var dial: Dialing
    //------Button Properties------------
    var num: Int
    var rotate: String
    let t_size = 90
    let font_version = "Stargate SG-1 Address Glyphs"
    let galaxy = "Milky Way"
    let font_size = 40
    //-----------------------------------
    var body: some View {
        let gl = Glyph()
        let frame_width = Double(t_size)*(0.45)
        let frame_height = Double(t_size)*(0.8)
        let textOff = Color(.gray)
        let textOn = Color(red: 232/255, green: 252/255, blue: 255/255)
        let buttonOff = Color(red: 227/255, green: 140/255, blue: 27/255)
        let (rot,x_shift,y_shift) = findOrient(rotated: rotate)
        
        Button(action: {
            if dial.active == false {
            print("Button "+String(num)+" Pressed!")
            pressSound()
            dial.pressed_symbols[num-1].toggle()
            dial.address.append(num)
            let numberOfTrue = dial.pressed_symbols.filter{$0}.count
            print(numberOfTrue)
            }
        }) {
            if dial.pressed_symbols[num-1] {
                Text(gl.translate(number: num, gate: galaxy)).font(Font.custom(font_version, size: CGFloat(font_size))).foregroundColor(textOn).offset(x: CGFloat(x_shift),y:CGFloat(y_shift))
                    .frame(width: CGFloat(frame_width*2), height:CGFloat(frame_height))
                .background(
                    FlatTriangle().fill(buttonOff)
                        .frame(width: CGFloat(Double(t_size)), height: CGFloat((Double(t_size)*(sqrt(3))/2)))
                        .rotationEffect(.degrees(rot))
                )
            } // If False
            else {
                Text(gl.translate(number: num, gate: galaxy)).font(Font.custom(font_version, size: CGFloat(font_size))).foregroundColor(textOff).offset(x: CGFloat(x_shift),y:CGFloat(y_shift))
                    .frame(width: CGFloat(frame_width*2), height:CGFloat(frame_height))
                .background(
                    FlatTriangle().fill(buttonOff)
                        .frame(width: CGFloat(Double(t_size)), height: CGFloat((Double(t_size)*(sqrt(3))/2)))
                        .rotationEffect(.degrees(rot))
                )
            }
    }   .frame(width: CGFloat(frame_width), height:CGFloat(frame_height))
    } //DHD_Button Body
    func findOrient(rotated: String) -> (Double, Double, Double){
        var rot: Double
        var x_shift: Double
        var y_shift: Double
        if rotated == "Up" {
            rot = 0.0
            x_shift = -2.0
            y_shift = 13.0
        }
        else if rotated == "Left" {
            rot = 270.0
            x_shift = 12.0
            y_shift = 0.0
        }
        else if rotated == "Down" {
            rot = 180.0
            x_shift = 0
            y_shift = -18
        }
        else if rotated == "Right" {
            rot = 90.0
            x_shift = -15.0
            y_shift = 0.0
        }
        else {
            rot = 0
            x_shift = 0.0
            y_shift = 0.0
        }
    return (rot,x_shift,y_shift)
    }
} // DHD_Button View


struct DHD_Button: View {
    @EnvironmentObject var dial: Dialing
    //------Button Properties------------
    var num: Int
    var rotate: String
    let t_size = 90
    let font_version = "Stargate Atlantis Glyphs"
    let galaxy = "Pegasus"
    let font_size = 22
    //-----------------------------------
    var body: some View {
        let gl = Glyph()
        let frame_width = Double(t_size)*(0.45)
        let frame_height = Double(t_size)*(0.8)
        let textOff = Color(.gray)
        let textOn = Color(red: 232/255, green: 252/255, blue: 255/255)
        let buttonOff = Color(red: 227/255, green: 140/255, blue: 27/255)
        let (rot,x_shift,y_shift) = findOrient(rotated: rotate)
        
        Button(action: {
            if dial.active == false {
            print("Button "+String(num)+" Pressed!")
            pressSound()
            dial.pressed_symbols[num-1].toggle()
            dial.address.append(num)
            let numberOfTrue = dial.pressed_symbols.filter{$0}.count
            print(numberOfTrue)
            }
        }) {
            if dial.pressed_symbols[num-1] {
                Text("\n"+gl.translate(number: num, gate: galaxy)).font(Font.custom(font_version, size: CGFloat(font_size))).foregroundColor(textOn).offset(x: CGFloat(x_shift),y:CGFloat(y_shift))
                    .frame(width: CGFloat(frame_width*2), height:CGFloat(frame_height))
                .background(
                    FlatTriangle().fill(buttonOff)
                        .frame(width: CGFloat(Double(t_size)), height: CGFloat((Double(t_size)*(sqrt(3))/2)))
                        .rotationEffect(.degrees(rot))
                )
            } // If False
            else {
                Text("\n"+gl.translate(number: num, gate: galaxy)).font(Font.custom(font_version, size: CGFloat(font_size))).foregroundColor(textOff).offset(x: CGFloat(x_shift),y:CGFloat(y_shift))
                    .frame(width: CGFloat(frame_width*2), height:CGFloat(frame_height))
                .background(
                    FlatTriangle().fill(buttonOff)
                        .frame(width: CGFloat(Double(t_size)), height: CGFloat((Double(t_size)*(sqrt(3))/2)))
                        .rotationEffect(.degrees(rot))
                )
            }
    }   .frame(width: CGFloat(frame_width), height:CGFloat(frame_height))
    } //DHD_Button Body
    func findOrient(rotated: String) -> (Double, Double, Double){
        var rot: Double
        var x_shift: Double
        var y_shift: Double
        if rotated == "Up" {
            rot = 0.0
            x_shift = -2.0
            y_shift = 13.0
        }
        else if rotated == "Left" {
            rot = 270.0
            x_shift = 10.0
            y_shift = -5.0
        }
        else if rotated == "Down" {
            rot = 180.0
            x_shift = 0
            y_shift = -18
        }
        else if rotated == "Right" {
            rot = 90.0
            x_shift = -10.0
            y_shift = -4.0
        }
        else {
            rot = 0
            x_shift = 0.0
            y_shift = 0.0
        }
    return (rot,x_shift,y_shift)
    }
} // DHD_Button View


struct DHD_Center_Button: View {
    @EnvironmentObject var dial: Dialing
    //------Button Properties------------
    var num: Int
    var rotate: String
    let t_size = 90
    let font_version = "Stargate Atlantis Glyphs"
    let galaxy = "Pegasus"
    let font_size = 22
    //-----------------------------------
    var body: some View {
        let frame_width = Double(t_size)*(0.42)
        let frame_height = Double(t_size)*(0.8)
        let buttonOff = Color(red: 63/255, green: 185/255, blue: 209/255)
        let buttonOn = Color(red: 50/255, green:76/255, blue:179/255)
        let textOff = Color(.gray)
        let textOn = Color(red: 232/255, green: 252/255, blue: 255/255)
        Button(action: {
            //print(dial.pressed_symbols)
            dial.pressed_symbols[num-1].toggle()
            print("Button "+String(num)+" Pressed!")
            pressSound()
            if dial.pressed_symbols[num-1] == false {
                dial.pressed_symbols = Array(repeating: false, count: 40)
                dial.address = [Int]()
                dial.active = false
            }
            else{
                dial.active = true
                print("Dialing: ")
                print(dial.address)
            }
        }) {
            if dial.pressed_symbols[num-1] {
                Text(" ")
                .background(
                    FlatTriangle().fill(buttonOff)
                        .frame(width: CGFloat(Double(t_size)), height: CGFloat((Double(t_size)*(sqrt(3))/2)))
                        .rotationEffect(.degrees(Double(0)))
                ).overlay(Triangle().stroke(textOn, lineWidth: 4)
                            .frame(width: CGFloat(Double(t_size/3)), height: CGFloat((Double(t_size/3)*(sqrt(3))/2)))
                            .rotationEffect(.degrees(Double(0)))
                            .offset(y:-15))
                .overlay(Triangle().stroke(textOn, lineWidth: 4)
                            .frame(width: CGFloat(Double(t_size/3)), height: CGFloat((Double(t_size/3)*(sqrt(3))/2)))
                            .rotationEffect(.degrees(Double(0)))
                            .offset(x:20,y:20))
                .overlay(Triangle().stroke(textOn, lineWidth: 4)
                            .frame(width: CGFloat(Double(t_size/3)), height: CGFloat((Double(t_size/3)*(sqrt(3))/2)))
                            .rotationEffect(.degrees(Double(0)))
                            .offset(x:-20,y:20))
                .overlay(Triangle().fill(textOn)
                            .frame(width: CGFloat(Double(t_size/3)), height: CGFloat((Double(t_size/3)*(sqrt(3))/2)))
                            .rotationEffect(.degrees(Double(180)))
                            .offset(x:0,y:15))
            }
            else{
                Text(" ")
                .background(
                    FlatTriangle().fill(buttonOff)
                        .frame(width: CGFloat(Double(t_size)), height: CGFloat((Double(t_size)*(sqrt(3))/2)))
                        .rotationEffect(.degrees(Double(0)))
                ).overlay(Triangle().stroke(textOff, lineWidth: 4)
                            .frame(width: CGFloat(Double(t_size/3)), height: CGFloat((Double(t_size/3)*(sqrt(3))/2)))
                            .rotationEffect(.degrees(Double(0)))
                            .offset(y:-15))
                .overlay(Triangle().stroke(textOff, lineWidth: 4)
                            .frame(width: CGFloat(Double(t_size/3)), height: CGFloat((Double(t_size/3)*(sqrt(3))/2)))
                            .rotationEffect(.degrees(Double(0)))
                            .offset(x:20,y:20))
                .overlay(Triangle().stroke(textOff, lineWidth: 4)
                            .frame(width: CGFloat(Double(t_size/3)), height: CGFloat((Double(t_size/3)*(sqrt(3))/2)))
                            .rotationEffect(.degrees(Double(0)))
                            .offset(x:-20,y:20))
                .overlay(Triangle().fill(textOff)
                            .frame(width: CGFloat(Double(t_size/3)), height: CGFloat((Double(t_size/3)*(sqrt(3))/2)))
                            .rotationEffect(.degrees(Double(180)))
                            .offset(x:0,y:15))
                
            }
    }   .frame(width: CGFloat(frame_width), height:CGFloat(frame_height))
    } //DHD_Center_Button Body
} // DHD_Center_Button View


func pressSound(){
    let path = Bundle.main.path(forResource: "press.mp3", ofType:nil)!
    let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
            player?.play()
        } catch {
            print("Error")
           // couldn't load file :(
        }
}//Function PressSound



struct Jumper_Button: View {
    @EnvironmentObject var dial: Dialing
    //------Button Properties------------
    var num: Int
    var rotate: String
    let t_size = 90
    //-----------------------------------
    //var properties: ButtonProperties
    var body: some View {
        let frame_width = Double(t_size)*(0.42)
        let frame_height = Double(t_size)*(0.8)
        let textOff = Color(.gray)
        let textOn = Color(red: 232/255, green: 252/255, blue: 255/255)
        let buttonOff = Color(red: 227/255, green: 140/255, blue: 27/255)
        Button(action: {
            print("Button "+String(num)+" Pressed!")
            pressSound()
            dial.pressed_symbols[num-1].toggle()
            if dial.pressed_symbols[num-1] == false {
                dial.pressed_symbols = Array(repeating: false, count: 40)
                dial.address = [Int]()
                dial.active = false
            }
            else{
                print("Dialing: ")
                print(dial.address)
                dial.active = true
            }
        }) {
            if dial.pressed_symbols[num-1]  {
                ZStack{
                    JumperButton().fill(buttonOff).frame(width: CGFloat(Double(t_size)*1.5), height: CGFloat((Double(t_size)*(sqrt(3))/2)))
                    JumperButtonLine().stroke(textOn,lineWidth: 4).frame(width: CGFloat(Double(t_size)*1.5), height: CGFloat((Double(t_size)*(sqrt(3))/2)))
                    JumperButton().stroke(buttonOff, lineWidth: 10).cornerRadius(2).frame(width: CGFloat(Double(t_size)*1.65), height: CGFloat((Double(t_size)*0.9526)))
                Text("")
                } //ZStack
            } //If
            else{
                ZStack{
                    JumperButton().fill(buttonOff).frame(width: CGFloat(Double(t_size)*1.5), height: CGFloat((Double(t_size)*(sqrt(3))/2)))
                    JumperButtonLine().stroke(textOff,lineWidth: 4).frame(width: CGFloat(Double(t_size)*1.5), height: CGFloat((Double(t_size)*(sqrt(3))/2)))
                    JumperButton().stroke(buttonOff, lineWidth: 10).cornerRadius(2).frame(width: CGFloat(Double(t_size)*1.65), height: CGFloat((Double(t_size)*0.9526)))
                Text("")
                } //ZStack
            } //Else
        }.frame(width: CGFloat(frame_width*3), height:CGFloat(frame_height))
    } //Jumper_Button Body
} // Jumper_Button View



public class Dialing: ObservableObject {
    @Published public var pressed_symbols = Array(repeating: false, count: 40)
    @Published public var address = [Int]()
    @Published public var active = false
}

struct DatabaseList: View {
    @State var language = true
    var body: some View {
        NavigationView {
            List{
                if language == true {
                    NavigationLink(destination: MilkyWay_Database(addresses: MilkyWay_Addresses)) {
                        Text("Milky Way Gate Addresses").font(Font.custom("Anquietas", size: 32))
                    }
                    NavigationLink(destination: Pegasus_Database(addresses: Pegasus_Addresses)) {
                        Text("Pegasus Gate Addresses")
                    }
                    NavigationLink(destination: Destiny_Database(addresses: Destiny_Addresses)) {
                        Text("Destiny Gate Addresses")
                    }
                } //If English
            } // List
        } // Navigation View
    }// DatabaseList Body
}// DatabaseList View

struct FlatTriangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let edge = 5
        path.move(to: CGPoint(x: rect.midX+CGFloat(edge),
                            y: rect.minY+CGFloat(Double(edge)*sqrt(3))))    //Start Top Right
        path.addLine(to: CGPoint(x: rect.midX-CGFloat(edge),
                            y: rect.minY+CGFloat(Double(edge)*sqrt(3))))    //Top Bar
        path.addLine(to: CGPoint(x: rect.minX+CGFloat(edge),
                            y: rect.maxY-CGFloat(Double(edge)*sqrt(3))))    //Left Side
        path.addLine(to: CGPoint(x: rect.minX+CGFloat(2*edge),
                            y: rect.maxY))                                  //Left Bar
        path.addLine(to: CGPoint(x: rect.maxX-CGFloat(2*edge),
                            y: rect.maxY))                                  //Bottom Side
        path.addLine(to: CGPoint(x: rect.maxX-CGFloat(edge),
                            y: rect.maxY-CGFloat(Double(edge)*sqrt(3))))    //Right Bar
        path.addLine(to: CGPoint(x: rect.midX+CGFloat(edge),
                            y: rect.minY+CGFloat(Double(edge)*sqrt(3))))    //Right Side
        return path
    }
}

struct JumperButton: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX-CGFloat((rect.maxX-rect.midX)/2), y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX+CGFloat((rect.maxX-rect.midX)/2), y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        return path
    }
}
struct JumperButtonLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let y_quart = ((rect.maxY-rect.minY)/4)
        let x_nine = ((rect.maxX-rect.minX)/10)
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY+y_quart))
        path.addLine(to: CGPoint(x: rect.midX-x_nine,y: rect.minY+y_quart))
        path.addLine(to: CGPoint(x: rect.midX-CGFloat(x_nine*2),y: rect.minY+CGFloat(y_quart*2)))
        path.addLine(to: CGPoint(x: rect.midX-CGFloat(x_nine*4),y: rect.minY+CGFloat(y_quart*2)))
        path.addLine(to: CGPoint(x: rect.midX-CGFloat(x_nine*2),y: rect.minY+CGFloat(y_quart*2)))
        path.addLine(to: CGPoint(x: rect.midX-x_nine,y: rect.minY+CGFloat(y_quart*3)))
        path.addLine(to: CGPoint(x: rect.midX,y: rect.minY+CGFloat(y_quart*3)))
        path.addLine(to: CGPoint(x: rect.midX,y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX,y: rect.minY+CGFloat(y_quart*3)))
        path.addLine(to: CGPoint(x: rect.midX+CGFloat(x_nine),y: rect.minY+CGFloat(y_quart*3)))
        path.addLine(to: CGPoint(x: rect.midX+CGFloat(x_nine*2),y: rect.minY+CGFloat(y_quart*2)))
        path.addLine(to: CGPoint(x: rect.midX+CGFloat(x_nine*4),y: rect.minY+CGFloat(y_quart*2)))
        path.addLine(to: CGPoint(x: rect.midX+CGFloat(x_nine*2),y: rect.minY+CGFloat(y_quart*2)))
        path.addLine(to: CGPoint(x: rect.midX+CGFloat(x_nine),y: rect.minY+CGFloat(y_quart)))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY+y_quart))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
     return path
    }
}
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let edge = 1
        path.move(to: CGPoint(x: rect.midX+CGFloat(edge),
                            y: rect.minY+CGFloat(Double(edge)*sqrt(3))))    //Start Top Right
        path.addLine(to: CGPoint(x: rect.midX-CGFloat(edge),
                            y: rect.minY+CGFloat(Double(edge)*sqrt(3))))    //Top Bar
        path.addLine(to: CGPoint(x: rect.minX+CGFloat(edge),
                            y: rect.maxY-CGFloat(Double(edge)*sqrt(3))))    //Left Side
        path.addLine(to: CGPoint(x: rect.minX+CGFloat(2*edge),
                            y: rect.maxY))                                  //Left Bar
        path.addLine(to: CGPoint(x: rect.maxX-CGFloat(2*edge),
                            y: rect.maxY))                                  //Bottom Side
        path.addLine(to: CGPoint(x: rect.maxX-CGFloat(edge),
                            y: rect.maxY-CGFloat(Double(edge)*sqrt(3))))    //Right Bar
        path.addLine(to: CGPoint(x: rect.midX+CGFloat(edge),
                            y: rect.minY+CGFloat(Double(edge)*sqrt(3))))    //Right Side
        return path
    }
}

