//
//  QuiestionContainer.swift
//  RockTheCodingInterview
//
//  Created by Stoyko Kolev on 5.09.21.
//

import SwiftUI

struct QuiestionContainer: View {
    
    // MARK: - Properties
    let quiestion: Quiestion
    
    // MARK: - Body
    var body: some View {
        VStack{
            Text("Quiestion \(quiestion.id):")
                .font(.system(size: 20))
                .frame(maxHeight: 30)
                .padding(.bottom, 10)
            Text(quiestion.text)
                .multilineTextAlignment(.center)
                .font(.system(size: 24, weight: .bold))
            Divider()
                .frame(height: 2)
                .background(Color.white)
        }
        .foregroundColor(.white)
        .background(Color.black)
    }
    
}

// MARK: - Preview
struct QuiestionContainer_Previews: PreviewProvider {
    
    static var previews: some View {
        QuiestionContainer(quiestion: Quiestion(text: "test",
                                                id: 1,
                                                answer: "test"))
    }
    
}
