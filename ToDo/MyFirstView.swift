//
//  ContentView.swift
//  ToDo
//
//  Created by Yew Wai Hon on 16/04/2021.
//

import SwiftUI

struct MyFirstView: View {
  var body: some View {
    VStack {
      HStack {
        Text("Hello, world!")
        Text("Hello, code!")
      }
      HStack {
        Text("Hello, world!")
        Text("Hello, code!")
      }
      HStack {
        Text("Hello, world!")
        Text("Hello, code!")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    MyFirstView()
  }
}
