//
//  QuestionDataModel.swift
//  StoreJsonDataInCoreData
//
//  Created by Muhammad Alaraji on 23/08/2024.
//

import Foundation

struct QuestionData: Codable {
    let question: String?
    let choice1: String?
    let choice2: String?
    let choice3: String?
    let type: String?
    let ageGroup: String?

    enum CodingKeys: String, CodingKey {
        case question
        case choice1 = "choice_1"
        case choice2 = "choice_2"
        case choice3 = "choice_3"
        case type
        case ageGroup = "age_group"
    }
}
