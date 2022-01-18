//
//  iPhoneDHD.swift
//  Swift_UI_DEMO
//
//  Created by Andrew on 1/11/22.
//

import SwiftUI
struct iPhoneDHD: View {
    @EnvironmentObject var dial: Dialing
    var compress_ver = 25
    var compress_hor = 2.5
    var body: some View {
        VStack{
            HStack{
                VStack{
                    DHD_Button(num: 13,rotate: "Right")
                        .offset(y:CGFloat(4*compress_ver))
                    DHD_Button(num: 24,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(3*compress_ver))
                    DHD_Button(num: 7,rotate: "Right")
                        .offset(y:CGFloat(2*compress_ver))
                    DHD_Button(num: 18,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(compress_ver))
                    DHD_Button(num: 6,rotate: "Right")
                    DHD_Button(num: 19,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-1*compress_ver))
                    DHD_Button(num: 17,rotate: "Right")
                        .offset(y:CGFloat(-2*compress_ver))
                    DHD_Button(num: 8,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-3*compress_ver))
                    DHD_Button(num: 28,rotate: "Right")
                        .offset(y:CGFloat(-4*compress_ver))
                } //Left Outer VStack
                Spacer().frame(width: 50)
                VStack{
                    DHD_Button(num: 26,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(4*compress_ver))
                    DHD_Button(num: 12,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(3*compress_ver))
                    DHD_Button(num: 22,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(2*compress_ver))
                    DHD_Button(num: 10,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(1*compress_ver))
                    DHD_Button(num: 20,rotate: "Left")
                        .offset(x: CGFloat(compress_hor))
                    DHD_Button(num: 35,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-1*compress_ver))
                    DHD_Button(num: 2,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-2*compress_ver))
                    DHD_Button(num: 16,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-3*compress_ver))
                    DHD_Button(num: 25,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-4*compress_ver))
                } //Left Inner VStack
                Spacer().frame(width: 50)
                VStack{
                    DHD_Button(num: 33,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(4*compress_ver))
                    DHD_Button(num: 15,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(3*compress_ver))
                    DHD_Button(num: 30,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(2*compress_ver))
                    DHD_Button(num: 23,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(1*compress_ver))
                    DHD_Button(num: 1,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor))
                    DHD_Button(num: 14,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-1*compress_ver))
                    DHD_Button(num: 36,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-2*compress_ver))
                    DHD_Button(num: 31,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-3*compress_ver))
                    DHD_Button(num: 9,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-4*compress_ver))
                } //Right Inner VStack
                Spacer().frame(width: 50)
                VStack{
                    DHD_Button(num: 4,rotate: "Left")
                        .offset(y:CGFloat(4*compress_ver))
                    DHD_Button(num: 21,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(3*compress_ver))
                    DHD_Button(num: 32,rotate: "Left")
                        .offset(y:CGFloat(2*compress_ver))
                    DHD_Button(num: 5,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(1*compress_ver))
                    DHD_Button(num: 29,rotate: "Left")
                    DHD_Button(num: 34,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-1*compress_ver))
                    DHD_Button(num: 27,rotate: "Left")
                        .offset(y:CGFloat(-2*compress_ver))
                    DHD_Button(num: 11,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-3*compress_ver))
                    DHD_Button(num: 3,rotate: "Left")
                        .offset(y:CGFloat(-4*compress_ver))
                } //Right Outer VStack
            } //HStack
            DHD_Center_Button(num: 40, rotate: "None").offset(y:CGFloat(-4*compress_ver))
            //Jumper_Button(num: 40, rotate: "None").offset(y:CGFloat(-3*compress_ver))
        }//VStack
    }
}

struct iPhoneDHD_Previews: PreviewProvider {
    static var previews: some View {
        iPhoneDHD()
    }
}



