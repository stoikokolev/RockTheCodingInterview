//
//  QuiestionView.swift
//  RockTheCodingInterview
//
//  Created by Stoyko Kolev on 5.09.21.
//

import SwiftUI

struct QuiestionView: View {
    
    // MARK: - Properties
    @State private var isRevealed: Bool = false
    let quiestion: Quiestion
    
    // MARK: - Body
    var body: some View {
        VStack {
            quiestionContainer
            Divider()
                .frame(height: 2)
                .background(Color.white)
            answerContainer
            RoundedButton("Show answer") { isRevealed.toggle() }
            .frame(width: 200, height: 100, alignment: .center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
    
    // MARK: - Helpers
    private var quiestionContainer: some View {
            VStack{
                Text("Quiestion \(quiestion.id):")
                    .font(.system(size: 20))
                    .frame(maxHeight: 30)
                    .padding(.bottom, 10)
                Text(quiestion.text)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 24, weight: .bold))
            }
            .foregroundColor(.white)
    }
    
    private var answerContainer: some View {
        ZStack {
            Text(quiestion.answer)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(maxHeight: .infinity)
                .blur(radius: isRevealed ? 0 : 10)
        }
    }
    
}

// MARK: - Preview
struct QuiestionView_Previews: PreviewProvider {
    
    static var previews: some View {
        QuiestionView(quiestion: Quiestion(text: "test",
                                           id: 1,
                                           answer: "test"))
    }
    
}
