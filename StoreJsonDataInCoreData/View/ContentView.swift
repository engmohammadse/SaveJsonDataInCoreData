//
//  ContentView.swift
//  StoreJsonDataInCoreData
//
//  Created by Muhammad Alaraji on 23/08/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var context

    var body: some View {
        NavigationView {
            VStack {
                Text("Load and Save Questions")
                    .padding()
                
                NavigationLink(destination: QuestionView()) {
                    Text("Go")
                        .foregroundColor(.blue) // Use foregroundColor for text color
                        .padding()
                }
                .onAppear {
                    saveToCoreData(context: context)
                }
            }
            .navigationTitle("Go to First Question")
        }
    }
}



#Preview {
    ContentView()
}
