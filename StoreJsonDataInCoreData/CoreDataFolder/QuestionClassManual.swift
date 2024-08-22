//
//  QuestionClassManual.swift
//  StoreJsonDataInCoreData
//
//  Created by Muhammad Alaraji on 23/08/2024.
//

import Foundation

import CoreData



@objc(Question)
public class Question: NSManagedObject {
    @NSManaged public var question: String?
    @NSManaged public var choice_1: String?
    @NSManaged public var choice_2: String?
    @NSManaged public var choice_3: String?
    @NSManaged public var type: String?
    @NSManaged public var age_group: String?
}
