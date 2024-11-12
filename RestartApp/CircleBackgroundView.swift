//
//  CircleBackgroundView.swift
//  RestartApp
//
//  Created by milad marandi on 11/12/24.
//

import SwiftUI

struct CircleBackgroundView: View {
    
    @State var Shadeopacity:Double
    @State var Color:Color
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(Color.opacity(Shadeopacity) , lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(Color.opacity(Shadeopacity) ,lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
            
        }
    }
}

#Preview {
    ZStack{
        Color("Colorblue")
        CircleBackgroundView(Shadeopacity: 0.2, Color: .white)
    }
    .ignoresSafeArea()
   
}
