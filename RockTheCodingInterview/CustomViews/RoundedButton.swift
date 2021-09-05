//
//  RoundedButton.swift
//  RockTheCodingInterview
//
//  Created by Stoyko Kolev on 4.09.21.
//

import SwiftUI

struct RoundedButton: View {
    
    // MARK: - Properties
    let text: String
    let action: () -> Void
    let color: Color
    
    // MARK: - Initializer
    init(_ text: String,
         color: Color = .blue,
         action: @escaping () -> Void = {}) {
        self.text = text
        self.color = color
        self.action = action
    }
    
    // MARK: - Body
    var body: some View {
        Button(action: action) {
            Text(text)
                .frame(maxWidth: .infinity, maxHeight: 60)
                .foregroundColor(.white)
                .background(color)
                .clipShape(Capsule())
        }
    }
    
}

// MARK: - Previeww
struct RoundedButton_Previews: PreviewProvider {
    
    static var previews: some View {
        RoundedButton("Login with Facebook")
    }
    
}
