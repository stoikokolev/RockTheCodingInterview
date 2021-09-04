//
//  LoginView.swift
//  RockTheCodingInterview
//
//  Created by Stoyko Kolev on 4.09.21.
//

import SwiftUI

struct LoginView: View {
    
    // MARK: - Body
    var body: some View {
        VStack {
            SplashImageView()
            RoundedButton("Login with Facebook")
                .frame(height: 100)
                .padding(.horizontal, 20)
        }
        .background(Color.black)
        .ignoresSafeArea()
    }
    
}

// MARK: - Previeww
struct LoginView_Previews: PreviewProvider {
    
    static var previews: some View {
        LoginView()
    }
    
}
