//
//  JsonToCoreData-Logic.swift
//  StoreJsonDataInCoreData
//
//  Created by Muhammad Alaraji on 23/08/2024.
//

import Foundation
import CoreData


func loadQuestions() -> [QuestionData] {
    guard let url = Bundle.main.url(forResource: "qvisitor_db.questions", withExtension: "json") else {
        print("JSON file not found")
        return []
    }

    do {
        let data = try Data(contentsOf: url)
        let decodedData = try JSONDecoder().decode([QuestionData].self, from: data)
        return decodedData
    } catch {
        print("Error decoding JSON: \(error)")
        return []
    }
}



func saveToCoreData(context: NSManagedObjectContext) {
    let questions = loadQuestions()

    for question in questions {
        let newQuestion = Question(context: context)

        newQuestion.question = question.question ?? "Unknown Question"
        newQuestion.choice_1 = question.choice1 ?? "Unknown Choice"
        newQuestion.choice_2 = question.choice2 ?? "Unknown Choice"
        newQuestion.choice_3 = question.choice3 ?? "Unknown Choice"
        newQuestion.type = question.type ?? "Unknown Type"
        newQuestion.age_group = question.ageGroup ?? "Unknown Age Group"
    }

    do {
        try context.save()
        print("Data saved successfully")
    } catch {
        print("Failed to save data: \(error)")
    }
}

