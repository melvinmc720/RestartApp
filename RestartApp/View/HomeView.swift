//
//  HomeView.swift
//  RestartApp
//
//  Created by milad marandi on 11/9/24.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingEnabled = true
    @State private var IsAnimating:Bool = false
    @State var haptic = UINotificationFeedbackGenerator()
    
    var body: some View {
        VStack(spacing:20) {
            Spacer()
            
            ZStack{
                
                CircleBackgroundView(Shadeopacity: 0.1, Color: .gray)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .animation(.easeOut(duration: 4).repeatForever(), value: IsAnimating)
                    .offset(x:0 , y: IsAnimating ? 35 : -35)
                    .padding()
                
            }
            
            
            
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
            .multilineTextAlignment(.center)
            
            Spacer()
            
            Button {
                withAnimation(.easeOut(duration: 0.5)) {
                    self.isOnboardingEnabled = true
                    playSound(File: "success", Extension: "m4a")
                    haptic.notificationOccurred(.success)
                }
                
            } label: {
                Label("Restart", systemImage: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                    .padding(.horizontal , 10)
            }
            .fontWeight(.bold)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
            Spacer()

        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute:{
                self.IsAnimating = true
            })
        })
        .padding()
    }
}

#Preview {
    HomeView()
}
