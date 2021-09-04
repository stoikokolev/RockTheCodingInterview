//
//  SplashView.swift
//  RockTheCodingInterview
//
//  Created by Stoyko Kolev on 4.09.21.
//

import SwiftUI

struct SplashView: View {
    
    // MARK: - Body
    var body: some View {
        VStack{
            SplashImageView()
            Spacer(minLength: 100)
        }
        .background(Color.black)
        .ignoresSafeArea()
    }
    
}

// MARK: - Previeww
struct SplashView_Previews: PreviewProvider {
    
    static var previews: some View {
        SplashView()
    }
    
}
