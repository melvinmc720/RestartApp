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
    @State private var isAnimating:Bool = false
    @State private var ImageOffset:CGFloat = 0
    @State private var TitleText:String = "Share."
    @State var haptic = UINotificationFeedbackGenerator()
    
    var body: some View {
        ZStack{
            Color("Colorblue")
            
            VStack(spacing:40) {
                Spacer()
                //header
                VStack{
                    Text(TitleText)
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .transition(.opacity)
                        .id(TitleText)
                    Text("""
                      It's not how much we give but
                     how much we put into giving it
                     """)
                }
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .offset(x:0 , y: isAnimating ? 0 : -40)
                .blur(radius: isAnimating ? 0 : 2)
                .animation(.easeOut(duration: 1.5), value: isAnimating)
                
                //center
                ZStack {
                    ZStack{
                        CircleBackgroundView(Shadeopacity: 0.2, Color: .white)
                        
                    }
                    .blur(radius: abs(ImageOffset / 20))
                    .offset(x: ImageOffset * -1, y: 0)
                    
                    Image("character-1")
                        .resizable()
                        .offset(x: ImageOffset * 1.2, y: 0)
                        .rotationEffect(.degrees(ImageOffset / 20))
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    let width = gesture.translation.width
                                    TitleText = "Give."
                                    if abs(width) <= 150 {
                                        self.ImageOffset = width
                                    }
                                    
                                })
                            
                                .onEnded({ gesture in
                                    
                                    withAnimation(.easeOut(duration: 0.75)) {
                                        self.ImageOffset = 0
                                        TitleText = "Share."
                                    }
                                    
                                })
                        )
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
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        let location = gesture.translation.width
                                        
                                        if location <= width / 2 {
                                            buttonOffset = 0
                                            haptic.notificationOccurred(.warning)
                                        }
                                        
                                        else{
                                            playSound(File: "chimeup", Extension: "mp3")
                                            buttonOffset = width - 80
                                            isOnboardingEnabled = false
                                            haptic.notificationOccurred(.success)
                                        }

                                    }

                                })
                        )
                        Spacer()
                    }
                   
                    
                   
                        
                }
                .frame(width: width, height: 80, alignment: .center)
                .padding(.horizontal)
                .offset(x:0 , y: isAnimating ? 0 : 40)
                .animation(.easeOut(duration: 1.5), value: isAnimating)
                .frame(height: 80)
                
                Spacer()
            }
            .padding()
            
        }
        .onAppear(perform: {
            isAnimating = true
        })
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingView()
}
