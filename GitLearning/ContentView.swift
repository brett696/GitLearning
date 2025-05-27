//
//  ContentView.swift
//  GitLearning
//
//  Created by Club Smith on 5/26/25.
//

import SwiftUI

struct ContentView: View {
  
  @State var showSheet = false
  
    var body: some View {
      NavigationStack {
        VStack {
          NavigationLink(destination: {
            DetailView()
          }, label: {
            Text("Git Learning App")
            })
          Button(action: {
            showSheet = true
          }, label: {
            Text("Show More")
          })
          }
        .padding()
        .sheet(isPresented: $showSheet, content: {
          DetailView()
        })
      }
    }
}

#Preview {
    ContentView()
}
