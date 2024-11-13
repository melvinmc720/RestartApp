//
//  ContentView.swift
//  RestartApp
//
//  Created by milad marandi on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingEnabled = true
    var body: some View {
        VStack{
            if isOnboardingEnabled {
                
                OnboardingView()
            }
            else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
