//
//  iPhoneDHD_MW.swift
//  Swift_UI_DEMO
//
//  Created by Andrew on 1/11/22.
//

import SwiftUI

struct iPhoneDHD_MW: View {
    @EnvironmentObject var dial: Dialing
    var compress_ver = 25
    var compress_hor = 2.5
    var body: some View {
        VStack{
            HStack{
                VStack{
                    DHD_Button_MW(num: 13,rotate: "Right")
                        .offset(y:CGFloat(4*compress_ver))
                    DHD_Button_MW(num: 24,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(3*compress_ver))
                    DHD_Button_MW(num: 7,rotate: "Right")
                        .offset(y:CGFloat(2*compress_ver))
                    DHD_Button_MW(num: 18,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(compress_ver))
                    DHD_Button_MW(num: 6,rotate: "Right")
                    DHD_Button_MW(num: 19,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-1*compress_ver))
                    DHD_Button_MW(num: 17,rotate: "Right")
                        .offset(y:CGFloat(-2*compress_ver))
                    DHD_Button_MW(num: 8,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-3*compress_ver))
                    DHD_Button_MW(num: 28,rotate: "Right")
                        .offset(y:CGFloat(-4*compress_ver))
                    DHD_Button_MW(num: 37,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-5*compress_ver)).hidden()
                } //Left Outer VStack
                Spacer().frame(width: 50)
                VStack{
                    DHD_Button_MW(num: 26,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(4*compress_ver))
                    DHD_Button_MW(num: 12,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(3*compress_ver))
                    DHD_Button_MW(num: 22,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(2*compress_ver))
                    DHD_Button_MW(num: 10,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(1*compress_ver))
                    DHD_Button_MW(num: 20,rotate: "Left")
                        .offset(x: CGFloat(compress_hor))
                    DHD_Button_MW(num: 35,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-1*compress_ver))
                    DHD_Button_MW(num: 2,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-2*compress_ver))
                    DHD_Button_MW(num: 16,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-3*compress_ver))
                    DHD_Button_MW(num: 25,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-4*compress_ver))
                    DHD_Button_MW(num: 37,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-5*compress_ver))
                } //Left Inner VStack
                Spacer().frame(width: 50)
                VStack{
                    DHD_Button_MW(num: 33,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(4*compress_ver))
                    DHD_Button_MW(num: 15,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(3*compress_ver))
                    DHD_Button_MW(num: 30,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(2*compress_ver))
                    DHD_Button_MW(num: 23,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(1*compress_ver))
                    DHD_Button_MW(num: 1,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor))
                    DHD_Button_MW(num: 14,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-1*compress_ver))
                    DHD_Button_MW(num: 36,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-2*compress_ver))
                    DHD_Button_MW(num: 31,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-3*compress_ver))
                    DHD_Button_MW(num: 9,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-4*compress_ver))
                    DHD_Button_MW(num: 38,rotate: "Left")
                        .offset(x: CGFloat(compress_hor),y:CGFloat(-5*compress_ver))
                    
                } //Right Inner VStack
                Spacer().frame(width: 50)
                VStack{
                    DHD_Button_MW(num: 4,rotate: "Left")
                        .offset(y:CGFloat(4*compress_ver))
                    DHD_Button_MW(num: 21,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(3*compress_ver))
                    DHD_Button_MW(num: 32,rotate: "Left")
                        .offset(y:CGFloat(2*compress_ver))
                    DHD_Button_MW(num: 5,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(1*compress_ver))
                    DHD_Button_MW(num: 29,rotate: "Left")
                    DHD_Button_MW(num: 34,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-1*compress_ver))
                    DHD_Button_MW(num: 27,rotate: "Left")
                        .offset(y:CGFloat(-2*compress_ver))
                    DHD_Button_MW(num: 11,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-3*compress_ver))
                    DHD_Button_MW(num: 3,rotate: "Left")
                        .offset(y:CGFloat(-4*compress_ver))
                    DHD_Button_MW(num: 38,rotate: "Right")
                        .offset(x: CGFloat(-1*compress_hor),y:CGFloat(-5*compress_ver)).hidden()
                } //Right Outer VStack
            } //HStack
            DHD_Center_Button(num: 40, rotate: "None").offset(y:CGFloat(-6*compress_ver))
            //Jumper_Button(num: 40, rotate: "None").offset(y:CGFloat(-6*compress_ver))
        }//VStack
    }
}

struct iPhoneDHD_MW_Previews: PreviewProvider {
    static var previews: some View {
        iPhoneDHD_MW()
    }
}
