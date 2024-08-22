//
//  StoreJsonDataInCoreDataApp.swift
//  StoreJsonDataInCoreData
//
//  Created by Muhammad Alaraji on 23/08/2024.
//

//import SwiftUI
//
//@main
//struct StoreJsonDataInCoreDataApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}



import SwiftUI
import CoreData

@main
struct StoreJsonDataInCoreDataApp: App {

    let persistentContainer = NSPersistentContainer(name: "JsonToCoreData-Entity") // Replace with the exact name of your .xcdatamodeld file

    init() {
        persistentContainer.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
