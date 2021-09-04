//
//  SplashImageView.swift
//  RockTheCodingInterview
//
//  Created by Stoyko Kolev on 4.09.21.
//

import SwiftUI

struct SplashImageView: View {
    
    // MARK: - Body
    var body: some View {
        Image("splash")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
}

// MARK: - Previeww
struct SplashImageView_Previews: PreviewProvider {
    
    static var previews: some View {
        SplashImageView()
    }
    
}
