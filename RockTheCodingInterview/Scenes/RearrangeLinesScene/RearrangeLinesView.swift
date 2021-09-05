//
//  RearrangeLinesView.swift
//  RockTheCodingInterview
//
//  Created by Stoyko Kolev on 5.09.21.
//

import SwiftUI

struct RearrangeLinesView: View {
    
    // MARK: - Properties
    @State private var codeBlock = DataProvider.testCodeBlock
    @State private var editMode = EditMode.active
    let quiestion: Quiestion
    
    // MARK: - Initializer
    init(quiestion: Quiestion){
        self.quiestion = quiestion
        UITableView.appearance().backgroundColor = .clear
    }
    
    // MARK: - Body
    var body: some View {
        VStack {
            QuiestionContainer(quiestion: quiestion)
            answerContainer
            RoundedButton("Check answer") { editMode = .inactive }
            .frame(width: 200, height: 100, alignment: .center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
    
    // MARK: - Helpers
    private func onMove(source: IndexSet, destination: Int) {
        codeBlock.lines.move(fromOffsets: source, toOffset: destination)
    }
    
    private var answerContainer: some View {
        List {
            ForEach(codeBlock.lines) { Text($0.text)
                    .foregroundColor(.white)
                    .listRowSeparatorTint(.white)
            }
            .onMove(perform: onMove)
            .listRowBackground(Color.black)
        }
        .environment(\.editMode, $editMode)
        .frame(maxWidth: .infinity, maxHeight: 500)
    }
    
}

// MARK: - Preview
struct RearrangeLinesView_Previews: PreviewProvider {
    
    static var previews: some View {
        RearrangeLinesView(quiestion: Quiestion(text: "Rearrange the code to print even numbers only",
                                                id: 1,
                                                answer: "test"))
    }
    
}
