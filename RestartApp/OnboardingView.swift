//
//  OnboardingView.swift
//  RestartApp
//
//  Created by milad marandi on 11/9/24.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingEnabled:Bool = true
    
    @State var width = UIScreen.main.bounds.width - 80
    @State var buttonOffset:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color("Colorblue")
            
            VStack(spacing:40) {
                Spacer()
                //header
                VStack{
                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                    Text("""
                      It's not how much we give but
                     how much we put into giving it
                     """)
                }
                
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                
                //center
                ZStack {
                    ZStack{
                        Circle()
                            .stroke(.white.opacity(0.2) , lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2) ,lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                        
                    }
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }
                
                
                ZStack{
                    
                    Text("Get Started")
                        .font(.system(.title3 , design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    
                    Capsule()
                        .fill(.white.opacity(0.2))
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    HStack{
                        Capsule()
                            .fill(Color("Colorred"))
                            .frame(width: 80 + buttonOffset)
                        Spacer()
                    }
                    
                    HStack {
                        ZStack {
                            
                            Circle()
                                .fill(Color("Colorred"))
                            Circle()
                                .fill(.black.opacity(0.2))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24 , weight: .black))
                                .foregroundStyle(.white)
                            
                        }
                        
                        .offset(x:buttonOffset)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    if gesture.translation.width > 0 && gesture.translation.width <= width - 80 {
                                        
                                        buttonOffset = gesture.translation.width
                                    }
                                })
                            
                                .onEnded({ gesture in
                                    let location = gesture.translation.width
                                    
                                    if location <= width / 2 {
                                        buttonOffset = 0
                                    }
                                    
                                    else{
                                        buttonOffset = width - 80
                                        isOnboardingEnabled = false
                                    }
                                })
                        )
                        Spacer()
                    }
                   
                    
                   
                        
                }
                .frame(width: width, height: 80, alignment: .center)
                .padding(.horizontal)
                
                .frame(height: 80)
                
                Spacer()
            }
            .padding()
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingView()
}
