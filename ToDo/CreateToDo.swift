//
//  CreateToDo.swift
//  ToDo
//
//  Created by Yew Wai Hon on 23/04/2021.
//

import SwiftUI

struct CreateToDo: View {
  @State var toDoTitle = ""
  @State var important = false
  @Environment(\.presentationMode) var presentationMode
  @EnvironmentObject var toDoStorage: ToDoStorage
  
  var body: some View {
    List {
      Section {
        TextField("Ex. Walk the Dog", text: $toDoTitle)
      }
      Section {
        Toggle(isOn: $important) {
          Text("Important")
        }
      }
      Section {
        HStack {
          Spacer()
          Button("Save") {
            self.toDoStorage.toDos.append(ToDoItem(title: self.toDoTitle, important: self.important))
            self.presentationMode.wrappedValue.dismiss()
          } // Button
          .disabled(toDoTitle.isEmpty)
          Spacer()
        }
      }
    } // List
    .listStyle(GroupedListStyle())
  }
}

struct CreateToDo_Previews: PreviewProvider {
  static var previews: some View {
    CreateToDo()
  }
}
