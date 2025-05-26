//
//  ContentView.swift
//  GitLearning
//
//  Created by Club Smith on 5/26/25.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
      NavigationStack {
        VStack {
          NavigationLink(destination: {
            DetailView()
          }, label: {
            Text("Git Learning App")
            })

          }
        .padding()
      }
    }
}

#Preview {
    ContentView()
}
