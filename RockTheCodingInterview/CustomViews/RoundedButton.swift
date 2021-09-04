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
    
    // MARK: - Initializer
    init(_ text: String, action: @escaping () -> Void = {}) {
        self.text = text
        self.action = action
    }
    
    // MARK: - Body
    var body: some View {
        Button(action: action) {
            Text(text)
                .frame(maxWidth: .infinity, maxHeight: 60)
                .foregroundColor(.white)
                .background(Color.blue)
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
