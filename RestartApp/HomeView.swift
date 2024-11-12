//
//  HomeView.swift
//  RestartApp
//
//  Created by milad marandi on 11/9/24.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingEnabled = true
    var body: some View {
        VStack(spacing:20) {
            Spacer()
            
            ZStack{
                
                CircleBackgroundView(Shadeopacity: 0.1, Color: .gray)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            
            
            
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
            .multilineTextAlignment(.center)
            
            Spacer()
            
            Button {
                self.isOnboardingEnabled = true
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
        .padding()
    }
}

#Preview {
    HomeView()
}
