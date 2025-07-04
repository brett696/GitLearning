//
//  ContentView.swift
//  GitLearning
//
//  Created by Club Smith on 5/26/25.
//

import SwiftUI

struct ContentView: View {
  
  @State var showSheet = false
  @State var showNavigation = false
  
    var body: some View {
      NavigationStack {
        VStack {
          Button(action: {
            showNavigation = true
          }, label: {
            Text("Git Learning App")
          })
          Button(action: {
            showSheet = true
          }, label: {
            Text("Show Details")
          })
          }
        .padding()
        .sheet(isPresented: $showSheet, content: {
          DetailView()
        })
        .navigationDestination(isPresented: $showNavigation) {
          DetailView()
        }
      }
    }
}

#Preview {
    ContentView()
}
