//
//  QuestionView.swift
//  StoreJsonDataInCoreData
//
//  Created by Muhammad Alaraji on 23/08/2024.
//


import SwiftUI
import CoreData

struct QuestionView: View {
    @FetchRequest(
        entity: Question.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Question.question, ascending: true)],
        predicate: NSCompoundPredicate(andPredicateWithSubpredicates: [
            NSPredicate(format: "age_group == %@", "1"),
            NSPredicate(format: "type == %@", "الفقه")
        ])
    ) private var questions: FetchedResults<Question>

    var body: some View {
        VStack {
            if let firstQuestion = questions.first {
                Text(firstQuestion.question ?? "No question available")
                    .font(.headline)
                    .padding()

                VStack(alignment: .leading) {
                    Text("1. \(firstQuestion.choice_1 ?? "No choice available")")
                    Text("2. \(firstQuestion.choice_2 ?? "No choice available")")
                    Text("3. \(firstQuestion.choice_3 ?? "No choice available")")
                }
                .padding()
            } else {
                Text("No questions available")
            }
        }
        .padding()
        .navigationTitle("First Question")
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        // Provide a mock Core Data context here if necessary
        QuestionView()
    }
}

